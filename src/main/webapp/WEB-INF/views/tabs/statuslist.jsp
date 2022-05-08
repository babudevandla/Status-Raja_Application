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
				<h1 class=title>Language Based Status</h1>
				<!-- <h4>Latest collection of awesome status to express your feelings and situation on Whatsapp.</h4> -->
				<!-- <div class="iceilinks eniceilinks">
					<a href=whatsapp-status.html
						class="btn btn-sm btn-ilink btn-round">LATEST STATUS</a><a
						href=english.html class="btn btn-sm btn-ilink btn-round">ENGLISH STATUS</a><a
						href=hindi.html class="btn btn-sm btn-ilink btn-round">HINDI STATUS</a><a
						href=punjabi.html class="btn btn-sm btn-ilink btn-round">PUNJABI STATUS</a>
				</div> -->
			</div> 
		</div>
		<div class="row dl-sec">
		<div class="col-lg-2 col-sm-6 mini" style="flex: 0 0 11.666667%;"></div>
			<c:forEach items="${languages}" var="language" varStatus="status">
				<div class="col-lg-2 col-sm-6 mini" style="flex: 0 0 11.666667%;">
				<c:set var="lang" value="${language.name}"/>  
					<a class="bina bin" href="${contextPath}/status/${fn:toLowerCase(lang)}" style="padding: 14px 0 14px;">
						<i class="material-icons pen" style="font-size: 40px;color: #7ff312;"></i><br>
						<p>${language.name}</p>
					</a>
				</div>
			</c:forEach>	
			<div class="col-lg-2 col-sm-6 mini" style="flex: 0 0 11.666667%;"></div>
		</div>
		<div class="search col-md-12 ml-auto mr-auto text-right" >
			<a  title="RECENT" href="${contextPath}/status/list?recent=top" >RECENT</a>
			<a  title="TOP RATED" href="${contextPath}/status/list?toprated=top" >TOP RATED</a>
		</div>
	</div>
</div>
<div class="main main-raised section-light-gray">
	<div class=container-fluid>
		<div class=row>
			<div class="card mt-0 rounded-top" align=center></div>
			<c:forEach items="${fileDetailsVos}" var="langStatus">
			<div class="col-sm-6 col-md-4 col-lg-4 col-xl-3 sbox line-content">
				<div class="card cruze">
					<div class="card-body d-flex flex-column pb-3">
						<p class=card-description>
							<span class=getx>${langStatus.statusContent}</span>
						</p>
						<div class="card-footer p-0 mt-auto">
							<button class="btn btn-sm btn-coral wi60 cbutton btn-round">
								<span class=texux>COPY</span>
							</button>
							<div class="stats ml-auto">
								<div class=like id="${langStatus.srid}" data-key="status" data-lkey="0" data-href="${contextPath}/like">
									<i class="material-icons like-color favorite_border"></i><span
										class=likin>${langStatus.likes}<span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			
			<!-- <div class="pagin exspagin">
				<ul class="pagination pagination-rosy">
					<li class="prev page-item"><span>PREV</span>
					<li class="page-item active"><a class=page-link
						href=whatsapp-status.html rel=nofollow data-page=0>1</a>
					<li class=page-item><a class=page-link
						href=whatsapp-status/2.html rel=nofollow data-page=1>2</a>
					<li class=page-item><a class=page-link
						href=whatsapp-status/3.html rel=nofollow data-page=2>3</a>
					<li class=page-item><a class=page-link
						href=whatsapp-status/4.html rel=nofollow data-page=3>4</a>
					<li class=page-item><a class=page-link
						href=whatsapp-status/5.html rel=nofollow data-page=4>5</a>
					<li class=next><a class=page-link
						href=whatsapp-status/2.html rel=nofollow data-page=1>NEXT</a>
				</ul>
			</div> -->
			<div class="pagin exspagin">
				<ul id="pagination" style="margin-top: 12px;">
				         
				</ul>
				
			</div>
		</div>
   </div>
</div> 

	</jsp:body>
</defaultTemplate:defaultDecorator>