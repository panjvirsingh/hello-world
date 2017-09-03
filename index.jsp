<%@ page language="java"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false" %>

<html>
<head>
<% String contextPath=request.getContextPath(); %>
<title> <fmt:message key="title.generateMuiscaFile" /></title>
<link href="<%=contextPath %>/css/fedexmain.css" rel="stylesheet" type="text/css">
<link href="<%=contextPath %>/css/layout.css"	rel="stylesheet" type="text/css">
<link href="<%=contextPath %>/css/verticalMenu.css"	rel="stylesheet" type="text/css">
  <script type="text/javascript" src="<%=contextPath %>/js/jquery-1.12.1.js"></script>
<script type="text/javascript"> 

function validateFields() {
	var location = $("#locationCd").val();
	var operationDate = $("#operationalDt").val();
	var flight = $("#flightNbr").val();
	  if (!muiscaPageForm.master.value) {
			alert('<spring:message code="message.pls.enter.mater"/>');
			return false;
			}
	if(location==0){
		alert('<spring:message code="message.pls.selc.loc"/>');
		return false;
				}
	if(operationDate==0){
		alert('<spring:message code="message.pls.selc.operday"/>');
		return false;
	}
	if(flight==0){
		alert('<spring:message code="message.pls.selc.flight"/>');
	return false;
	}
  
	if((document.getElementById("manifestFile").checked ==false) && (document.getElementById("predipFile").checked ==false)){
		alert('<spring:message code="message.pls.selc.predipMasterFiles"/>');
		return false;
	}
	var master = $("#master").val();
	$.ajax({
		type : "GET",
		url : "checkFrozenFlag",
		dataType : 'json',
		data : "master=" + master+"&location="+location+"&operationDate="+operationDate+"&flightNbr="+flight,
		success : function(data) {
		if(data=='N')
			{
			alert('<spring:message code="message.frozenFlagForManifestPredipFiles"/>');
			return false;
			}
		else{
			generateManifestPredipFiles();	
		}
		},
		error : function(e) {
		}
	});
	return true;
	}
	
	
function generateManifestPredipFiles() {
	// get the form values
	
	var master = $("#master").val();
	var location = $("#locationCd").val();
	var date = $("#operationalDt").val();
	var flight = $('#flightNbr').val();
	var manifest , predip;
	if(document.getElementById("manifestFile").checked ==false){
	manifest="nselect";	
	}
	else{
	manifest="select";
	}
	if(document.getElementById("predipFile").checked ==false){
	predip="nselect";	
	}
	else{
	predip="select";
	}
	$('#loadingImg').show();
	$.ajax({
		type : "GET",
		url : "generateFiles",
		dataType : 'json',
		data : "location=" + location+"&date="+date+"&flight="+flight+"&master="+master+"&manifest="+manifest+"&predip="+predip,
		success : function(data) {
			var table1=$('#fileData tbody').empty();
		       $.each(data, function(key,value) {
	                  var rowNew = $("<tr><td>"+key+"</td><td><a href='<%=contextPath %>/download/"+value['id']+".html'>"+value['fileName']+"</a></td><td>"+value['fileType']+"</td><td>"+value['date']+"</td></tr>");
	                     rowNew.appendTo(table1);
	              }); 
		},
		complete : function(e) {
		$('#loadingImg').hide();
		},
		error : function(e) {
		}
	});
	
}

	function getOperationDatesByUserLocation() {
		// get the form values
		var dropdown = $('#operationalDt');
		dropdown.empty();  
		var location = $("#locationCd").val();
		$.ajax({
			type : "GET",
			url : "getOperationDates",
			dataType : 'json',
			data : "locationName=" + location,
			success : function(response) {
				var mySelect = $('#operationalDt');
				mySelect.append($('<option></option>').val("0")
							.html('<spring:message code="label.selectDate"/>'));
				$.each(response,
						function(val, text) {
						
							mySelect.append($('<option></option>').val(text)
									.html(text));
						});

			},
			error : function(e) {
			}
		});
	}
	
	function getExistingfiles() {
		// get the form values
		var location = $("#locationCd").val();
		var date = $("#operationalDt").val();
		var flight = $('#flightNbr').val();
		$.ajax({
			type : "GET",
			url : "getExistingFiles",
			dataType : 'json',
			data : "location=" + location+"&date="+date+"&flight="+flight,
			success : function(data) {
				var table1=$('#fileData tbody').empty();
			       $.each(data, function(key,value) {
		                  var rowNew = $("<tr><td>"+key+"</td><td><a href='<%=contextPath %>/download/"+value['id']+".html'>"+value['fileName']+"</a></td><td>"+value['fileType']+"</td><td>"+value['date']+"</td></tr>");
		                     rowNew.appendTo(table1);
		              }); 
			},
			error : function(e) {
			}
		});
	}
	
	function getflightsByLocationAndOperationDate() {
		// get the form values
		var dropdown = $('#flightNbr');
		dropdown.empty();  
		var location = $("#locationCd").val();
		var operationDate = $("#operationalDt").val();
		$.ajax({
			type : "GET",
			url : "getOperationalFlights",
			dataType : 'json',
			data : "locationName=" + location +"&operationalDt="+operationDate,
			success : function(response) {
				var mySelect = $('#flightNbr');
				mySelect.append($('<option></option>').val("0")
							.html('<spring:message code="label.selectFlight"/>'));
				$.each(response,
						function(val, text) {
							mySelect.append($('<option></option>').val(text)
									.html(text));
						});

			},
			error : function(e) {
			}
		});
	}


</script>
</head>
<body>
	<table id="header" border="0" cellpadding="0" cellspacing="0"
		width="100%" height="40" bgcolor="white">
		<tr>
			<td width="130">
				<div id="logo"
					style="float: left; width: 160px; padding-right: 5px;; margin-top: 10px;; margin-left: 10px">
					<img src="<%=contextPath %>/img/FedexExpLogo.gif"
						width="155" height="30" border="0" alt="FedEx" title="FedEx">
				</div>&nbsp;
			</td>
			<td  align="centre">
				<h3><spring:message code="title.clearance"/></h3>
			</td>
			<td width="200" align="right">
			  <div class="rightuptoolspanel">		  
				<a class="headerLink" href="${mainMenuURL}"><spring:message code="title.menu"/></a>&nbsp;|&nbsp;
                <a class="headerLink" href="<%=contextPath %>/j_spring_security_logout"><spring:message code="label.logout"/></a>
				&nbsp;&nbsp;<img id="loadingImg" src="<%=contextPath %>/img/loading.gif" style="display:none" />		
            </div>
		</tr>
		<tr>
        <td colspan="4"><img height="1" width="100%" alt="" src="<%=contextPath %>/img/purple_line.gif"></td>
    </tr>
		<tr>
			<td width="700">
				<div class="lm_container">

					<div class="lm_top toolbar">
						<h2>
							<spring:message code="title.generateFile" />
						</h2>
					</div>
				</div>
			</td>
			<td colspan="2">&#160;</td>
		</tr>
		<tr>
			<fieldset>
				<form:form id="muiscaPageForm" modelAttribute="muiscaPageBind"
					method="GET">
					<table border="0" class="normalTable" width="700" cellspacing="0">
						<thead>
							<tr>
								<th colspan="4"><spring:message	code="title.generateMuiscaFile"/></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="2">&#160;</td>
							</tr>
							<tr>
								<td width="20%" align="right"><label for="master"><spring:message
											code="prompt.master"></spring:message></label></td>

											<td width="80%"><input name="master" path="master" id="master" value="<c:out value="${mastervar}"/>"/></td>

	
								
							</tr>
							<tr>
								<td colspan="2">&#160;</td>
							</tr>
							<tr>
								<td width="20%" align="right"><label for="locationCd"><spring:message
											code="prompt.location"></spring:message></label></td>
								<td width="80%"><form:select path="locationCd" name="locationCd"
										id="locationCd" onchange="getOperationDatesByUserLocation()">
										<form:option value="0"><spring:message code="label.selectLocation" /></form:option>
										<form:options items="${locations}"/>
									</form:select>
							</tr>
							<tr>
								<td colspan="2">&#160;</td>
							</tr>
							<tr>
								<td width="20%" align="right"><label for="operationalDt"><spring:message
											code="prompt.operationalDay" /></label></td>
								<td width="80%">
								<form:select name="operationalDt" path="operationalDt"
								 id="operationalDt" onchange="getflightsByLocationAndOperationDate()">
								<form:option value="0"><spring:message code="label.selectDate" /></form:option>
								</form:select>
								</td>
							</tr>
							<tr>
								<td colspan="2">&#160;</td>
							</tr>
							<tr>
								<td width="20%" align="right"><label for="flightNbr"><spring:message
											code="prompt.flight" /></label></td>
								<td width="80%">
								<form:select name="flightNbr" path="flightNbr" 
								id="flightNbr" onchange="getExistingfiles()">
								<form:option value="0"><spring:message code="label.selectFlight" /></form:option>
								</form:select>
								</td>
							</tr>
							<tr>
								<td colspan="2">&#160;</td>
							</tr>
							<tr>
								<td colspan="2">&#160;</td>
							</tr>

							<tr>
								<td width="20%" align="right" valign="top"><label
									for="filesToGenerate"><spring:message
											code="prompt.filesToGenerate" /></label></td>
								<td width="80%"><form:checkbox path="manifestFile" id="manifestFile" value="manifest" name="manifest" checked="checked"/><spring:message code="label.manifestFile" /><br>
										 		<form:checkbox path="predipFile" id="predipFile" value="predipFile" name="predipFile" checked="checked"/><spring:message code="label.predipFile" /></td>
							</tr>
							<tr>
								<td colspan="4">&#160;
									<div id="errorMessages" class="messages">&#160;</div>
								</td>
							</tr>
							
							  
    
    
						</tbody>
					</table>
					
				</form:form>
				</tr>
				<tr>
					<table border="0" class="normalTable" width="700" cellspacing="0">
					<tbody>
				<tr>
				<td colspan="4" align="right">
								
						<button  class="buttonpurple" onclick="return validateFields()" >
										<spring:message code="button.generate" /></button>
											&#160;
											<button class="buttonpurple"
												onclick="<%=contextPath%>">
												<spring:message code="button.cancel" />
											</button></td>
							</tr>
				
											</tbody>
					</table>
					</tr>
<br/>
<h3><spring:message	code="title.doc.list" /></h3>
<div style="height:200px; overflow:auto">
<table border="0" cellspacing="0" cellpadding="2" width="600"
				class="normalTable" id="fileData">
				<thead>

					<tr>

						<th style="border-left: 1px white solid"><spring:message
								code="label.serialNum" /></th>
						<th style="border-left: 1px white solid"><spring:message
								code="label.fileName" /></th>
						<th style="border-left: 1px white solid"><spring:message
								code="label.fileType" /></th>
						<th style="border-left: 1px white solid"><spring:message
								code="label.generationTime" /></th>
					</tr>
				</thead>
				<tbody>
			<c:if  test="${!empty documentList}">
			<c:set var="count" value="0" scope="page" />


			
			<c:forEach items="${documentList}" var="document">
				<c:set var="count" value="${count + 1}" scope="page"/>
					<tr style="height: 20px" >
						<td width="auto"><c:out value="${count}"/></td>
						<td style="border-left: 1px white solid;"><a href="<c:url value='/download/${document.cstmsFileSeqNbr}.html'/>">${document.fileNm}</a></td>
						<td style="border-left: 1px white solid;" width="auto">${document.fileTypeDesc}</td>
						<td style="border-left: 1px white solid;">${document.crdtTmstp}</td>
					</tr>
					</c:forEach>
			</c:if>	
				</tbody>
			</table>
</div>
<br/>
<br/>
<br/>
<br/>
</body>
</html>