package display;

import java.util.*;
import java.sql.*;
import java.io.*;


public class DNBDisplay
{
    public static String setDNBResultHeader()
    {
        StringBuffer headerInfo = new StringBuffer();
        headerInfo.append("<head>");
        headerInfo.append("<title>Dun and Bradstreet</title>");
        headerInfo.append("<!-- noindex -->");
        headerInfo.append("<META HTTP-EQUIV=\"\" CONTENT=\"text/html;CHARSET=iso-8859-1\">");
        headerInfo.append("<META NAME=\"Author\" Content=\"OMB\">");
        headerInfo.append("<META NAME=\"rating\" CONTENT=\"General\">");
        headerInfo.append("<META NAME=\"ROBOTS\" CONTENT=\"ALL\">");
        headerInfo.append("<meta name=\"MSSmartTagsPreventParsing\" content=\"TRUE\">");
        headerInfo.append("<LINK media=all href=\"/DNB/css/style_usa.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/style.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/nice_menus_default.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/nice_menus.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<link href=\"/DNB/css/api_doc.css\" rel=\"stylesheet\" type=\"text/css\">");
        headerInfo.append("<LINK media=all href=\"/DNB/css/demo_page.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/demo_table.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/TableTools.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<script src=\"/DNB/js/jquery-1.3.2.min.js\" type=\"text/javascript\"></script>"); 
        headerInfo.append("<script src=\"/DNB/js/nice_menus.js\" type=\"text/javascript\"></script>");
        headerInfo.append("<script>var $j = jQuery.noConflict();</script> ");
        headerInfo.append("<script src=\"/DNB/js/jquery.dataTables.min.js\" type=\"text/javascript\"></script>");
        headerInfo.append("<script type=\"text/javascript\" charset=\"utf-8\" src=\"/DNB/js/ZeroClipboard.js\"></script>");
        headerInfo.append("<script type=\"text/javascript\" charset=\"utf-8\" src=\"/DNB/js/TableTools.js\"></script>\n");

        headerInfo.append("<script>");
        headerInfo.append("$j(document).ready(function() {");
        headerInfo.append("	oTable = $j('#compData').dataTable( { ");
        headerInfo.append("		\"sDom\": 'T<\"top\"fi>rt<\"bottom\"lp<\"clear\">', ");
        headerInfo.append("\"aLengthMenu\": [10, 25, 50, 100],");
        headerInfo.append("\"iDisplayLength\": 50");
        headerInfo.append("	} );");
        headerInfo.append("} );");
        headerInfo.append("</script>");
        headerInfo.append("</head>\n");
        headerInfo.append("<body>");
        headerInfo.append("<div id=\"container\">");

        headerInfo.append("<div>");
        headerInfo.append("<table id=dnb_header width=\"1000\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"masthead\">");
        headerInfo.append(" <tr> ");
        headerInfo.append("<td><img src=\"/DNB/images/dnbLogo.gif\" alt=\"DNBLogo\" border=\"0\"></td>");
        headerInfo.append("<td align=\"right\">");
        headerInfo.append("<a class=\"dnbnav\" href=\"/DNB/index.jsp\">Home</a>");
        headerInfo.append("</td>");
        headerInfo.append("</tr>");
        headerInfo.append("</table>");
        headerInfo.append("</div>\n");
        headerInfo.append(" <A name=nav></A>");
        headerInfo.append("<div class=\"nav\">");
        headerInfo.append("<DIV class=\"block block-block unstyled-block\" id=block-block-26></DIV>");
        headerInfo.append("<DIV class=nav-links>");
        headerInfo.append("<UL class=\"nice-menu nice-menu-down\" id=nice-menu-0>");
        headerInfo.append("<LI class=\"menuparent menu-path-front\" id=menu-161><A class=active title=\"Home Page\" href=\"index.jsp\">Home</A>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=\"menu-271\"><A class=active>About</a>");
        headerInfo.append("<UL>");
        headerInfo.append("<LI class=menu-path-node-134 id=menu-264><a href=\"/DNB/dnb_aboutsite.jsp\">About the Site</a></LI>");
        headerInfo.append("<LI class=menu-path-node-136 id=menu-568><a href=\"/DNB/dnb_aboutdata.jsp\">About the Data</a></LI>");
        headerInfo.append("<LI class=menu-path-node-135 id=menu-416><a href=\"/DNB/api_doc/dnb_glossary.jsp\">Glossary</a></LI>");
        headerInfo.append("</UL></LI>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>Company</a>");
        headerInfo.append("<ul>");
        headerInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/ora_grsCompany.jsp\">Company Search</a></li>");
        headerInfo.append("<li class=menu-path-node-136 id=menu-568><a href=\"/DNB/ora_grsCorporateStructure.jsp\">Corporate Structure</a></li>");
        headerInfo.append("<li class=menu-path-node-135 id=menu-416><a href=\"/DNB/ora_grsBusinessSize.jsp\">Size of Corporation</a></li>");
        headerInfo.append("<li class=menu-path-node-133 id=menu-414><a href=\"/DNB/ora_grsSICSearch.jsp\">Search by Industry Sector</a></li>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>Executive</a>");
        headerInfo.append("<ul>");
        headerInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/ora_executive_search.jsp\">Executive Search</a></li>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>i2 Import</a>");
        headerInfo.append("<ul>");
        headerInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/i2_import_spec.jsp\">i2 Import Specification</a></li>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("<LI  class=\"menuparent menu-path-node-134\" id=menu-264><A title=\"API\" href=\"api_doc.jsp\">API</A>");
        headerInfo.append("<ul>");
        headerInfo.append(" <li  class=menu-path-node-74 id=menu-264><a href=\"/DNB/api_doc.jsp\">API</a></li>");
        headerInfo.append("<LI class=menu-path-node-135 id=menu-416><a href=\"/DNB/api_doc/dnb_datadictionary.jsp\">Data Dictionary</a></LI>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>Help</a>");
        headerInfo.append("<ul>");
        headerInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/help/faq.jsp\">FAQ</a></li>");
        headerInfo.append("<li class=menu-path-node-135 id=menu-414><a href=\"/DNB/help/quickstart.jsp\">Quick Start</a></li>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("</div>");               
        headerInfo.append("<div class=\"interior_nonav\">");
        headerInfo.append("<h1>Search Results</h1><form action=\"/DNB/showCorporateLinks\" method=\"post\" name=\"mapThisForm\" target=\"_blank\"><table cellspacing=1 id=\"compData\" class=\"display\"> <thead><tr><th>View</th><th></th><th>Company Name</th> <th>Tradestyle</th>");
        headerInfo.append("<th>D-U-N-S</th> <th>SIC Code</th> <th>Line of Bus</th> <th>City,State Zip</th> <th>Country</th> <th>Global Ult Parent</th><th>Global Ult Country</th> <th>Employees</th><th>All Executives</th></tr> </thead> <tbody>"); 
 
        
       return headerInfo.toString();
    }   
    
    public static String setDNBMenu()
    {
        StringBuffer menuInfo = new StringBuffer();
 
        menuInfo.append("<DIV class=nav-links>");
        menuInfo.append("<UL class=\"nice-menu nice-menu-down\" id=nice-menu-0>");
        menuInfo.append("<LI class=\"menuparent menu-path-front\" id=menu-161><A class=active title=\"Home Page\" href=\"index.jsp\">Home</A>");
        menuInfo.append("<LI class=\"menuparent menu-path-node-134\" id=\"menu-271\"><A class=active>About</a>");
        menuInfo.append("<UL>");
        menuInfo.append("<LI class=menu-path-node-134 id=menu-264><a href=\"/DNB/dnb_aboutsite.jsp\">About the Site</a></LI>");
        menuInfo.append("<LI class=menu-path-node-136 id=menu-568><a href=\"/DNB/dnb_aboutdata.jsp\">About the Data</a></LI>");
        menuInfo.append("<LI class=menu-path-node-135 id=menu-416><a href=\"/DNB/api_doc/dnb_glossary.jsp\">Glossary</a></LI>");
        menuInfo.append("</UL></LI>");
        menuInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>Company</a>");
        menuInfo.append("<ul>");
        menuInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/ora_grsCompany.jsp\">Company Search</a></li>");
        menuInfo.append("<li class=menu-path-node-136 id=menu-568><a href=\"/DNB/ora_grsCorporateStructure.jsp\">Corporate Structure</a></li>");
        menuInfo.append("<li class=menu-path-node-135 id=menu-416><a href=\"/DNB/ora_grsBusinessSize.jsp\">Size of Corporation</a></li>");
        menuInfo.append("<li class=menu-path-node-133 id=menu-414><a href=\"/DNB/ora_grsSICSearch.jsp\">Search by Industry Sector</a></li>");
        menuInfo.append("</ul></LI>");
        menuInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>Executive</a>");
        menuInfo.append("<ul>");
        menuInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/ora_executive_search.jsp\">Executive Search</a></li>");
        menuInfo.append("</ul></LI>");
        menuInfo.append("<LI  class=\"menuparent menu-path-node-134\" id=menu-264><A title=\"API\" href=\"api_doc.jsp\">API</A>");
        menuInfo.append("<ul>");
        menuInfo.append(" <li  class=menu-path-node-74 id=menu-264><a href=\"/DNB/api_doc.jsp\">API</a></li>");
        menuInfo.append("<LI class=menu-path-node-135 id=menu-416><a href=\"/DNB/api_doc/dnb_datadictionary.jsp\">Data Dictionary</a></LI>");
        menuInfo.append("</ul></LI>");
        menuInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>Help</a>");
        menuInfo.append("<ul>");
        menuInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/help/faq.jsp\">FAQ</a></li>");
        menuInfo.append("<li class=menu-path-node-135 id=menu-414><a href=\"/DNB/help/quickstart.jsp\">Quick Start</a></li>");
        menuInfo.append("</ul></LI>");
        menuInfo.append("</div>");       
       return menuInfo.toString();
    }    
    
    public static String setDNBReportHeader()
    {
        StringBuffer headerInfo = new StringBuffer();
        headerInfo.append("<head>");
        headerInfo.append("<title>Dun and Bradstreet</title>");
        headerInfo.append("<!-- noindex -->");
        headerInfo.append("<META HTTP-EQUIV=\"\" CONTENT=\"text/html;CHARSET=iso-8859-1\">");
        headerInfo.append("<META NAME=\"Author\" Content=\"OMB\">");
        headerInfo.append("<META NAME=\"rating\" CONTENT=\"General\">");
        headerInfo.append("<META NAME=\"ROBOTS\" CONTENT=\"ALL\">");
        headerInfo.append("<meta name=\"MSSmartTagsPreventParsing\" content=\"TRUE\">");
        headerInfo.append("<LINK media=all href=\"/DNB/css/style_usa.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/style.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/nice_menus_default.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/nice_menus.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<link href=\"/DNB/css/api_doc.css\" rel=\"stylesheet\" type=\"text/css\">");
        headerInfo.append("<LINK media=all href=\"/DNB/css/demo_page.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/demo_table.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/TableTools.css\" type=text/css rel=stylesheet>");
       headerInfo.append("<script src=\"/DNB/js/jquery-1.3.2.min.js\" type=\"text/javascript\"></script>"); 
        headerInfo.append("<script src=\"/DNB/js/nice_menus.js\" type=\"text/javascript\"></script>");
        headerInfo.append("<script>var $j = jQuery.noConflict();</script> ");
        headerInfo.append("<script src=\"/DNB/js/jquery.dataTables.min.js\" type=\"text/javascript\"></script>");
        headerInfo.append("<script type=\"text/javascript\" charset=\"utf-8\" src=\"/DNB/js/ZeroClipboard.js\"></script>");
        headerInfo.append("<script type=\"text/javascript\" charset=\"utf-8\" src=\"/DNB/js/TableTools.js\"></script>\n");

        headerInfo.append("<script>");
        headerInfo.append("$j(document).ready(function() {");
        headerInfo.append("	oTable = $j('#compData').dataTable( { ");
        headerInfo.append("		\"sDom\": 'T<\"top\"fi>rt<\"bottom\"lp<\"clear\">' ");
        headerInfo.append("	} );");

        headerInfo.append("} );");
        headerInfo.append("</script>");
        headerInfo.append("</head>\n");
        headerInfo.append("<body>");
        headerInfo.append("<div id=\"container\">");

        headerInfo.append("<div>");
        headerInfo.append("<table id=dnb_header width=\"1000\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"masthead\">");
        headerInfo.append(" <tr> ");
        headerInfo.append("<td><img src=\"/DNB/images/dnbLogo.gif\" alt=\"DNBLogo\" border=\"0\"></td>");
        headerInfo.append("<td align=\"right\">");
        headerInfo.append("<a class=\"dnbnav\" href=\"/DNB/index.jsp\">Home</a>");
        headerInfo.append("</td>");
        headerInfo.append("</tr>");
        headerInfo.append("</table>");
        headerInfo.append("</div>\n");
        headerInfo.append(" <A name=nav></A>");
        headerInfo.append("<div class=\"nav\">");
        headerInfo.append("<DIV class=\"block block-block unstyled-block\" id=block-block-26></DIV>");
        headerInfo.append("<DIV class=nav-links>");
        headerInfo.append("<UL class=\"nice-menu nice-menu-down\" id=nice-menu-0>");
        headerInfo.append("<LI class=\"menuparent menu-path-front\" id=menu-161><A class=active title=\"Home Page\" href=\"index.jsp\">Home</A>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=\"menu-271\"><A class=active>About</a>");
        headerInfo.append("<UL>");
        headerInfo.append("<LI class=menu-path-node-134 id=menu-264><a href=\"/DNB/dnb_aboutsite.jsp\">About the Site</a></LI>");
        headerInfo.append("<LI class=menu-path-node-136 id=menu-568><a href=\"/DNB/dnb_aboutdata.jsp\">About the Data</a></LI>");
        headerInfo.append("<LI class=menu-path-node-135 id=menu-416><a href=\"/DNB/api_doc/dnb_glossary.jsp\">Glossary</a></LI>");
        headerInfo.append("</UL></LI>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>Company</a>");
        headerInfo.append("<ul>");
        headerInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/ora_grsCompany.jsp\">Company Search</a></li>");
        headerInfo.append("<li class=menu-path-node-136 id=menu-568><a href=\"/DNB/ora_grsCorporateStructure.jsp\">Corporate Structure</a></li>");
        headerInfo.append("<li class=menu-path-node-135 id=menu-416><a href=\"/DNB/ora_grsBusinessSize.jsp\">Size of Corporation</a></li>");
        headerInfo.append("<li class=menu-path-node-133 id=menu-414><a href=\"/DNB/ora_grsSICSearch.jsp\">Search by Industry Sector</a></li>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>Executive</a>");
        headerInfo.append("<ul>");
        headerInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/ora_executive_search.jsp\">Executive Search</a></li>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("<LI  class=\"menuparent menu-path-node-134\" id=menu-264><A title=\"API\" href=\"api_doc.jsp\">API</A>");
        headerInfo.append("<ul>");
        headerInfo.append(" <li  class=menu-path-node-74 id=menu-264><a href=\"/DNB/api_doc.jsp\">API</a></li>");
        headerInfo.append("<LI class=menu-path-node-135 id=menu-416><a href=\"/DNB/api_doc/dnb_datadictionary.jsp\">Data Dictionary</a></LI>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>Help</a>");
        headerInfo.append("<ul>");
        headerInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/help/faq.jsp\">FAQ</a></li>");
        headerInfo.append("<li class=menu-path-node-135 id=menu-414><a href=\"/DNB/help/quickstart.jsp\">Quick Start</a></li>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("</UL>");
        headerInfo.append("</div>");               
        headerInfo.append("<div class=\"interior_nonav\">");
 
        
       return headerInfo.toString();
    }   
    
    public static String setDNBTreeHeader()
    {
        StringBuffer headerInfo = new StringBuffer();
        headerInfo.append("<head>");
        headerInfo.append("<title>Dun and Bradstreet</title>");
        headerInfo.append("<!-- noindex -->");
        headerInfo.append("<META HTTP-EQUIV=\"\" CONTENT=\"text/html;CHARSET=iso-8859-1\">");
        headerInfo.append("<META NAME=\"Author\" Content=\"OMB\">");
        headerInfo.append("<META NAME=\"rating\" CONTENT=\"General\">");
        headerInfo.append("<META NAME=\"ROBOTS\" CONTENT=\"ALL\">");
        headerInfo.append("<meta name=\"MSSmartTagsPreventParsing\" content=\"TRUE\">");
        headerInfo.append("<LINK media=all href=\"/DNB/css/style_usa.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/style.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/nice_menus_default.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<LINK media=all href=\"/DNB/css/nice_menus.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<link href=\"/DNB/css/api_doc.css\" rel=\"stylesheet\" type=\"text/css\">");
        headerInfo.append("<LINK media=all href=\"/DNB/css/jquery.treeview.css\" type=text/css rel=stylesheet>");
        headerInfo.append("<script src=\"/DNB/js/jquery-1.3.2.min.js\" type=\"text/javascript\"></script>"); 
        headerInfo.append("<script src=\"/DNB/js/nice_menus.js\" type=\"text/javascript\"></script>");
        headerInfo.append("<script src=\"/DNB/js/jquery.treeview.min.js\" type=\"text/javascript\"></script>");
        headerInfo.append("<script>var $j = jQuery.noConflict();</script> ");
        headerInfo.append("<script src=\"/DNB/js/jquery.dataTables.min.js\" type=\"text/javascript\"></script>");

        headerInfo.append("<script>");
        headerInfo.append("$j(document).ready(function() {");
        headerInfo.append("$j(\"#tree\").treeview({");
        headerInfo.append("	collapsed: true, ");
        headerInfo.append(" animated: \"medium\",");
        headerInfo.append("control:\"#sidetreecontrol\",");
        headerInfo.append("persist: \"location\"");
        headerInfo.append("	} );");
        headerInfo.append("} )");
        headerInfo.append("</script>");
        headerInfo.append("</head>\n");
        headerInfo.append("<body>");
        headerInfo.append("<div id=\"container\">");

        headerInfo.append("<div>");
        headerInfo.append("<table id=dnb_header width=\"1000\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"masthead\">");
        headerInfo.append(" <tr> ");
        headerInfo.append("<td><img src=\"/DNB/images/dnbLogo.gif\" alt=\"DNBLogo\" border=\"0\"></td>");
        headerInfo.append("<td align=\"right\">");
        headerInfo.append("<a class=\"dnbnav\" href=\"/DNB/index.jsp\">Home</a>");
        headerInfo.append("</td>");
        headerInfo.append("</tr>");
        headerInfo.append("</table>");
        headerInfo.append("</div>\n");
        headerInfo.append(" <A name=nav></A>");
        headerInfo.append("<div class=\"nav\">");
        headerInfo.append("<DIV class=\"block block-block unstyled-block\" id=block-block-26></DIV>");
        headerInfo.append("<DIV class=nav-links>");
        headerInfo.append("<UL class=\"nice-menu nice-menu-down\" id=nice-menu-0>");
        headerInfo.append("<LI class=\"menuparent menu-path-front\" id=menu-161><A class=active title=\"Home Page\" href=\"index.jsp\">Home</A>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=\"menu-271\"><A class=active>About</a>");
        headerInfo.append("<UL>");
        headerInfo.append("<LI class=menu-path-node-134 id=menu-264><a href=\"/DNB/dnb_aboutsite.jsp\">About the Site</a></LI>");
        headerInfo.append("<LI class=menu-path-node-136 id=menu-568><a href=\"/DNB/dnb_aboutdata.jsp\">About the Data</a></LI>");
        headerInfo.append("<LI class=menu-path-node-135 id=menu-416><a href=\"/DNB/api_doc/dnb_glossary.jsp\">Glossary</a></LI>");
        headerInfo.append("</UL></LI>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>Company</a>");
        headerInfo.append("<ul>");
        headerInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/ora_grsCompany.jsp\">Company Search</a></li>");
        headerInfo.append("<li class=menu-path-node-136 id=menu-568><a href=\"/DNB/ora_grsCorporateStructure.jsp\">Corporate Structure</a></li>");
        headerInfo.append("<li class=menu-path-node-135 id=menu-416><a href=\"/DNB/ora_grsBusinessSize.jsp\">Size of Corporation</a></li>");
        headerInfo.append("<li class=menu-path-node-133 id=menu-414><a href=\"/DNB/ora_grsSICSearch.jsp\">Search by Industry Sector</a></li>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>Executive</a>");
        headerInfo.append("<ul>");
        headerInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/ora_executive_search.jsp\">Executive Search</a></li>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("<LI  class=\"menuparent menu-path-node-134\" id=menu-264><A title=\"API\" href=\"api_doc.jsp\">API</A>");
        headerInfo.append("<ul>");
        headerInfo.append(" <li  class=menu-path-node-74 id=menu-264><a href=\"/DNB/api_doc.jsp\">API</a></li>");
        headerInfo.append("<LI class=menu-path-node-135 id=menu-416><a href=\"/DNB/api_doc/dnb_datadictionary.jsp\">Data Dictionary</a></LI>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("<LI class=\"menuparent menu-path-node-134\" id=menu-271><A class=active>Help</a>");
        headerInfo.append("<ul>");
        headerInfo.append("<li class=menu-path-node-134 id=menu-264><a href=\"/DNB/help/faq.jsp\">FAQ</a></li>");
        headerInfo.append("<li class=menu-path-node-135 id=menu-414><a href=\"/DNB/help/quickstart.jsp\">Quick Start</a></li>");
        headerInfo.append("</ul></LI>");
        headerInfo.append("</div>");               
        headerInfo.append("<div class=\"interior_nonav\">");
        headerInfo.append("<div class=\"treeheader\">&nbsp;</div>");
        headerInfo.append("<div id=\"sidetreecontrol\"><a href=\"?#\">Collapse All</a> | <a href=\"?#\">Expand All</a></div>");
        headerInfo.append("<ul id=\"tree\">");
        
       return headerInfo.toString();
    }   
    
    public static String setDNBFlashGraph()
    {
        StringBuffer headerInfo = new StringBuffer();
 
        headerInfo.append("<script language=\"JavaScript\" type=\"text/javascript\">");
        headerInfo.append("<!--");

        headerInfo.append("// -----------------------------------------------------------------------------");
        headerInfo.append("// Globals");
        headerInfo.append("// Major version of Flash required");
        headerInfo.append("var requiredMajorVersion = 9;");
        headerInfo.append("// Minor version of Flash required");
        headerInfo.append("var requiredMinorVersion = 0;");
        headerInfo.append("// Minor version of Flash required");
        headerInfo.append("var requiredRevision = 124;");
        headerInfo.append("// -----------------------------------------------------------------------------");

        headerInfo.append("// Version check for the Flash Player that has the ability to start Player Product Install (6.0r65)");
        headerInfo.append("var hasProductInstall = swfobject.hasFlashPlayerVersion(\"6.0.65\");");

        headerInfo.append("// Version check based upon the values defined in globals");
        headerInfo.append("var hasRequestedVersion = swfobject.hasFlashPlayerVersion(\"9.0.124\");");

        headerInfo.append("if ( hasProductInstall && !hasRequestedVersion ) {");
        headerInfo.append("	// DO NOT MODIFY THE FOLLOWING FOUR LINES");
        headerInfo.append("	// Location visited after installation is complete if installation is required");
        headerInfo.append("var MMPlayerType = (isIE == true) ? \"ActiveX\" : \"PlugIn\";");
        headerInfo.append("var MMredirectURL = window.location;");
        headerInfo.append("document.title = document.title.slice(0, 47) + \" - Flash Player Installation\";");
        headerInfo.append("var MMdoctitle = document.title;");

        headerInfo.append("	AC_FL_RunContent( ");
        headerInfo.append("		\"src\", \"playerProductInstall\", ");
        headerInfo.append("		\"FlashVars\", \"MMredirectURL=\"+MMredirectURL+'&MMplayerType='+MMPlayerType+'&MMdoctitle='+MMdoctitle+\"\", ");
        headerInfo.append("	\"width\", \"100%\",  ");
        headerInfo.append("	\"height\", \"100%\", ");
        headerInfo.append("	\"align\", \"middle\", ");
        headerInfo.append("	\"id\", \"flashgraph\", ");
        headerInfo.append("	\"quality\", \"high\", ");
        headerInfo.append("	\"bgcolor\", \"#869ca7\", ");
        headerInfo.append("	\"name\", \"flashgraph\", ");
        headerInfo.append("	\"allowScriptAccess\",\"sameDomain\", ");
        headerInfo.append("	\"type\", \"application/x-shockwave-flash\", ");
        headerInfo.append("	\"pluginspage\", \"http://www.adobe.com/go/getflashplayer\" ");
        headerInfo.append("	); ");
        headerInfo.append("	} else if (hasRequestedVersion) { ");

        headerInfo.append("        var fn = function() { ");
        headerInfo.append("var att = { data:\"flashgraph.swf?xml_file_name=grsGraphData?duns=<?php echo$dunsnbrs ?>\", width:\"780\", height:\"800\" }; ");
        headerInfo.append("var par = { flashvars:\"backgroundcolor=999999&textcolor=0x202020\" }; ");
        headerInfo.append("var id = \"replaceMe\"; ");
        headerInfo.append("var myObject = swfobject.createSWF(att, par, id); ");
        headerInfo.append("}; ");
        headerInfo.append("swfobject.addDomLoadEvent(fn); ");

        headerInfo.append("// if we've detected an acceptable version ");
        headerInfo.append("// embed the Flash Content SWF when all tests are passed ");

           
        headerInfo.append("} else {  // flash is too old or we can't detect the plugin ");
        headerInfo.append("var alternateContent = 'To see the graph, you need to install Flash. ' ");
        headerInfo.append("+ '<a href=http://www.adobe.com/go/getflash/>Get Flash</a>'; ");
        headerInfo.append("document.write(alternateContent);  // insert non-flash content ");
        headerInfo.append("} ");

        headerInfo.append("function onGraphItemDoubleClicked(nodeid) ");
        headerInfo.append("{ ");
        	headerInfo.append("<?php");
        	headerInfo.append("print \"window.parent.location.href = 'http://apps.intelliwaresystems.com/dnbComp/dnbComp.php?duns_number='+nodeid+'&detail=3&datatype=html';\"; ");
        	headerInfo.append("?> ");

        headerInfo.append("} ");

        headerInfo.append("function onXMLSaved(output) ");
        headerInfo.append("{");
        headerInfo.append("var form = document.getElementById(\"fileform\"); ");
        headerInfo.append("var filedata = document.getElementById(\"filedata\"); ");
        headerInfo.append("var filename = document.getElementById(\"filename\"); ");
        headerInfo.append("var filetype = document.getElementById(\"filetype\"); ");
        headerInfo.append("var fileencoded = document.getElementById(\"fileencoded\"); ");

        headerInfo.append("filedata.setAttribute(\"value\", output); ");
        headerInfo.append("filename.setAttribute(\"value\", \"saved_graph.xml\"); ");
        headerInfo.append("filetype.setAttribute(\"value\", \"text/xml\"); ");
        headerInfo.append("fileencoded.setAttribute(\"value\", \"false\"); ");
        headerInfo.append("form.submit(); ");
        headerInfo.append("        } ");
        headerInfo.append("        // --> ");
        headerInfo.append("</script> ");


        headerInfo.append("	<noscript> ");
        headerInfo.append("	<object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" ");
        headerInfo.append("	id=\"flashgraph\" width=\"100%\" height=\"100%\" ");
        headerInfo.append("	codebase=\"http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab\">");
        headerInfo.append("	<param name=\"movie\" value=\"flashgraph.swf\" />");
        headerInfo.append("	<param name=\"quality\" value=\"high\" />");
        headerInfo.append("	<param name=\"bgcolor\" value=\"#e0e0e0\" />");
        headerInfo.append("	<param name=\"allowScriptAccess\" value=\"all\" />");
        headerInfo.append("	<embed src=\"flashgraph.swf?xml_file_name=ora_grsGraphData.jsp?duns=<?php echo$dunsnbrs ?>&backgroundcolor=999999&textcolor=0x202020\" width=\"800\" height=\"600\"> ");
        headerInfo.append("	</embed> ");

        headerInfo.append("	</object> ");
        headerInfo.append("	</noscript> ");
        headerInfo.append("	<div id=\"replaceMe\"></div> ");
        headerInfo.append("	</div> ");
        
        
        return headerInfo.toString();
    }   
    
    
}