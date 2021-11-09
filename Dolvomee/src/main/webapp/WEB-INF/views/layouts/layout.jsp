<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- SEO Meta Tags -->
    <meta name="description" content="Your description">
    <meta name="author" content="Your name">

    <!-- Webpage Title -->
    <title>dolvomee</title>
    
    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">

</head>

<body data-bs-spy="scroll" data-bs-target="#navbarExample">

   			<tiles:insertAttribute name="header"></tiles:insertAttribute>
			<tiles:insertAttribute name="body"></tiles:insertAttribute>
			<tiles:insertAttribute name="footer"></tiles:insertAttribute>

	<script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/purecounter.min.js"></script> <!-- Purecounter counter for statistics numbers -->
    <script src="js/isotope.pkgd.min.js"></script> <!-- Isotope for filter -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->

</body>
</html>