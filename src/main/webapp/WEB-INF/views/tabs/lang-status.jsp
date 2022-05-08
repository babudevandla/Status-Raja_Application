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
				<h1 class=title><span style="text-transform: uppercase;">${lang} </span> Status For Whatsapp</h1>
				<!-- <h4>Latest collection of English status to express your feelings and situation on Whatsapp.</h4> -->
			</div>
		</div>
		<div class="row dl-sec">
			<div class="iceilinks ml-auto mr-auto text-center pb-2">
				<div class="blinks pt-2">
				<c:forEach items="${categories}" var="category">
					<a class="btn btn-sm btn-round blink binx" title='New Status'href="${contextPath}/status/${lang}/${category.name}">
						${category.name}
					</a>
				</c:forEach>
				</div>
			</div>
		</div>
		<div class="search col-md-12 ml-auto mr-auto text-right" >
			<a  title="RECENT" href="${contextPath}/status/${lang}?recent=top" >RECENT</a>
			<a  title="TOP RATED" href="${contextPath}/status/${lang}?toprated=top" >TOP RATED</a>
		</div>
	</div>
</div>
<div class="main main-raised section-light-gray">
	<div class=container-fluid>
		<div class=row>
			<div class="adsen card mt-4 rounded-top" align=center></div>
			<c:forEach items="${fileDetailsVos}" var="langStatus">
				<div class="col-sm-6 col-md-4 col-lg-4 col-xl-3 sbox">
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
		<div class="card rounded-0" align=center></div>
		</div>
		
    </div>
 </div>

	</jsp:body>
</defaultTemplate:defaultDecorator>