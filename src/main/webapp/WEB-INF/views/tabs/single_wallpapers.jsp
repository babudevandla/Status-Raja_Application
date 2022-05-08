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

<div class="page-header header-small header-filter mwallpaper-header"></div>
	<div class="main main-raised section-light-gray">
		<div class=container-fluid>
			<div class="row pt-2 cen-con">
				<div class="col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8">
					<div class="card downcard">
						<div class="card-body p-0">
							<div class=p-0>
								<img class="lazyload card-img-top"
									src="${fileDetails.file_url}"
									data-src="${fileDetails.file_url}">
							</div>
							<div class="card-footer pt-1 pb-1 bg-white cen-con">
								<a href="${contextPath}/downloadfile/${fileDetails.srid}?filePath=${fileDetails.filePath}" class="btn btn-rose btn-round w-25 downlink px-0 walldownlink"
									download>DOWNLOAD<div class=ripple-container></div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class=container-fluid>
			<div class="row pt-2"></div>
		</div>
	</div>
		
</jsp:body>
</defaultTemplate:defaultDecorator>