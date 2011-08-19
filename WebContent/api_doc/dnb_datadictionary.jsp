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
<a class="dnbnav" href="../index.jsp">Home</a>
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
<div class="interior_api">
<br>
<H1 class="pagetitle">About the Data</H1>

D&amp;B products and services are drawn from the world's largest database of its kind. To help ensure the accuracy and completeness of our information, we use sophisticated data collection tools and update our database over one million times a day. 
<br>
<br>
<H2 class="subpagetitle"><b>Corporate Linkage</b></H2>
Using our exclusive D-U-N-S Number we link corporate family structures to help you understand total corporate risk and opportunity with any given company. <br>
<br>Within a corporate &quot;family&quot;, headquarters, branches, parents and subsidiaries are all viewed in terms of their relationship to other members of the same &quot;family tree&quot;. Understanding these relationships can help you aggregate total risk exposures, uncover new selling opportunities, avoid conflict-of-interest situations, negotiate global purchasing agreements, perform merger and market analysis and more.  
<br>
<br>
<a name="D&B Data Dictionary"></a><b>D&amp;B Data Dictionary</b><br><br>
<table cellspacing=0  id="dnb_table" width="100%" class="mainTable">
<tr class=toprow><th scope=col>Data Field</th><th scope=col>Description</th>
</tr>
<tr><td>D-U-N-S Number</td><td>A randomly generated nine-digit number assigned by D&B to identify unique business establishments.</td></tr>
<tr><td>Business Name</td><td>The Primary or Registered name of the business.</td></tr>
<tr><td>Tradestyle Name</td><td>The Secondary Name of the business, if used.</td></tr>
<tr><td>Registered Address Indicator</td><td>When set to Y this denotes that the Address available is also the Registered Address.  This is common on global records where address details are registered with local and/or public registries.  In some cases the registered address can be the office of the solicitor registering the business name.</td></tr>
<tr><td>Street Address</td><td>The physical street location of the business.  Generally in local language.</td></tr>
<tr><td>Street Address 2</td><td>The physical address line 2 of the business.  Generally in local language.</td></tr>
<tr><td>City Name</td><td>Name of the city where the business is located.  Generally in local language.</td></tr>
<tr><td>State/Province Name</td><td>Name of the state/province where the business is located.  Generally in local language.</td></tr>
<tr><td>Country Name</td><td>Name of the country in English where the business is located.</td></tr>
<tr><td>City Code</td><td>D&B geographical code which indicates the city where the business is located.  For US records, the code is unique within COUNTY, for non-US records, the code is unique within COUNTRY.  Geographical codes provide one unique code value for various languages and/or spellings of the geographical data.  Only validated city names carry a city code, otherwise the code is blank.</td></tr>
<tr><td>County Code</td><td>D&B geographical code which indicates the county where the business is located.  Populated in US & Canada only; unique within state/province.  Zeroes if not available.</td></tr>
<tr><td>State/Province Code</td><td>D&B geographical code which indicates the state/province (aka primary subdivision) where the business is located.  Only validated state/province names carry a state/province code.  Zeroes if not available.</td></tr>
<tr><td>State/Province Abbreviation</td><td>Abbreviations for the physical state/province name where the business is located.</td></tr>
<tr><td>Country Code</td><td>D&B three-digit code which indicates the country where the business is located.  Assigned by D&B for WorldBase and other global products.</td></tr>
<tr><td>Postal Code for Street Address</td><td>Postal or zip code for the physical address location of the business.</td></tr>
<tr><td>Continent Code</td><td>D&B code which indicates the continent where the business is located.  </td></tr>
<tr><td></td><td>1 = Africa     2 = Australia/Asia      3 = Europe     </td></tr>
<tr><td></td><td>4 = Middle East     5 = South & Central America        </td></tr>
<tr><td></td><td>6 = North America</td></tr>
<tr><td>Mailing Address</td><td>Mailing location of the business (i.e. post office box)</td></tr>
<tr><td>Mailing City Name</td><td>City name used for mailing address.  Generally in local language.</td></tr>
<tr><td>Mailing County Name</td><td>Name of the county (aka secondary subdivision) where the business is located for mailing address.</td></tr>
<tr><td>Mailing State/Province Name</td><td>Name of state/province (aka primary subdivision) used for mailing address.  Generally in local language.</td></tr>
<tr><td>Mailing Country Name</td><td>Name of the country name in English where the business is located for the mailing address.  </td></tr>
<tr><td>Mailing City Code</td><td>D&B geographical code which indicates the city where the business is located for mailing address.  For US records, the code is unique within COUNTY, for non-US records, the code is unique within COUNTRY.  Geographical codes provide one unique code value for various languages and/or spellings of the geographical data.  Only validated city names carry a city code, otherwise the code is blank.</td></tr>
<tr><td>Mailing County Code</td><td>D&B geographical code which indicates the county where the business is located for mailing address.  Populated in US and Canada only; unique within state/province.  Zeros if not available.</td></tr>
<tr><td>Mailing State/Province Code</td><td>D&B geographical code which indicates the state/province where the business is located for mailing address. Only validated state/province names carry a state/province code.  Zeros if not available.</td></tr>
<tr><td>Mailing State/Province Abbreviation</td><td>Abbreviations for the state/province name where the business mailing address is located.</td></tr>
<tr><td>Mailing Country Code</td><td>D&B three-digit country code which indicates the country where the mailing address of the business is located.  Assigned by D&B for WorldBase and other global products.</td></tr>
<tr><td>Postal Code For Mailing Address</td><td>Postal or zip code for the mailing location of the business.</td></tr>
<tr><td>Mailing Continent Code</td><td>D&B code which indicates the continent of the mailing address of the business.            </td></tr>
<tr><td></td><td>1 = Africa     2 = Australia/Asia     3 = Europe</td></tr>
<tr><td></td><td>4 = Middle East     5 = South & Central America        </td></tr>
<tr><td></td><td>6 = North America</td></tr>
<tr><td>National Identification Number</td><td>Business identification number used in some countries for business registration and tax collection.  Examples include VAT Numbers, CRO numbers (UK), Siren numbers (France).  FEIN Number (US) is not included in WorldBase.</td></tr>
<tr><td>National Identification System Code</td><td>Code that identifies the type of National ID number provided; i.e. '12' = CRO, '14' = Siren.  A table listing of all acceptable code values is available.</td></tr>
<tr><td>Country Telephone Access Code</td><td>The international dialing code used to access the country phone system from outside the country.  Can be 1 to 4 digits.</td></tr>
<tr><td>Telephone Number</td><td>Telephone number for the business with no formatting or punctuation.  Lengths of telephone numbers are country specific and may vary in length within country.  The international dialing code is not included in the telephone number.</td></tr>
<tr><td>Cable Telex</td><td>The cable or telex number of the business.  Provided as entered in the local database.  No longer in use in most countries.</td></tr>
<tr><td>Fax Number</td><td>The fax number of the business.  Provided as entered in the local database with no formatting or punctuation.  Note: US does NOT supply fax number to WorldBase.</td></tr>
<tr><td>Chief Executive Officer Name</td><td>The principal with the highest ranking authority of the business at this location.</td></tr>
<tr><td>Chief Executive Officer Title</td><td>The title (in English) of the principal with the highest authority at this location.  May be abbreviated.</td></tr>
<tr><td>Line of Business</td><td>Narrative description in English of the operations or activities of the business.  Relates to the primary four-digit 1987 US SIC.</td></tr>
<tr><td>US 1987 SIC 1</td><td>The US 1987 standard industrial classification (SIC) code system categorizes business establishments based upon the type of activity done by that business at that location.  A business can have up to six SIC codes. The first-listed SIC code represents the primary operations of the business.  Then, SIC codes are assigned in descending order according to the percentage of the revenue contributed by each function of the business.  If countries collect other industry classifications (Primary Local Activity Code-position 859-866), local classifications are converted to the standard 1987 US SIC Code.  The SIC code of a parent/ultimate may include the activities of its subsidiaries.</td></tr>
<tr><td>US 1987 SIC 2</td><td>The secondary SIC code of the business.</td></tr>
<tr><td>US 1987 SIC 3</td><td>The third SIC code of the business.</td></tr>
<tr><td>US 1987 SIC 4</td><td>The fourth SIC code of the business.</td></tr>
<tr><td>US 1987 SIC 5</td><td>The fifth SIC code of the business.</td></tr>
<tr><td>US 1987 SIC 6</td><td>The sixth SIC code of the business.</td></tr>
<tr><td>Primary Local Activity Code</td><td>The local industry classification code if different from the 1987 US SIC.  Examples include 1972 US SIC, SBA, APE, and NACE.</td></tr>
<tr><td>Activity Indicator</td><td>If Primary Local Activity Code is available, this indicator identifies which activity code type is provided.  A table listing of all acceptable code values is available.  For example, '60' = 1972 US SIC.</td></tr>
<tr><td>Year Started</td><td>A four-digit numeric field representing the year that the current ownership of the business has taken control or the year established if no control change has taken place.  Not available on branch records.</td></tr>
<tr><td>Annual Sales Local</td><td>Sales value for the business in local currency.  See Currency Code-position 908-911 to determine currency provided for Sales figure.  Signed decimal field.</td></tr>
<tr><td>Annual Sales Indicator</td><td>Code value indicating the reliability Sales figure type:</td></tr>
<tr><td></td><td>'0' = actual;  '1' = low end of range;  '2' = estimated or not available if sales value = zero; '3' = modeled;  blank = not available.</td></tr>
<tr><td>Annual Sales in US dollars</td><td>Sales value for the business in US dollars.  If Sales value is collected in different local currency, local values are converted to US dollars.  Signed decimal field.</td></tr>
<tr><td></td><td>Note: Data is converted to US dollars based on the date of the financial figures/statement of the record.  If the Sales figure is from Jun-2006, the conversion rate is as of Jun-2006.  All financial figures will have a financial date in global products.</td></tr>
<tr><td>Currency Code</td><td>Code indicating which currency the financial figures data (Sales, Net Worth, Profit/Loss) is represented.  A table listing of all acceptable code values is available.  For example, '280' = Japanese Yen.</td></tr>
<tr><td>Employees Here</td><td>The number of employees at this location.</td></tr>
<tr><td>Employees Here Indicator</td><td>Code value indicating the reliability Employee Here figure type:</td></tr>
<tr><td></td><td>'0' = actual;  '1' = low end of range;  '2' = estimated or not available if employees here value is zero;  '3' = modeled;  blank = not available</td></tr>
<tr><td>Employees Total</td><td>The total number of employees in the business organization; should include subsidiary and branch locations.</td></tr>
<tr><td>Employees Total Indicator</td><td>Code value indicating the reliability Employee Total figure type:</td></tr>
<tr><td></td><td>'0' = actual;  '1' = low end of range;  '2' = estimated or not available if employees here value is zero;  '3' = modeled;  blank = not available</td></tr>
<tr><td>Include Principals Indicator</td><td>Indicates that the principals are included in the employee total figure. ('Y' = included)  Primarily available on non-US records.</td></tr>
<tr><td>Import/Export/ Agent Indicator</td><td>D&B-collected information which indicates that the business either imports materials for re-manufacture or sale, exports products to other countries, or both.</td></tr>
<tr><td></td><td>Values include:</td></tr>
<tr><td></td><td>A     Import/Export/Agent</td></tr>
<tr><td></td><td>B     Imports & Exports</td></tr>
<tr><td></td><td>C     Imports</td></tr>
<tr><td></td><td>D     Imports & Agent</td></tr>
<tr><td></td><td>E     Exports & Agent</td></tr>
<tr><td></td><td>F     Agent - keeps no inventory and does not take title goods</td></tr>
<tr><td></td><td>G     None or Not Available</td></tr>
<tr><td></td><td>H     Exports</td></tr>
<tr><td></td><td>Blank    Not available</td></tr>
<tr><td>Legal Status</td><td>D&B code that identifies the legal status/structure of the business:</td></tr>
<tr><td></td><td>Possible codes are:</td></tr>
<tr><td></td><td>blank or 0 = Not Available</td></tr>
<tr><td></td><td>3 = Corporation</td></tr>
<tr><td></td><td>8 = Joint Venture</td></tr>
<tr><td></td><td>12 = Partnership</td></tr>
<tr><td></td><td>13 = Proprietorship</td></tr>
<tr><td></td><td>120 = Foreign Company</td></tr>
<tr><td></td><td>A table listing of all acceptable code values is available.</td></tr>
<tr><td>Control Indicator</td><td>Field is currently not used.</td></tr>
<tr><td>Status Code</td><td>D&B code that provides business data of the record:</td></tr>
<tr><td></td><td>0  =   Single Location - no other entities report to the business</td></tr>
<tr><td></td><td>1   =  Headquarter/Parent - branches and/or subsidiaries report</td></tr>
<tr><td></td><td>          to the business</td></tr>
<tr><td></td><td>2   =  Branch - secondary location to a headquarter location</td></tr>
<tr><td></td><td>4   =  Division - a separate operating unit of a corporation.  A </td></tr>
<tr><td></td><td>         division may have its own name and officers, but it does </td></tr>
<tr><td></td><td>         not have stock and is not incorporated.  </td></tr>
<tr><td></td><td>Note:  The Status Code adds insight with the Subsidiary Code, position 935.  It is possible to have a Single Location status and Subsidiary code or a Headquarter status and Subsidiary code.  Blank when not available.</td></tr>
<tr><td>Subsidiary Code</td><td>D&B code which indicates whether the business is a subsidiary.</td></tr>
<tr><td></td><td>0  =  Not a subsidiary</td></tr>
<tr><td></td><td>3  =  Is a subsidiary</td></tr>
<tr><td></td><td>Populated on linked records only; otherwise blank.</td></tr>
<tr><td>Filler</td><td>Reserved for future use.</td></tr>
<tr><td>Previous D-U-N-S Number</td><td>The D-U-N-S number that was previously assigned to this business.</td></tr>
<tr><td>Report Date</td><td>The date when a complete review of all Business Information Report data was updated about the business.  The format of the field is YYYYMMDD.  Data collection methods have changed and updates are more frequent to sections of the business report.  Report Date does not reflect the age of the business data of the report.</td></tr>
<tr><td>Filler</td><td>Reserved for future use.</td></tr>
<tr><td>Headquarter/Parent D-U-N-S Number</td><td>D-U-N-S number of the Parent/Headquarter organization. Blank if not linked.</td></tr>
<tr><td>Headquarter/Parent Business Name</td><td>The primary name of the Parent/Headquarter company.  Blank if not linked.</td></tr>
<tr><td>Headquarter/Parent Street Address</td><td>Physical street address of the Parent/Headquarter company.  Blank if not linked.</td></tr>
<tr><td>Headquarter/Parents City</td><td>City where the Parent/Headquarter is located.  Blank if not linked.</td></tr>
<tr><td>Headquarter/Parent State/Province</td><td>State/province where the Parent/Headquarter is located.  Blank if not linked.</td></tr>
<tr><td>Headquarter/Parent Country Name</td><td>Name of country in English where the Parent/Headquarter is located.  Blank if not linked.</td></tr>
<tr><td>Headquarter/Parent City Code</td><td>Code of the city where the Parent/Headquarter is located.  Blank if not linked.</td></tr>
<tr><td>Headquarter/Parent County Code</td><td>Code of the county where the Parent/Headquarter is located.  Present when Parent/Headquarter is located in US or Canada.  Blank if not linked.</td></tr>
<tr><td>Headquarter/Parent State/Province Abbreviation</td><td>Abbreviated state name where Parent/Headquarter is located.  Blank if not linked.</td></tr>
<tr><td>Headquarter/Parent Country Code</td><td>D&B three-digit code for the country where the Parent/Headquarter is located.  Blank if not linked.</td></tr>
<tr><td>Headquarter/Parent Postal Code</td><td>Postal or zip code where the Parent/Headquarter is located.  Blank if not linked.</td></tr>
<tr><td>Headquarter/Parent Continent Code</td><td>D&B code for the continent where the Parent/Headquarter is located.  Blank if not linked.</td></tr>
<tr><td>Filler</td><td>Reserved for future use.</td></tr>
<tr><td>Domestic Ultimate D-U-N-S Number</td><td>D-U-N-S Number for the domestic ultimate, which is the highest family member in the same country as case business record as you walk up this 'branch' of the tree. A case may be its own domestic ultimate.</td></tr>
<tr><td>Domestic Ultimate Business Name</td><td>The primary name of the domestic ultimate business.  Blank if not linked.</td></tr>
<tr><td>Domestic Ultimate Street Address</td><td>Physical street address of the domestic ultimate company.  Blank if not linked.</td></tr>
<tr><td>Domestic Ultimate City Name</td><td>Name of the city where the domestic ultimate is located.  Blank if not linked.</td></tr>
<tr><td>Domestic Ultimate State/Province Name</td><td>Name of the state or province in which the domestic ultimate is located.  Blank if not linked.</td></tr>
<tr><td>Domestic Ultimate City Code</td><td>Code for the city where the domestic ultimate is located.  Blank if not linked.</td></tr>
<tr><td>Domestic Ultimate Country Code</td><td>Code for the country where the domestic ultimate is located.  Blank if not linked.</td></tr>
<tr><td>Domestic Ultimate State Abbreviation</td><td>Abbreviated name of the state or province in which the domestic is located.  Blank if not linked.</td></tr>
<tr><td>Domestic Ultimate Postal Code</td><td>Postal code for the city in which the domestic ultimate is located.  Blank if not linked.</td></tr>
<tr><td>Global Ultimate Indicator</td><td>If 'Y', this case is the global ultimate, otherwise 'N'.  Blank if not linked.</td></tr>
<tr><td>Filler</td><td>Reserved for future use.</td></tr>
<tr><td>Global Ultimate D-U-N-S Number</td><td>The D-U-N-S number of the upper most parent of a corporate family.  Global ultimate records carry their own case D-U-N-S number in this field so that a common sort and/or match area is available for all family members.  Blank if not linked.</td></tr>
<tr><td>Global Ultimate Business Name</td><td>Name of the ultimate company.  Blank if not linked.</td></tr>
<tr><td>Global Ultimate Street Address</td><td>Physical address of the ultimate company.  Blank if not linked.</td></tr>
<tr><td>Global Ultimate City Name</td><td>Name of the city where the ultimate company is located.  Blank if not linked.</td></tr>
<tr><td>Global Ultimate State/Province</td><td>Name of the state or province in which the ultimate company is located.  Blank if not linked.</td></tr>
<tr><td>Global Ultimate Country Name</td><td>Name of the country where the ultimate company is located.  Blank if not linked.</td></tr>
<tr><td>Global Ultimate City Code</td><td>Code for the city where the ultimate company is located.  Blank if not linked.</td></tr>
<tr><td>Global Ultimate County Code</td><td>Code for the county where the ultimate company is located.  Present when US or Canadian ultimate.  Blank if not linked.</td></tr>
<tr><td>Global Ultimate State/Province Abbreviation</td><td>Abbreviated name of the state/province where the ultimate company is located.  Blank if not linked.</td></tr>
<tr><td>Global Ultimate Country Code</td><td>Code for the country where the company is located.  Blank if not linked.</td></tr>
<tr><td>Global Ultimate Postal Code</td><td>Postal (ZIP) code of the ultimate company.  Blank if not linked.</td></tr>
<tr><td>Global Ultimate Continent Code</td><td>Code for the continent is which the ultimate company is located.  Blank if not located.</td></tr>
<tr><td>Number of Family Members</td><td>The number of family members including the global ultimate and all subsidiaries and branches of the entire family tree worldwide.  Every family member of tree carries the same count.  Blank if not linked.</td></tr>
<tr><td>DIAS Code</td><td>A code which sequences a file in order by ultimate parent name and family sequence within each group.  Blank if not linked.</td></tr>
<tr><td>Hierarchy Code</td><td>A two-position code, used in conjunction with the status and subsidiary indicators which pinpoints to the location of an establishment within a corporate hierarchy.  The hierarchy on the global ultimate is '01'.  A branch hierarchy is the same as its headquarters'. A subsidiary's hierarchy is one more than its parent's.  The code may be defined as follows:</td></tr>
<tr><td></td><td>Status     Subsidiary     Hierarchy   Description</td></tr>
<tr><td></td><td>1             0                   01                Global Ultimate</td></tr>
<tr><td></td><td>1             3                   02                Headquarters-(Sub I)</td></tr>
<tr><td></td><td>2             0                   02                Branch of Sub I</td></tr>
<tr><td></td><td>1             3                   03                Subsidiary of Sub I-(Sub II)</td></tr>
<tr><td></td><td>Blank if not linked. </td></tr>
<tr><td>First Executive Full Name</td><td>The principal with the highest ranking authority of the business at this location.</td></tr>
<tr><td>First Executive Title</td><td>The title (in English) of the principal with the highest authority at this location.  May be abbreviated.</td></tr>
<tr><td>Second Executive Full Name</td><td>Full name of second executive.</td></tr>
<tr><td>Second Executive Title</td><td>Title of second executive. May be abbreviated.</td></tr>
<tr><td>Third Executive Full Name</td><td>Full name of third executive.</td></tr>
<tr><td>Third Executive Title</td><td>Title of third executive. May be abbreviated.</td></tr>
<tr><td>Fourth Executive Full Name</td><td>Full name of fourth executive.</td></tr>
<tr><td>Fourth Executive Title</td><td>Title of fourth executive. May be abbreviated.</td></tr>
<tr><td>Fifth Executive Full Name</td><td>Full name of fifth executive.</td></tr>
<tr><td>Fifth Executive Title</td><td>Title of fifth executive. May be abbreviated.</td></tr>
<tr><td>Sixth Executive Full Name</td><td>Full name of sixth executive.</td></tr>
<tr><td>Sixth Executive Title</td><td>Title of sixth executive. May be abbreviated.</td></tr>
<tr><td>Seventh Executive Full Name</td><td>Full name of seventh executive.</td></tr>
<tr><td>Seventh Executive Title</td><td>Title of seventh executive. May be abbreviated.</td></tr>
<tr><td>Eighth Executive Full Name</td><td>Full name of eighth executive.</td></tr>
<tr><td>Eighth Executive Title</td><td>Title of eighth executive. May be abbreviated.</td></tr>
<tr><td>Ninth Executive Full Name</td><td>Full name of ninth executive.</td></tr>
<tr><td>Ninth Executive Title</td><td>Title of ninth executive. May be abbreviated.</td></tr>
<tr><td>Tenth Executive Full Name</td><td>Full name of tenth executive.</td></tr>
<tr><td>Tenth Executive Title</td><td>Title of tenth executive. May be abbreviated.</td></tr>
<tr><td>Eleventh Executive Full Name</td><td>Full name of eleventh executive.</td></tr>
<tr><td>Eleventh Executive Title</td><td>Title of eleventh executive. May be abbreviated.</td></tr>
<tr><td>Latitude</td><td>Latitude of the physical location of the business.</td></tr>
<tr><td>Longitude</td><td>Longitude of the physical location of the business.</td></tr>
<tr><td>Load Date</td><td>The date when the information was loaded into the database.</td></tr></table>
</div>

</div>
	<script src="/js/jquery-1.3.2.min.js" type=text/javascript></script>
	<script src="/js/nice_menus.js" type=text/javascript></script></form>
</body>
</html>