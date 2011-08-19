<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Dun and Bradstreet</title>
<!-- noindex -->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html;CHARSET=iso-8859-1">
<META NAME="Author" Content="OMB">
<META NAME="rating" CONTENT="General">
<META NAME="ROBOTS" CONTENT="ALL">
<meta name="MSSmartTagsPreventParsing" content="TRUE"><LINK media=all href="css/style_usa.css" type=text/css rel=stylesheet>
<LINK media=all href="css/style.css" type=text/css rel=stylesheet>
<LINK media=all href="css/nice_menus_default.css" type=text/css rel=stylesheet>
<LINK media=all href="css/nice_menus.css" type=text/css rel=stylesheet>
<LINK media=all href="css/api_doc.css" type=text/css rel=stylesheet>
	  
</head>

<body>
<div id="container">
<div>
<table id=dnb_header width="1000" cellpadding="0" cellspacing="0" border="0" class="masthead">
<tr>
	<td><img src="images/dnbLogo.gif" alt="DNBLogo" border="0"></td>
	<td align="right">
<a class="dnbnav" href="/DNB/index.jsp">Home</a>
</td>
</tr>
</table>
</div>
<A name=nav></A>
<div class="nav">
<DIV class="block block-block unstyled-block" id=block-block-26></DIV>
<jsp:include flush="true" page='includes/menu.inc' />

</div>
<div class="interior_nonav">
<br>

<H1 class="pagetitle">API</H1><br>

<p><b>General Information</b>
<p>Dun and Bradstreet is pleased to announce the availability of a subset of its data
  in an Application Programming Interface (API).  
  </p>
  <p>The API consists of three methods, dnbSearch.jsp and dnbTreeData.jsp. These APIs provide access to the D&B company information, 
  business relationships,
and to Company Executive information. All data is available through these API calls.
  </p>

<p><b>Methods</b>
<p>	By default API calls will retrieve a maximum of 100 records per call, in order to save bandwidth. You can retrieve a fewer number of records by specifying "max_records" parameter. Please don't attempt to retrieve large subsections of the database through repeated calls to the API.</p>
 <p>
  The links below show how to retrieve data in XML through API calls:</p>

<p>dnbSearch.jsp<br><br>
dnbTreeData.jsp<br/><br>


<p><b>XML Formats</b>
<p>The XML format will vary by the level of detail: detail = 1 (summary) will produce different
output than detail = 4 (complete).  The XML formats will hopefully be fairly self explanatory; for
meanings of specific data fields, consult the <a href="api_doc/dnb_datadictionary.jsp">data dictionary</a>.  There are also format examples within the two methods pages linked above.
</p>
<br><br><br><br>
</div>

</div>
	<script src="js/jquery-1.3.2.min.js" type=text/javascript></script>
	<script src="js/nice_menus.js" type=text/javascript></script></form>
</body>
</html>