package com.statusraja.mongo.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.function.Predicate;

import org.bson.Document;
import org.bson.conversions.Bson;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.statusraja.constants.CollectionsConstant;
import com.statusraja.constants.SRConstants;
import com.statusraja.constants.WebDavServerConstant;
import com.statusraja.enums.SRStatusEnum;
import com.statusraja.mongo.MongoDBUtil;
import com.statusraja.ringtone.FileDetailsVo;
import com.statusraja.utils.FilePathVariables;
import com.statusraja.vo.Categories;
import com.statusraja.vo.FilterSearchVo;
import com.statusraja.vo.Languages;
import com.statusraja.vo.RatingAndDownload;

@Repository
public class GenericMongoDaoImpl implements GenericMongoDao {

	private static final Logger logger = LoggerFactory.getLogger(GenericMongoDaoImpl.class);

	@Autowired
	MongoDBUtil mongoDBUtil;
	//private Gson 8 = new Gson();

	@Value("${WEBDAV_URL}")
	private String WEBDAV_URL;

	@SuppressWarnings({ "unchecked" })
	@Override
	public List<FileDetailsVo> getMasterDetailsList(String type, FilterSearchVo searchVo) {
		List<FileDetailsVo> filesList = new ArrayList<>();
		MongoCollection<Document> coll = null;
		coll = mongoDBUtil.getNestCollection(CollectionsConstant.MASTER_COLLECTION);
		
		List<Bson> aggregatepipeline =getAggregatepipeline(searchVo,type,null);
		
		MongoCursor<Document> cursor =coll.aggregate(aggregatepipeline).allowDiskUse(true).iterator();
		Document fileDoc = null;
		FileDetailsVo fileDetailsVo = null;
		while (cursor.hasNext()) {
			fileDoc = cursor.next();
			fileDetailsVo = new FileDetailsVo();
			fileDetailsVo.setSrid(fileDoc.getInteger("srid"));
			fileDetailsVo.setFileshortname(fileDoc.getString("shortname"));
			fileDetailsVo.setFilefullname(fileDoc.getString("fullname"));
			fileDetailsVo.setFileStatus(fileDoc.getString("status"));
			fileDetailsVo.setType(fileDoc.getString("type"));
			fileDetailsVo.setCreateddate(fileDoc.getDate("createddate"));
			
			List<Document> formatList=(List<Document>) fileDoc.get("formatsDoc");
			Document formatDoc=formatList.get(0);
			fileDetailsVo.setFilename(formatDoc.getString("filename"));
			fileDetailsVo.setExtension(formatDoc.getString("extension"));
			fileDetailsVo.setFilename(formatDoc.getString("filename"));
			
			StringBuilder filePath=new StringBuilder(WEBDAV_URL);
			filePath.append(FilePathVariables.FLASH).append(formatDoc.getString("url"));
			fileDetailsVo.setFile_url(filePath.toString());
			fileDetailsVo.setFilePath(formatDoc.getString("url"));
			if(SRConstants.strNotNull.test(formatDoc.getString("banner_img"))) {
				StringBuilder imgfilePath=new StringBuilder(WebDavServerConstant.WEBDAV_SERVER_URL);
				imgfilePath.append(FilePathVariables.FLASH).append(formatDoc.getString("banner_img"));
				fileDetailsVo.setBanner_img(imgfilePath.toString());
			}
			
			fileDetailsVo.setStatusContent(formatDoc.getString("status_content"));
			fileDetailsVo.setFile_duration(formatDoc.getString("file_duration"));
			
			List<Document> descList=(List<Document>) fileDoc.get("descriptionDoc");
			Document descDoc=descList.get(0);
			fileDetailsVo.setLangid(descDoc.getInteger("language"));
			fileDetailsVo.setCategoryid(descDoc.getInteger("category"));
			
			List<Document> ratingDocList=(List<Document>) fileDoc.get("ratingDoc");
			Document ratingDoc=ratingDocList.get(0);
			fileDetailsVo.setLikes(ratingDoc.getInteger("likes"));
			fileDetailsVo.setDownloadcount(ratingDoc.getInteger("downloadcount"));
			
			filesList.add(fileDetailsVo);
		}
		return filesList;
	}


	private List<Bson> getAggregatepipeline(FilterSearchVo searchVo, String type, Integer srid) {
		
		Document match=new Document();
		if(srid!=null) {
			match.put("srid", srid);
		}
		if(SRConstants.strNotNull.test(type))
			match.put("type", type);
		
		match.put("status", SRStatusEnum.ACTIVE.getName());
		
		
		Document lookupObject = new Document();
		lookupObject.append("from", CollectionsConstant.FORMATS_COLLECTION);
		lookupObject.append("localField", "srid");
		lookupObject.append("foreignField", "srid");
		lookupObject.append("as", "formatsDoc");
		
		Document lookupDesc = new Document();
		lookupDesc.append("from", CollectionsConstant.DESCRIPTION_COLLECTION);
		lookupDesc.append("localField", "srid");
		lookupDesc.append("foreignField", "srid");
		lookupDesc.append("as", "descriptionDoc");
		
		Document lookupRating = new Document();
		lookupRating.append("from", CollectionsConstant.RATINGSANDDOWNLOADS_COLLECTION);
		lookupRating.append("localField", "srid");
		lookupRating.append("foreignField", "srid");
		lookupRating.append("as", "ratingDoc");
		
		
		
		List<Bson> aggregatepipeline =new ArrayList<Bson>();
		aggregatepipeline.add(new Document("$match", match));
		aggregatepipeline.add(new Document("$lookup", lookupObject));
		aggregatepipeline.add(new Document("$lookup", lookupDesc));
		aggregatepipeline.add(new Document("$lookup", lookupRating));
		
		//Language filter
		if(SRConstants.objNotNull.test(searchVo)) {
			if(searchVo.getLangid()!=null) {
				Document langMatch=new Document();
				langMatch.put("descriptionDoc.language", searchVo.getLangid());
				aggregatepipeline.add(new Document("$match", langMatch));
			}
			if(searchVo.getCategoryid()!=null) {
				Document langMatch=new Document();
				langMatch.put("descriptionDoc.category", searchVo.getCategoryid());
				aggregatepipeline.add(new Document("$match", langMatch));
			}
		}
		
		//Actor filter
		if(SRConstants.objNotNull.test(searchVo)) {
			if(SRConstants.strNotNull.test(searchVo.getActor())) {
				Document actorMatch=new Document();
				actorMatch.put("formatsDoc.actor", searchVo.getActor());
				aggregatepipeline.add(new Document("$match", actorMatch));
			}
		}
		
		////Top Rated & Recent filter
		Document sort=new Document();
		if(SRConstants.objNotNull.test(searchVo)) {
			if(SRConstants.strNotNull.test(searchVo.getRecent())) {
				sort.put("ratingDoc.createddate", -1);
			}else if(SRConstants.strNotNull.test(searchVo.getToprated())) {
				sort.put("ratingDoc.likes", -1);
			}else {
				sort.put("ratingDoc.createddate", 1);
			}
		}else {
			sort.put("ratingDoc.createddate", 1);
		}
		aggregatepipeline.add(new Document("$sort", sort));
		logger.info("aggregatepipeline ==> "+aggregatepipeline);
		
		return aggregatepipeline;
	}


	@Override
	public void updateLikes(RatingAndDownload ratingAndDownload,String type) {
		MongoCollection<Document> coll = null;
		coll = mongoDBUtil.getNestCollection(CollectionsConstant.RATINGSANDDOWNLOADS_COLLECTION);
		Document match = new Document();
		match.put("srid", ratingAndDownload.getSrid());
		
		Document updateRating = new Document();
		if(checkType.test(type)) {
			updateRating.put("likes", ratingAndDownload.getLikes());
		}else {
			updateRating.put("downloadcount", ratingAndDownload.getDownloadcount());
		}
		updateRating.put("updateddate", new Date());
		
		Document update = new Document();
		update.put( "$set", updateRating);
		
		coll.updateOne( match, update );
	}

	Predicate<String> checkType=(type) -> type.equals("like")?true:false ;

	@Override
	public RatingAndDownload getFileDetaillsById(Integer id) {
		MongoCursor<Document> cursor = null;
		MongoCollection<Document> coll=null;
		coll = mongoDBUtil.getMongoCollection(CollectionsConstant.RATINGSANDDOWNLOADS_COLLECTION);
		Document match = new Document();
		match.put("srid", id);
		cursor =coll.find(match).iterator();
		RatingAndDownload ratingAndDownload = null;
		while(cursor.hasNext()){
			Document fileDoc = cursor.next();
			ratingAndDownload = new RatingAndDownload();
			ratingAndDownload.setSrid(fileDoc.getInteger("srid"));
			ratingAndDownload.setRating(fileDoc.getInteger("rating"));
			ratingAndDownload.setLikes(fileDoc.getInteger("likes"));
			ratingAndDownload.setDislike(fileDoc.getInteger("dislike"));
			ratingAndDownload.setDownloadcount(fileDoc.getInteger("downloadcount"));
			ratingAndDownload.setCreateddate(fileDoc.getDate("createddate"));
			ratingAndDownload.setUpdateddate(fileDoc.getDate("updateddate"));
		}
		return ratingAndDownload;
	}


	@Override
	public List<Languages> getLanguageList() {
		List<Languages> languages = new ArrayList<>();
		MongoCursor<Document> cursor = null;
		MongoCollection<Document> coll=null;
		coll = mongoDBUtil.getMongoCollection(CollectionsConstant.LANGUAGES);
		cursor =coll.find().iterator();
		Languages language = null;
		while(cursor.hasNext()){
			Document fileDoc = cursor.next();
			language = new Languages();
			language.setLangid(fileDoc.getInteger("langid"));
			language.setName(fileDoc.getString("name").trim());
			languages.add(language);
		}
		return languages;
	}


	@Override
	public List<Categories> getCategories(String type) {
		List<Categories> categories = new ArrayList<>();
		MongoCursor<Document> cursor = null;
		MongoCollection<Document> coll = null;
		Document match = new Document();
		match.put("type", type);
		coll = mongoDBUtil.getMongoCollection(CollectionsConstant.CATEGORIES);
		cursor = coll.find(match).iterator();
		Categories category = null;
		while (cursor.hasNext()) {
			Document fileDoc = cursor.next();
			category = new Categories();
			category.setCategoryid(fileDoc.getInteger("categoryid"));
			category.setName(fileDoc.getString("name"));
			category.setType(fileDoc.getString("type"));
			categories.add(category);
		}
		return categories;
	}


	@SuppressWarnings("unchecked")
	@Override
	public FileDetailsVo getFileDetailsById(String type, Integer srid) {
		MongoCollection<Document> coll = null;
		coll = mongoDBUtil.getNestCollection(CollectionsConstant.MASTER_COLLECTION);
		
		List<Bson> aggregatepipeline =getAggregatepipeline(null,type,srid);
		
		MongoCursor<Document> cursor =coll.aggregate(aggregatepipeline).allowDiskUse(true).iterator();
		Document fileDoc = null;
		FileDetailsVo fileDetailsVo = null;
		while (cursor.hasNext()) {
			fileDoc = cursor.next();
			fileDetailsVo = new FileDetailsVo();
			fileDetailsVo.setSrid(fileDoc.getInteger("srid"));
			fileDetailsVo.setFileshortname(fileDoc.getString("shortname"));
			fileDetailsVo.setFilefullname(fileDoc.getString("fullname"));
			fileDetailsVo.setFileStatus(fileDoc.getString("status"));
			fileDetailsVo.setType(fileDoc.getString("type"));
			fileDetailsVo.setCreateddate(fileDoc.getDate("createddate"));
			
			List<Document> formatList=(List<Document>) fileDoc.get("formatsDoc");
			Document formatDoc=formatList.get(0);
			fileDetailsVo.setFilename(formatDoc.getString("filename"));
			fileDetailsVo.setExtension(formatDoc.getString("extension"));
			fileDetailsVo.setFilename(formatDoc.getString("filename"));
			
			StringBuilder filePath=new StringBuilder(WebDavServerConstant.WEBDAV_SERVER_URL);
			filePath.append(FilePathVariables.FLASH).append(formatDoc.getString("url"));
			fileDetailsVo.setFile_url(filePath.toString());
			fileDetailsVo.setFilePath(formatDoc.getString("url"));
			fileDetailsVo.setStatusContent(formatDoc.getString("status_content"));
			fileDetailsVo.setFile_duration(formatDoc.getString("file_duration"));
			
			if(SRConstants.strNotNull.test(formatDoc.getString("banner_img"))) {
				StringBuilder imgfilePath=new StringBuilder(WebDavServerConstant.WEBDAV_SERVER_URL);
				imgfilePath.append(FilePathVariables.FLASH).append(formatDoc.getString("banner_img"));
				fileDetailsVo.setBanner_img(imgfilePath.toString());
			}
			List<Document> descList=(List<Document>) fileDoc.get("descriptionDoc");
			Document descDoc=descList.get(0);
			fileDetailsVo.setLangid(descDoc.getInteger("language"));
			fileDetailsVo.setCategoryid(descDoc.getInteger("category"));
			
			List<Document> ratingDocList=(List<Document>) fileDoc.get("ratingDoc");
			Document ratingDoc=ratingDocList.get(0);
			fileDetailsVo.setLikes(ratingDoc.getInteger("likes"));
			fileDetailsVo.setDownloadcount(ratingDoc.getInteger("downloadcount"));
			
		}
		return fileDetailsVo;
	}

}
