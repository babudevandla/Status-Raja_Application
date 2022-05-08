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
<div class="page-header header-small header-filter mwallpaper-header">
			<div class="container text-center">
				<div class=row>
					<div class="col-md-8 ml-auto mr-auto text-center">
						<h1 class="title imwtitle"><span>${ringtone.fileshortname} </span> </h1>
					</div>
				</div>
			</div>
		</div>
		<div class="main main-raised section-light-gray">
			<div class=container-fluid>
				<div class="row pt-2" style="height: 362px;">
				<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3">
					<!-- AD's space -->
				</div>
				<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-6">
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
								<div class="audio-link" style="margin-top: 17%;" id="audio-linkId">
									<a href="${ringtone.file_url}" title=Play class="inline-playable sm2_link" rel=nofollow></a>
								</div>
							</div>
							<hr class=m-0>
							<div class="card-footer pt-1 pb-1 px-3">
								<a href="${contextPath}/downloadringtone/${ringtone.srid}?filePath=${ringtone.filePath}" class="text-oo" download>
									<i class="material-icons download" ></i>
								</a>
								<div class="stats ml-auto">
									<span style="color: blue;" >${ringtone.file_duration}</span>
								</div>
								<div class="stats ml-auto">
									<div class="like" id="${ringtone.srid}" data-key="ring" data-lkey="0" data-href="${contextPath}/like">
										<i class="material-icons like-color favorite_border"></i><span
											class=likin>${ringtone.likes}<span>
									</div>
								</div>
							</div>
						</div>
					</div>
						<!-- <div class="card downcard">
							<div class="card-body p-0">
								<div class=p-0>
									<img class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////r6+v///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/alone girl sitting-39.jpg">
								</div>
								<div class="card-footer pt-1 pb-1 bg-white">
									<a
										href=../downloaddpimage/alone%20girl%20sitting-39.jpg_%3b%20filename_%3dutf-8%27%27alone%2520girl%2520sitting-39.jpg
										class="btn btn-rose btn-round w-100 downlink px-0" download>DOWNLOAD<div
											class=ripple-container></div></a>
								</div>
							</div>
						</div> -->
					</div>
				<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3">
					<!-- AD's space -->
				</div>	
			</div>
		</div>
	</div>
			
<style type="text/css">
.imageCls{
	background-size: cover;
    height: 285px;
    background-repeat: no-repeat;
    text-align: center;
    margin: auto;
}

</style>
	</jsp:body>
</defaultTemplate:defaultDecorator>