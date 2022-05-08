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

<div class="page-header header-small header-filter english-header">
	<div class="container text-center">
		<div class=row>
			<div class="col-md-8 ml-auto mr-auto text-center pb-2">
				<h1 class=title>Latest Image Status</h1>
				<h4>Free download the Latest Best Image status and Quotes pictures in HD Quality.</h4>
			</div>
		</div>
		<div class="imiceilinks pb-2">
			<a href="#" class="btn btn-sm btn-ilink btn-round">LATEST IMAGE STATUS</a>
			<a href="#" class="btn btn-sm btn-ilink btn-round">ENGLISH IMAGE STATUS</a>
			<a href="#" class="btn btn-sm btn-ilink btn-round">HINDI IMAGE STATUS</a>
			<a href="#" class="btn btn-sm btn-ilink btn-round">TELUGU IMAGE STATUS</a>
		</div>
	</div>
</div>
<div class="main main-raised section-light-gray">
	<div class=container-fluid>
		<div class="row pt-2">
		<c:forEach items="${fileDetailsVos}" var="langStatus">
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href="#">
								<img alt="love whatsapp image status" class="lazyload card-img-top" src="${langStatus.file_url}" data-src="${langStatus.file_url}">
							</a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a href="${contextPath}/downloadfile/${langStatus.srid}?filePath=${langStatus.filePath}" class=text-oo
								download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class="like" id="${langStatus.srid}" data-key="ring" data-lkey="0" data-href="${contextPath}/like">
									<i class="material-icons like-color favorite_border"></i><span
										class=likin>${langStatus.likes}<span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>	
			
			<div class=pagin>
				<ul class="pagination pagination-rosy">
					<li class=prev><a class=page-link
						href=../whatsapp-image-status.html rel=nofollow data-page=0>PREV</a>
					<li class=page-item><a class=page-link
						href=../whatsapp-image-status.html rel=nofollow data-page=0>1</a>
					<li class="page-item active"><a class=page-link href=2.html
						rel=nofollow data-page=1>2</a>
					<li class=page-item><a class=page-link href=3.html
						rel=nofollow data-page=2>3</a>
					<li class=next><a class=page-link href=3.html rel=nofollow
						data-page=2>NEXT</a>
				</ul>
			</div>
			
	  </div>
   </div>
</div>

</jsp:body>
</defaultTemplate:defaultDecorator>