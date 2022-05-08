<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@attribute name="title" fragment="true"%>
<!DOCTYPE html>
<html lang=en-US>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset=UTF-8>
<meta http-equiv=X-UA-Compatible content="IE=edge">
<meta name=viewport content="width=device-width, initial-scale=1">
<title>SR</title>

<!-- Favicon
================================================== -->

<!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600|Roboto:400,500"	rel="stylesheet"> -->
<%-- <link rel="stylesheet" href="${contextPath}/uikit/css/uikit.min.css" /> --%>

<link href="${contextPath}/css/styles.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="${contextPath}/images/favicon.ico" />


<style type="text/css">
@media (min-width: 1200px){
.page-header.header-small{
    padding: 60px 0 30px;
}
}

.banner-header h4{
    margin-bottom: 50px;
}
.search input {
    /* padding: 73px; */
    padding: 4px 20px;
    border-radius: 7px 7px 0px 0px;
    border: 0;
   /*  background-image: linear-gradient(to right, #48439f 0%, #8478db 19%, #6d75c7 60%, #8382dd 100%); */
   	background-image: linear-gradient(to right, #60bad4 0%, #2a95a1 19%, #29948b 60%, #1e9c9c 100%);
    color: #fff;
    font-size: 13px;
    cursor: pointer;
}
.search select {
    /* padding: 73px; */
    padding: 8px 20px;
    border-radius: 7px 7px 0px 0px;
    border: 0;
    /* background-image: linear-gradient(to right, #48439f 0%, #8478db 19%, #6d75c7 60%, #8382dd 100%); */
    background-image: linear-gradient(to right, #60bad4 0%, #2a95a1 19%, #29948b 60%, #1e9c9c 100%);
    color: #fff;
    font-size: 13px;
    cursor: pointer;
}

.search a {
    /* padding: 73px; */
    padding: 4px 20px;
    border-radius: 7px 7px 0px 0px;
    border: 0;
    /* background-image: linear-gradient(to right, #48439f 0%, #8478db 19%, #6d75c7 60%, #8382dd 100%); */
    background-image: linear-gradient(to right, #60bad4 0%, #2a95a1 19%, #29948b 60%, #1e9c9c 100%);
    color: #fff;
    font-size: 13px;
    /* font-weight: bold; */
    cursor: pointer;
}
.current {
  color: green;
}

#pagination li {
  display: inline-block;
 
  border: 0;
    border-radius: 30px !important;
    transition: all .3s;
    padding: 0 11px;
    margin: 0 3px;
    min-width: 30px;
    height: 30px;
    line-height: 30px;
    color: #999;
    font-weight: 400;
    font-size: 12px;
    text-transform: uppercase;
    background: 0 0;
    text-align: center;
    background-color: #8b7bd8;
    border-color: #8b7bd8;
    
}
#pagination li a{
 	 color: #fff;
}

#pagination .page-item active{

} 
</style>
</head>
<body>
	<div class=wrap>
		<nav id=w0 class="navbar fixed-top navbar-expand-lg"
			color-on-scroll=100>
			<div class=container>
				<div class=navbar-translate>
					<a class=navbar-brand href="${contextPath}/" aria-label=Home><i
						class="material-icons home"></i>
						<img class="lazyload logo" src="${contextPath}/image/sr_img.png" data-src="${contextPath}/image/sr_img.png"
						alt="STATUS RAJA" style="margin-top: -30px; max-height: 114px;"></a>
					<button type=button class=navbar-toggler data-toggle=collapse
						aria-expanded=false data-target="#w0-collapse">
						<span class=sr-only>Toggle navigation</span><span
							class=navbar-toggler-icon></span><span class=navbar-toggler-icon></span><span
							class=navbar-toggler-icon></span>
					</button>
				</div>
				<div id=w0-collapse class="collapse navbar-collapse">
					<ul id=w1 class="navbar-nav ml-auto nav">
						<li class=nav-item>
							<a class=nav-link href="${contextPath}/">
						 		<i class="material-icons home"></i> HOME
							</a>
						</li>
						<li class=nav-item>
							<a class=nav-link href="${contextPath}/ringtones">
								<i class="material-icons audiotrack"></i> RINGTONES
							</a>
						</li>	
						<%-- <li class="nav-item dropdown">
							<a class="nav-link " href="${contextPath}/status/list" >
								<i class="material-icons spa"></i> STATUS
							</a>
						</li> --%>
						<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" data-toggle=dropdown>
							<i class="material-icons spa"></i> STATUS</a>
							<ul id=w2 class=dropdown-menu>
								<li>
									<a class=something href="${contextPath}/status/image" tabindex=-1>
										<i class="material-icons image"></i> IMAGE STATUS
									</a>
								</li>		
								<li>
									<a class=something href="${contextPath}/status/text" tabindex=-1>
										<i class="material-icons pen"></i> TEXT STATUS
									</a>
							    </li>	
							</ul>
						</li>	
						<li class="nav-item dropdown">
							<a class="nav-link " href="${contextPath}/wallpapers" >
								<i class="material-icons photo_size_select_actual"></i> WALLPAPERS
							</a>
						</li>			
						<!--<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle=dropdown><i
								class="material-icons spa"></i> STATUS</a>
							<ul id=w2 class=dropdown-menu>
								<li><a class=something href=whatsapp-image-status.html
									tabindex=-1><i class="material-icons image"></i> IMAGE
										STATUS</a>
								<li><a class=something href=whatsapp-status.html
									tabindex=-1><i class="material-icons pen"></i> TEXT STATUS</a>
								<li><a class=something href=whatsapp-dp.html tabindex=-1><i
										class="material-icons image"></i> DP IMAGES</a>
							</ul>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle=dropdown><i
								class="material-icons photo_size_select_actual"></i> WALLPAPERS</a>
							<ul id=w3 class=dropdown-menu>
								<li><a class=something href=hd-mobile-wallpaper.html
									tabindex=-1><i class="material-icons smartphone"></i>
										MOBILE</a>
								<li><a class=something href=hd-desktop-wallpaper.html
									tabindex=-1><i class="material-icons computer"></i> DESKTOP</a>
							</ul>
						<li class=nav-item><a class=nav-link
							href=birthday-wishes.html><i class="material-icons cake"></i>
								BIRTHDAY WISHES</a>
							-->
						
					</ul>
				</div>
			</div>
		</nav>
		<div class=" ">
			<jsp:doBody />
		</div>
	</div>
	<footer class="footer footer-white">
		<div class=container>
			<ul class="float-left footer-links">
				<li><a href="${contextPath}/privacy-policy">Privacy Policy</a>
				<!-- <li><a href="sitemap.html">Site Map</a> -->
				<li><a href="${contextPath}/contact">Contact Us</a>
			</ul>
			<!-- <ul class="social-buttons float-right">
				<li><a aria-label=Twitter
					class="btn btn-just-icon btn-link btn-twitter"
					href="https://twitter.com/MyStatusQueen"><i
						class="material-icons twitter"></i></a>
				<li><a aria-label=Facebook
					class="btn btn-just-icon btn-link btn-facebook"
					href="https://www.facebook.com/mystatusqueen"><i
						class="material-icons facebook"></i></a>
				<li><a aria-label=Pinterest
					class="btn btn-just-icon btn-link btn-pinterest"
					href="https://in.pinterest.com/statusqueen"><i
						class="material-icons pinterest"></i></a>
			</ul> -->
		</div>
	</footer>
	
<script src="${contextPath}/js/minify/custom.js"></script>
<%-- <script src="${contextPath}/uikit//js/uikit.min.js"></script>
<script src="${contextPath}/uikit/js/uikit-icons.min.js"></script> --%>

<script type="text/javascript">
$(document).ready(function() {
	
	
});

//Pagination
 pageSize = 32;

var pageCount = $(".line-content").length / pageSize;

for (var i = 0; i < pageCount; i++) {

	$("#pagination").append('<li class="page-item"><a href="#">' + (i + 1) + '</a></li> ');
}
//$("#pagination li").first().find("a").addClass("active")
$("#pagination li").first().addClass("active")
showPage = function(page) {
	$(".line-content").hide();
	$(".line-content").each(function(n) {
		if (n >= pageSize * (page - 1) && n < pageSize * page)
			$(this).show();
	});
}

showPage(1);

$("#pagination li a").click(function() {
	$("#pagination li a").removeClass("active");
	$(this).addClass("active");
	showPage(parseInt($(this).text()))
}); 



</script>	
</body>
</html>