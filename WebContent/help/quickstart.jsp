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
<meta name="MSSmartTagsPreventParsing" content="TRUE">
<LINK media=all href="../css/style_usa.css" type=text/css rel=stylesheet>
<LINK media=all href="../css/style.css" type=text/css rel=stylesheet>
<LINK media=all href="../css/nice_menus_default.css" type=text/css rel=stylesheet>
<LINK media=all href="../css/nice_menus.css" type=text/css rel=stylesheet>
<LINK media=all href="../css/api_doc.css" type=text/css rel=stylesheet>
	  
</head>

<body>
<div id="container">
<div>
<table id=dnb_header width="1000" cellpadding="0" cellspacing="0" border="0" class="masthead">
<tr>
	<td><img src="../images/dnbLogo.gif" alt="DNBLogo" border="0"></td>
	<td align="right">
<a class="dnbnav" href="../DNB/index.jsp">Home</a>
</td>
</tr>
</table>
</div>
<A name=nav></A>
<div class="nav">
<DIV class="block block-block unstyled-block" id=block-block-26></DIV>
<jsp:include flush="true" page='../includes/menu.inc' />

</div>
<div class="interior_nonav">
<br>
<H1 class="pagetitle">Dun & Bradstreet Quickstart Guide</H1>
<h2>Getting Started </h2>
Access D&B from the following link: http:// <br /><br>

Username / Password:<br />
There is no username or password required. <br />
<br></br>
<h2>Searching</h2>
<h3>Company Searching</h3>
Company searches allow you to search the D&B data by company name, D-U-N-S number and/or by physical location.<br>
<br>Notes:<br></br>
<ul>
<li>Business name is not case sensitive.</li>
<li>City Names are case sensitive.</li>
<li>You can do a partial search on all fields. The partial search starts from left to right. For example, to search for all companies
that start with ACME, you would enter ACME and click on search.</li>
<li>Search results are not limited. If you want to limit the number of returned results, enter a number in the 'Number of Results to Return' box.</li>
</ul>
<h3>Corporate Structure Searches</h3>
Corporate Structure searches allow you to search by the Global Ultimate Parent corporation, the Domestic Parent corporation or the immediate parent. You can also limit the search results
by the parent country and/or the global ultimate country.<br></br>
<h3>Business Size Searches</h3>
The Business Size search allows you to search by number of employees, year started and sales. It also allows you to filter the results
by the geographical area. Again, City and Address are case sensitive.
<h3>Industry Code Searches</h3>
The Industry Code search allows you to search by primarily by the SIC Code. You can also filter by import/export options. It also allows you to filter the results
by the geographical area. Again, City and Address are case sensitive.
<h3>Executive Searches</h3>
The Business Size search allows you to search by an executive name, business name and country. This will search the name against the CEO and the other ten (10) listed executives.
The Executive Name is case sensitive. The Business Name is not case sensitive.

<br></br>
<h2>Viewing the Family Tree</h2>
The D&B Family Tree shows the heirarchy of the corporation. To view the Family Tree, select one of the check boxes next to the search results.
Scroll to the bottom of the page and select the Tree View button. 
<br></br><br></br><img src="../images/quickstart/TreeView.png" border="2" alt="Viewing D&B Family Tree" />
<br></br><br></br>This will open a new window which will show the number of Family Members and the Family Tree.
<br></br><br></br><img src="../images/quickstart/TreeViewResults.png" border="2" alt="D&B Family Tree Results" />

<h2>Exporting Results</h2>
When searching, you can select 'Text' as the search output. This will create a text file of the search results and will bring up a dialog box asking you to save the file.
<br></br>The text file is a 'pipe' delimited file. (i.e. 123456789|Acme|Washington DC).<br></br>
The Family Tree page also allows you to download the family tree as a text file. Click on the link on the Family Tree page to bring up the dialog box asking you to save the file.
<br></br><br></br><img src="../images/quickstart/ExportResults.png" border="2" alt="Export Results" />
<h2>Exporting to i2 Analyst Notebook</h2>
The i2 Analyst Notebook Import Specifications can be downloaded from the i2 Analyst Notebook menu option. 
<br />There are two specifications. 
<ul>
<li>The DNB_GRS specification will import the search results from any of the search pages.</li>
<li>The DNB_Tree specification will import the DNB Family Tree.</li>
</ul>
</div>
	<script src="js/jquery-1.3.2.min.js" type=text/javascript></script>
	<script src="js/nice_menus.js" type=text/javascript></script></form>
</body>
</html>