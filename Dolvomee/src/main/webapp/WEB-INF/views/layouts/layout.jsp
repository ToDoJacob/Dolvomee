<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<tiles:insertAttribute name="header" />
				<!-- End of Topbar -->
				<!-- Begin Page Content -->
				<tiles:insertAttribute name="body" />
			</div>
			<!-- End of Main Content -->
			<!-- Footer -->
			<div>
				<tiles:insertAttribute name="footer" />
			</div>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->
	
</body>
</html>