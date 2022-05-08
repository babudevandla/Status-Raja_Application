<%@ page pageEncoding="ISO-8859-1"  contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@taglib prefix="defaultTemplate" tagdir="/WEB-INF/tags"%>

<defaultTemplate:defaultDecorator>
<jsp:attribute name="title">SR</jsp:attribute>
<jsp:body>

<div class="page-header header-small header-filter ringtone-header">
	<div class="container text-center">
		<div class=row>
			<div class="col-md-8 ml-auto mr-auto text-center banner-header">
				<h1 class=title>Ringtones</h1> 
				 <h4>Free download latest and best Mp3 ringtones.</h4>
				<%-- <img alt="" src="${contextPath}/image/default-ringtone11.jpg"> --%>
			</div>
			
		</div>
		<div class="search col-md-12 ml-auto mr-auto text-right" >
			<form action="${contextPath}/ringtones" method="get" id="myForm">
				<input type="submit" name="recent" value="RECENT">
				<input type="submit" name="toprated" value="TOPRATED">
				<%-- <a  title="RECENT" href="${contextPath}/ringtones?" >RECENT</a>
				<a  title="TOP RATED" href="${contextPath}/" >TOP RATED</a> --%>
				<select name="actor" id="actorId">
					<option value="">ACTOR</option>
					<option value="mahesh">Mahesh</option>
					<option value="ntr">N.T.R</option>
				</select>
				<select name="language" id="languageId" >
					<option value="">LANGUAGE</option>
					<c:forEach items="${languages}" var="language" varStatus="status">
					    <c:set var="lang" value="${language.name}"/>  
						<option value="${fn:toLowerCase(lang)}" style="color: black;">${lang}</option>
					</c:forEach>
				</select>
			</form>	
		</div>
	</div>
</div>

<div class="main main-raised section-light-gray">
	<div class=container-fluid>
		<div class="row pt-2">
		  <c:forEach items="${fileDetailsVos}" var="ringtone" varStatus="status">
			<div class="col-sm-6 col-md-4 col-lg-3 col-xl-2">
				<div class=card>
					<div class="card-body p-0">
							<c:choose>
								<c:when test="${not empty ringtone.banner_img}">
									<div class="p-3 audio-card imageCls" style="background-image: url(${ringtone.banner_img});">
								</c:when>
								<c:otherwise>
									<div class="p-3 audio-card imageCls" style="background-image: url(${contextPath}/image/default-ringtone9.jpg);">
								</c:otherwise>
							</c:choose>
							<div class=audio-link>
								<a href="${ringtone.file_url}" title=Play class="inline-playable sm2_link" id="audio-linkId" rel=nofollow onclick="myFunction()"></a>
							</div>
							<p class=audio-title><a href="${contextPath}/ringtone/${ringtone.srid}" style="color: white;">${ringtone.fileshortname} </a></p>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a href="${contextPath}/downloadringtone/${ringtone.srid}?filePath=${ringtone.filePath}" class="text-oo" download>
								<i class="material-icons download" rel=nofollow></i>
							</a>
							<span style="color: blue;">${ringtone.file_duration}</span>
							<div class="stats ml-auto">
								<div class="like" id="${ringtone.srid}" data-key="ring" data-lkey="0" data-href="${contextPath}/like">
									<i class="material-icons like-color favorite_border"></i><span
										class=likin>${ringtone.likes}<span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			<div class=pagin>
				<ul class="pagination pagination-rosy">
					<li class="prev page-item"><span>PREV</span>
					<li class="page-item active"><a class=page-link
						href=ringtones.html rel=nofollow data-page=0>1</a>
					<li class=page-item><a class=page-link href=ringtones/2.html
						rel=nofollow data-page=1>2</a>
					<li class=page-item><a class=page-link href=ringtones/3.html
						rel=nofollow data-page=2>3</a>
					<li class=page-item><a class=page-link href=ringtones/4.html
						rel=nofollow data-page=3>4</a>
					<li class=page-item><a class=page-link href=ringtones/5.html
						rel=nofollow data-page=4>5</a>
					<li class=next><a class=page-link href=ringtones/2.html
						rel=nofollow data-page=1>NEXT</a>
				</ul>
			</div>
		</div>
	</div>
</div>

<style type="text/css">
.imageCls{
	background-size: cover;
    /* width: 174px; */
    background-repeat: no-repeat;
    text-align: center;
    margin: auto;
}

</style>


</jsp:body>
</defaultTemplate:defaultDecorator>