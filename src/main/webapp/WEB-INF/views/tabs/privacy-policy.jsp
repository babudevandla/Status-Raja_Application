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

<div class=vhigh>
	<div class=container>
		<p class=privacy-title>StatusRaja - Privacy Policy</p>
		<p class=privacy-text>This privacy policy has been compiled to better serve those who are concerned with how their 'Personally identifiable information' (PII) is being used online. PII, as used in US privacy law and information security, is information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context. Please read our privacy policy carefully to get a clear understanding of how we collect, use, protect or otherwise handle your Personally Identifiable Information in accordance with our website.</p>
		<br>
		<p class=text-header>What personal information do we collect from the people that visit our website ?</p>
		<p class=privacy-text>We do not collect information from visitors of our site.</p>
		<br>
		<p class=text-header>Do we use 'cookies'?</p>
		<p class=privacy-text>We use cookies for tracking purposes Only. You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. Even, if you do not accept cookies, you can access all Service.</p>
		<br>
		<p class=text-header>Third party links</p>
		<p class=privacy-text>We do not include or offer third party products or services on our website.</p>
		<br>
		<p class=text-header>Google</p>
		<p class=privacy-text>We use Google AdSense Advertising on our website. Google, as a third party vendor, uses cookies to serve ads on our site. Google's use of the DART cookie enables it to serve ads to our users based on their visit to our site and other sites on the Internet. Users may opt out of the use of the DART cookie by visiting the Google ad and content network privacy policy.</p>
		<br>
		<p class=text-header>Copyright Policy</p>
		<p class=privacy-text>We respect the intellectual property rights of others. It is our policy to respond to any claim that Content posted on the Service infringes the copyright or other intellectual property infringement ("Infringement") of any person.If you are a copyright owner, or authorized on behalf of one, and you believe that the copyrighted work has been copied in a way that constitutes copyright infringement that is taking place through the Service, you must submit your notice in writing to the attention of "Copyright Infringement" of abuse@statusqueen.com and include in your notice a detailed description of the alleged Infringement.You may be held accountable for damages (including costs and attorneys' fees) for misrepresenting that any Content is infringing your copyright.<br>
		</p>
		<br>
		<p class=text-header>Changes To This Privacy Policy</p>
		<p class=privacy-text>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>
		<br>
		<p class=text-header>Contacting Us</p>
		<p class=privacy-text>If there are any questions regarding this privacy policy you may contact us using the information on <a
				href="${contextPath}/contact">contact Page</a>.</p>
	</div>
</div>

</jsp:body>
</defaultTemplate:defaultDecorator>