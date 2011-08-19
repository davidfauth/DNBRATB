<?php
session_start();
if ($_SESSION['authorized'] = false) {
    			header("Location: index.jsp");
    			exit;	
				}


#echo $_SESSION['authorized'];
?>

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
<a class="dnbnav" href="/dnb_index.jsp">Home</a>
<a class="dnbnavtwo" href="/dnb_logoff.jsp">Logoff</a>
</td></tr>
</table>
</div>
<A name=nav></A>
<div class="nav">
<DIV class="block block-block unstyled-block" id=block-block-26></DIV>
<?php
include 'includes/menu.inc';
?>

</div>
<div class="interior_nonav">

</div>
	<script src="js/jquery-1.3.2.min.js" type=text/javascript></script>
	<script src="js/nice_menus.js" type=text/javascript></script></form>
</body>
</html>