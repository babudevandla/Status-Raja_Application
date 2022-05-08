<%@ page pageEncoding="ISO-8859-1"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@taglib prefix="defaultTemplate" tagdir="/WEB-INF/tags"%>

<defaultTemplate:defaultDecorator>
<jsp:attribute name="title">Status Raja</jsp:attribute>
<jsp:body>

 <div class="page-header header-small header-filter home-header">
	<div class="container text-center">
		<div class=row>
			<div class="col-lg-2 col-sm-6 mini">
				<a title=Ringtones href="${contextPath}/ringtones" class="binf bin">
				<i class="material-icons ringtone"></i><br>
					<p>RINGTONES</p></a>
			</div>
			<div class="col-lg-2 col-sm-6 mini">
				<a title="Text Status" href="${contextPath}/status/list" class="bind bin">
				<i class="material-icons pen"></i><br>
					<p>TEXT STATUS</p></a>
			</div>
			<div class="col-lg-2 col-sm-6 mini">
				<a title="Desktop Wallpapers" href="${contextPath}/wallpapers" class="bing bin">
				<i 	class="material-icons photo_size_select_actual"></i><br>
					<p>WALLPAPERS</p></a>
			</div>
			<!--<div class="col-lg-2 col-sm-6 mini">
				<a title="DP Images" href="${contextPath}/dpimages/list" class="bind bin">
				<i class="material-icons image"></i><br>
					<p> DP IMAGES </p></a>
			</div>
			 
			<div class="col-lg-3 col-sm-6 mini">
				<a title="Image Status" href=whatsapp-image-status.html
							class="binb bin"><i class="material-icons image"></i><br>
					<p>IMAGE SƬAƬUS</p></a>
			</div>
			<div class="col-lg-3 col-sm-6 mini">
				<a title="Text Status" href=whatsapp-status.html class="binc bin"><i
							class="material-icons pen"></i><br>
					<p>TEXT STATUS</p></a>
			</div>
			<div class="col-lg-3 col-sm-6 mini">
				<a title="Birthday Wishes" href=birthday-wishes.html
							class="bind bin"><i class="material-icons cake"></i><br>
					<p>BIRTHDAY WISHES</p></a>
			</div> 
			<div class="col-lg-3 col-sm-6 mini">
				<a title="Mobile Wallpapers" href=hd-mobile-wallpaper.html
							class="binf bin"><i
							class="material-icons photo_size_select_actual"></i><br>
					<p>MOBILE WALLPAPERS</p></a>
			</div>
			
			<div class="col-lg-3 col-sm-6 mini">
				<a title="Festival Wishes" href=festival-wishes.html
							class="binh bin"><i class="material-icons festival"></i><br>
					<p>FESTIUAL WISHES</p></a>
			</div> -->
		</div>
	</div>
</div>
<div class="main main-raised home-raised section-light-gray">
	<div class=container-fluid>
		<div class="row shadowing pb-4">
			<div class=col-lg-12>
				<hr class="hr-text mb-0" data-content="LATEST STATUS">
			</div>
			<c:forEach items="${textStatuslist}" var="langStatus">
			<div class="col-sm-6 col-md-6 col-lg-3 col-xl-3 sbox">
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
									<i class="material-icons like-color favorite_border"></i>
									<span class=likin>${langStatus.likes}<span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		 </c:forEach>	
		</div>
		<!-- <div class="row shadowing mt-5 pb-3">
			<div class=col-lg-12>
				<hr class="hr-text mb-0" data-content="LATEST DP IMAGES">
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=idp/640.html><img alt=Breakup
										class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////X19f///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/whatsapp dp image7-640.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloaddpimage/whatsapp%20dp%20image7-640.jpg_%3b%20filename_%3dutf-8%27%27whatsapp%2520dp%2520image7-640.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=640 data-key=dpi data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>4<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=idp/638.html><img alt="Boy Attitude"
										class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////X19f///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/whatsapp dp image 72-638.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloaddpimage/whatsapp%20dp%20image%2072-638.jpg_%3b%20filename_%3dutf-8%27%27whatsapp%2520dp%2520image%252072-638.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=638 data-key=dpi data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>4<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=idp/637.html><img alt=Attitude
										class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////X19f///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/whatsapp dp image 73-637.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloaddpimage/whatsapp%20dp%20image%2073-637.jpg_%3b%20filename_%3dutf-8%27%27whatsapp%2520dp%2520image%252073-637.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=637 data-key=dpi data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>4<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=idp/636.html><img alt=Love
										class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////X19f///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/whatsapp dp image 74-636.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloaddpimage/whatsapp%20dp%20image%2074-636.jpg_%3b%20filename_%3dutf-8%27%27whatsapp%2520dp%2520image%252074-636.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=636 data-key=dpi data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>2<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=idp/634.html><img alt=cute
										class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////X19f///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/whatsapp dp image 76-634.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloaddpimage/whatsapp%20dp%20image%2076-634.jpg_%3b%20filename_%3dutf-8%27%27whatsapp%2520dp%2520image%252076-634.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=634 data-key=dpi data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>3<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=idp/633.html><img alt=Alone
										class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////X19f///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/whatsapp dp image 77-633.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloaddpimage/whatsapp%20dp%20image%2077-633.jpg_%3b%20filename_%3dutf-8%27%27whatsapp%2520dp%2520image%252077-633.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=633 data-key=dpi data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>3<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=idp/632.html><img alt=Cute
										class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////X19f///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/whatsapp dp image1-632.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloaddpimage/whatsapp%20dp%20image1-632.jpg_%3b%20filename_%3dutf-8%27%27whatsapp%2520dp%2520image1-632.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=632 data-key=dpi data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>0<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=idp/629.html><img alt=Alone
										class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////X19f///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/whatsapp dp image9-629.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloaddpimage/whatsapp%20dp%20image9-629.jpg_%3b%20filename_%3dutf-8%27%27whatsapp%2520dp%2520image9-629.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=629 data-key=dpi data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>2<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=idp/628.html><img alt=sad
										class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////X19f///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/whatsapp dp image10-628.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloaddpimage/whatsapp%20dp%20image10-628.jpg_%3b%20filename_%3dutf-8%27%27whatsapp%2520dp%2520image10-628.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=628 data-key=dpi data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>0<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=idp/626.html><img alt=Alone
										class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////X19f///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/whatsapp dp image11-626.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloaddpimage/whatsapp%20dp%20image11-626.jpg_%3b%20filename_%3dutf-8%27%27whatsapp%2520dp%2520image11-626.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=626 data-key=dpi data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>3<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=idp/625.html><img alt=Breakup
										class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////X19f///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/whatsapp dp image12-625.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloaddpimage/whatsapp%20dp%20image12-625.jpg_%3b%20filename_%3dutf-8%27%27whatsapp%2520dp%2520image12-625.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=625 data-key=dpi data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>0<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=idp/624.html><img alt=Alone
										class="lazyload card-img-top"
										src="data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////X19f///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=="
										data-src="https://static.statusqueen.in/dpimages/thumbnail/whatsapp dp image13-624.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloaddpimage/whatsapp%20dp%20image13-624.jpg_%3b%20filename_%3dutf-8%27%27whatsapp%2520dp%2520image13-624.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=624 data-key=dpi data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>2<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> -->
		<!-- <div class="row shadowing mt-5 pb-3">
			<div class=col-lg-12>
				<hr class="hr-text mb-0" data-content="LATEST IMAGES STATUS">
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=ist/262.html><img alt="love whatsapp image status"
										class="lazyload card-img-top"
										src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWP4////fyYGBgYGAB32A/+PRyXoAAAAAElFTkSuQmCC"
										data-src="https://static.statusqueen.in/imagestatus/thumbnail/you know-64-262.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloadistatus/you%20know-64-262.jpg_%3b%20filename_%3dutf-8%27%27you%2520know-64-262.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=262 data-key=ims data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>21<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=ist/261.html><img alt="sad whatsapp image status"
										class="lazyload card-img-top"
										src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWP4////fyYGBgYGAB32A/+PRyXoAAAAAElFTkSuQmCC"
										data-src="https://static.statusqueen.in/imagestatus/thumbnail/yad-63-261.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a href=downloadistatus/yad-63-261.jpg class=text-oo download><i
										class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=261 data-key=ims data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>27<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=ist/260.html><img alt="love whatsapp image status"
										class="lazyload card-img-top"
										src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWP4////fyYGBgYGAB32A/+PRyXoAAAAAElFTkSuQmCC"
										data-src="https://static.statusqueen.in/imagestatus/thumbnail/words-62-260.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a href=downloadistatus/words-62-260.jpg class=text-oo download><i
										class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=260 data-key=ims data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>15<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=ist/259.html><img alt="sad whatsapp image status"
										class="lazyload card-img-top"
										src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWP4////fyYGBgYGAB32A/+PRyXoAAAAAElFTkSuQmCC"
										data-src="https://static.statusqueen.in/imagestatus/thumbnail/true love-84-259.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloadistatus/true%20love-84-259.jpg_%3b%20filename_%3dutf-8%27%27true%2520love-84-259.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=259 data-key=ims data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>13<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=ist/258.html><img alt="sad whatsapp image status"
										class="lazyload card-img-top"
										src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWP4////fyYGBgYGAB32A/+PRyXoAAAAAElFTkSuQmCC"
										data-src="https://static.statusqueen.in/imagestatus/thumbnail/time-61-258.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a href=downloadistatus/time-61-258.jpg class=text-oo download><i
										class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=258 data-key=ims data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>20<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=ist/257.html><img
										alt="motivational whatsapp image status"
										class="lazyload card-img-top"
										src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWP4////fyYGBgYGAB32A/+PRyXoAAAAAElFTkSuQmCC"
										data-src="https://static.statusqueen.in/imagestatus/thumbnail/tarif-60-257.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a href=downloadistatus/tarif-60-257.jpg class=text-oo download><i
										class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=257 data-key=ims data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>14<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=ist/256.html><img
										alt="motivational whatsapp image status"
										class="lazyload card-img-top"
										src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWP4////fyYGBgYGAB32A/+PRyXoAAAAAElFTkSuQmCC"
										data-src="https://static.statusqueen.in/imagestatus/thumbnail/talim-59-256.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a href=downloadistatus/talim-59-256.jpg class=text-oo download><i
										class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=256 data-key=ims data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>18<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=ist/255.html><img alt="sad whatsapp image status"
										class="lazyload card-img-top"
										src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWP4////fyYGBgYGAB32A/+PRyXoAAAAAElFTkSuQmCC"
										data-src="https://static.statusqueen.in/imagestatus/thumbnail/tabah-58-255.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a href=downloadistatus/tabah-58-255.jpg class=text-oo download><i
										class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=255 data-key=ims data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>10<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=ist/254.html><img alt="sad whatsapp image status"
										class="lazyload card-img-top"
										src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWP4////fyYGBgYGAB32A/+PRyXoAAAAAElFTkSuQmCC"
										data-src="https://static.statusqueen.in/imagestatus/thumbnail/shak-57-254.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a href=downloadistatus/shak-57-254.jpg class=text-oo download><i
										class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=254 data-key=ims data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>22<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=ist/253.html><img alt="love whatsapp image status"
										class="lazyload card-img-top"
										src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWP4////fyYGBgYGAB32A/+PRyXoAAAAAElFTkSuQmCC"
										data-src="https://static.statusqueen.in/imagestatus/thumbnail/sath-56-253.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a href=downloadistatus/sath-56-253.jpg class=text-oo download><i
										class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=253 data-key=ims data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>8<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=ist/252.html><img
										alt="religious whatsapp image status"
										class="lazyload card-img-top"
										src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWP4////fyYGBgYGAB32A/+PRyXoAAAAAElFTkSuQmCC"
										data-src="https://static.statusqueen.in/imagestatus/thumbnail/Kabier ji Quote-39-252.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloadistatus/Kabier%20ji%20Quote-39-252.jpg_%3b%20filename_%3dutf-8%27%27Kabier%2520ji%2520Quote-39-252.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=252 data-key=ims data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>9<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-2 msn">
				<div class="card img-card">
					<div class="card-body p-0">
						<div class=sm-space>
							<a href=ist/251.html><img
										alt="religious whatsapp image status"
										class="lazyload card-img-top"
										src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWP4////fyYGBgYGAB32A/+PRyXoAAAAAElFTkSuQmCC"
										data-src="https://static.statusqueen.in/imagestatus/thumbnail/sant kabir quotes-55-251.jpg"></a>
						</div>
						<hr class=m-0>
						<div class="card-footer pt-1 pb-1 px-3">
							<a
										href=downloadistatus/sant%20kabir%20quotes-55-251.jpg_%3b%20filename_%3dutf-8%27%27sant%2520kabir%2520quotes-55-251.jpg
										class=text-oo download><i class="material-icons download"></i></a>
							<div class="stats ml-auto">
								<div class=like id=251 data-key=ims data-lkey=0>
									<i class="material-icons like-color favorite_border"></i><span
												class=likin>8<span>
								
										</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> -->
	</div>
</div>

</jsp:body>
</defaultTemplate:defaultDecorator>