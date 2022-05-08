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

   <div class="page-header header-small header-filter dwallpaper-header">
		<div class="container text-center">
			<div class=row>
				<div class="col-md-8 ml-auto mr-auto text-center">
					<h1 class=title>${fn:toUpperCase(type)} Wallpapers</h1>
					<c:choose>
						<c:when test="${type eq 'hd'}">
							<h4>Free Download High Quality 4K UHD Wallpapers for Laptop, Desktop & Dual Monitor display.</h4>
						</c:when>
						<c:otherwise>
							<h4>Free Download High Quality 4K UHD Mobile Wallpapers for all Android and iPhones. </h4>
						</c:otherwise>
					</c:choose>	
				</div>
			</div>
		</div>
	</div>
	<div class="main main-raised section-light-gray">
		<div class=container-fluid>
			<div class="row pt-2">
				<c:forEach items="${fileDetailsVos}" var="fileDetails">
				<c:choose>
					<c:when test="${type eq 'hd'}">
						<div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
							<div class="card img-card">
								<div class="card-body p-0">
									<div class=sm-space>
										<a href="${contextPath}/wallpaper/${fileDetails.srid}" rel=nofollow>
											<img alt="atlantis nebula" class="lazyload card-img-top" src="${fileDetails.file_url}" data-src="${fileDetails.file_url}">
										</a>
									</div>
									<hr class=m-0>
									<div class="card-footer pt-1 pb-1 px-3">
										<a href="${contextPath}/downloadfile/${fileDetails.srid}?filePath=${fileDetails.filePath}"
											class=text-oo rel=nofollow download>
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
					</c:when>
					<c:otherwise>
						<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
							<div class="card img-card">
								<div class="card-body p-0">
									<div class=sm-space>
										<a href="${contextPath}/wallpaper/${fileDetails.srid}" rel=nofollow>
											<img alt=GUN class="lazyload card-img-top" src="${fileDetails.file_url}" data-src="${fileDetails.file_url}">
										</a>
									</div>
									<hr class=m-0>
									<div class="card-footer pt-1 pb-1 px-3">
										<a href="${contextPath}/downloadfile/${fileDetails.srid}?filePath=${fileDetails.filePath}" class=text-oo rel=nofollow download>
											<i class="material-icons download"></i>
										</a>
										<div class="stats ml-auto">
											<div class=like id=114 data-key=mwal data-lkey=0>
												<i class="material-icons like-color favorite_border"></i>
												<span class=likin>35<span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
			</c:forEach>	
			<div class=pagin>
				<ul class="pagination pagination-rosy">
					<li class="prev page-item"><span>PREV</span>
					<li class="page-item active"><a class=page-link
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