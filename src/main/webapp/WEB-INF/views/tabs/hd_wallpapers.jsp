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
					<h1 class=title>Wallpapers</h1>
					<!-- <h4>Latest collection of awesome status to express your feelings and situation on Whatsapp.</h4> -->
				</div>
			</div>
			<div class="row dl-sec">
			<div class="col-lg-2 col-sm-6 mini"></div>
			<div class="col-lg-2 col-sm-6 mini"></div>
				<div class="col-lg-2 col-sm-6 mini">
					<a class="bina bin" href="${contextPath}/wallpapers/hd"
							style="padding: 14px 0 14px;">
						<i class="material-icons pen"
							style="font-size: 40px; color: #7ff312;"></i><br>
						<p> HD Wallpapers</p>
					</a>
				</div>
				<div class="col-lg-2 col-sm-6 mini">
					<a class="bina bin" href="${contextPath}/wallpapers/mobile"
							style="padding: 14px 0 14px;">
						<i class="material-icons pen"
							style="font-size: 40px; color: #7ff312;"></i><br>
						<p> Mobile Wallpapers</p>
					</a>
				</div>
				<div class="col-lg-2 col-sm-6 mini"></div>
				<div class="col-lg-2 col-sm-6 mini"></div>
			</div>
		</div>
	</div>
		<div class="main main-raised section-light-gray">
			<div class=container-fluid>
				<div class="row pt-2">
					<c:forEach items="${fileDetailsVos}" var="fileDetails">
						<div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
							<div class="card img-card">
								<div class="card-body p-0">
									<div class=sm-space>
										<a href="${contextPath}/wallpaper/${fileDetails.srid}" rel=nofollow>
											<img alt="atlantis nebula"	class="lazyload card-img-top" src="${fileDetails.file_url}" data-src="${fileDetails.file_url}">
										</a>
									</div>
									<hr class=m-0>
									<div class="card-footer pt-1 pb-1 px-3">
										<a href="${contextPath}/downloadfile/${fileDetails.srid}?filePath=${fileDetails.filePath}" class=text-oo rel=nofollow download>
											<i class="material-icons download"></i>
										</a>
										<div class="stats ml-auto">
											<div class=like id=85 data-key=deskwal data-lkey=0>
												<i class="material-icons like-color favorite_border"></i>
												<span class=likin>2<span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>	
					<div class=pagin>
						<ul class="pagination pagination-rosy">
							<li class="prev page-item"><span>PREV</span><li class="page-item active"><a class=page-link
								href=hd-desktop-wallpaper.html rel=nofollow data-page=0>1</a>
							<li class=page-item><a class=page-link
								href=hd-desktop-wallpaper/2.html rel=nofollow data-page=1>2</a>
							<li class=page-item><a class=page-link
								href=hd-desktop-wallpaper/3.html rel=nofollow data-page=2>3</a>
							<li class=page-item><a class=page-link
								href=hd-desktop-wallpaper/4.html rel=nofollow data-page=3>4</a>
							<li class=page-item><a class=page-link
								href=hd-desktop-wallpaper/5.html rel=nofollow data-page=4>5</a>
							<li class=next><a class=page-link
								href=hd-desktop-wallpaper/2.html rel=nofollow data-page=1>NEXT</a>
						</ul>
					</div>
				</div>
			</div>
		</div>
	


</jsp:body>
</defaultTemplate:defaultDecorator>