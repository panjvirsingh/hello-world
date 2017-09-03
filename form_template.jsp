<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<% String contextPath=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
		"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title><spring:message code="title.casmModule"/></title>
        <link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/fedexmain.css">
        <link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/default.css">
        <link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/menu.css">
        <link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/tablegrid/tablegrid.css">
        <link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/tablegrid/calendar.css">
        <link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/window/default.css">
        <link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/window/alphacube.css">
        <script type="text/javascript" src="<%=contextPath %>/scripts/prototype/prototype.js"></script>
        <script type="text/javascript" src="<%=contextPath %>/scripts/scriptaculous/scriptaculous.js"></script>
        <script type="text/javascript" src="<%=contextPath %>/scripts/utilities/LayoutManager.js"></script>
        <script type="text/javascript" src="<%=contextPath %>/scripts/utilities/AjaxRequest.js"></script>
        <script type="text/javascript" src="<%=contextPath %>/scripts/utilities/utilities.js"></script>
        <script type="text/javascript" src="<%=contextPath %>/scripts/tablegrid/tablegrid.js"></script>
        <script type="text/javascript" src="<%=contextPath %>/scripts/window/window.js"></script>
        
    </head>
    <script type="text/javascript">
		var CONTEXT_PATH = '${pageContext.request.contextPath}';
        document.observe("dom:loaded", function() {
            new LayoutManager();
        });
    </script>
    <body>
        <div id="loadingImage" class="loading" style="display:none">&nbsp;</div>
        <div class="lm_container">
            <div class="lm_center center">
                <tiles:insertAttribute name="content"/>
            </div>
        </div>
    </body>
</html>