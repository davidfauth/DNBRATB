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
<LINK media=all href="css/style_usa.css" type=text/css rel=stylesheet>
<LINK media=all href="css/style.css" type=text/css rel=stylesheet>
<LINK media=all href="css/nice_menus_default.css" type=text/css rel=stylesheet>
<LINK media=all href="css/nice_menus.css" type=text/css rel=stylesheet>
<LINK media=all href="css/api_doc.css" type=text/css rel=stylesheet>
	  
<script>

function wopen(url, name, w, h)
{

w += 32;
h += 96;
 var win = window.open(url,
  name,
  'width=' + w + ', height=' + h + ', ' +
  'location=no, menubar=no, ' +
  'status=no, toolbar=no, scrollbars=yes, resizable=yes');
 win.resizeTo(w, h);
 win.focus();
}

</script> 
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

<div id="wrapper">

<label id="form_search_label">Company Information</label>
<form class="jNice" action="CompanySearch" method="post" name="f" id="form1">
<table width="400" border="0" cellpadding="3" cellspacing="0">
  <tr><td align="right"><label id="home_search_q">D-U-N-S&reg;</label></td><td><input type="text" id="dunsnbr" name="dunsnbr" tabindex="1" value="" title="duns nbr"></td></tr>
<!--<tr><td align="right"><label id="home_search_q">National Identification</label></td><td><input type="text" value="" id="national_id" name="national_id" tabindex="2"/></td></tr>
-->
<tr><td align="right"><label id="home_search_q">Business Name</label></td><td><input type="text" value="" id="tags" name="companyname" tabindex="3"/></td></tr>
<tr><td colspan=2><br><br></td></tr>
<tr><td align="right"><label id="home_search_q">Address</label></td><td><input type="text" id="address" name="address" tabindex="4" value="" title="address"></td></tr>
<tr><td align="right"><label id="home_search_q">City</label></td><td><input type="text" id="city" name="city" tabindex="5" value="" title="city"></td></tr>
<tr><td align="right"><label id="home_search_q">Postcode / Zip Code</label></td><td><input type="text" id="zip" name="zip" tabindex="6" value="" title="zip"></td></tr>
<!--
<tr><td align="right"><label id="home_search_q">State</label></td><td><select name="statelist" tabindex="7">
	<option value=""></option>
	<option value="AK">AK</option>
	<option value="AL">AL</option>
	<option value="AR">AR</option>
	<option value="AZ">AZ</option>
	<option value="CA">CA</option>
	<option value="CO">CO</option>
	<option value="CT">CT</option>
	<option value="DC">DC</option>
	<option value="DE">DE</option>
	<option value="FL">FL</option>
	<option value="GA">GA</option>
	<option value="HI">HI</option>
	<option value="IA">IA</option>
	<option value="ID">ID</option>
	<option value="IL">IL</option>
	<option value="IN">IN</option>
	<option value="KS">KS</option>
	<option value="KY">KY</option>
	<option value="LA">LA</option>
	<option value="MA">MA</option>
	<option value="MD">MD</option>
	<option value="ME">ME</option>
	<option value="MI">MI</option>
	<option value="MN">MN</option>
	<option value="MO">MO</option>
	<option value="MS">MS</option>
	<option value="MT">MT</option>
	<option value="NC">NC</option>
	<option value="ND">ND</option>
	<option value="NE">NE</option>
	<option value="NH">NH</option>
	<option value="NJ">NJ</option>
	<option value="NM">NM</option>
	<option value="NV">NV</option>
	<option value="NY">NY</option>
	<option value="OH">OH</option>
	<option value="OK">OK</option>
	<option value="OR">OR</option>
	<option value="PA">PA</option>
	<option value="RI">RI</option>
	<option value="SC">SC</option>
	<option value="SD">SD</option>
	<option value="TN">TN</option>
	<option value="TX">TX</option>
	<option value="UT">UT</option>
	<option value="VA">VA</option>
	<option value="VT">VT</option>
	<option value="WA">WA</option>
	<option value="WI">WI</option>
	<option value="WV">WV</option>
	<option value="WY">WY</option>

</select></td></tr> -->
<tr><td align="right"><label id="home_search_q">Country</label></td><td><select name="country" tabindex="8">
	<option value=""></option>
<option value="ADMIRALTY ISLANDS">ADMIRALTY ISLANDS</option>
<option value="AFGHANISTAN">AFGHANISTAN</option>
<option value="ALBANIA">ALBANIA</option>
<option value="ALGERIA">ALGERIA</option>
<option value="AMERICAN SAMOA">AMERICAN SAMOA</option>
<option value="ANDORRA">ANDORRA</option>
<option value="ANGOLA">ANGOLA</option>
<option value="ANGUILLA">ANGUILLA</option>
<option value="ANTIGUA & BARBUDA">ANTIGUA & BARBUDA</option>
<option value="ARGENTINA">ARGENTINA</option>
<option value="ARMENIA">ARMENIA</option>
<option value="ARUBA">ARUBA</option>
<option value="AUSTRALIA">AUSTRALIA</option>
<option value="AUSTRIA">AUSTRIA</option>
<option value="AZERBAIJAN">AZERBAIJAN</option>
<option value="BAHAMAS">BAHAMAS</option>
<option value="BAHRAIN">BAHRAIN</option>
<option value="BANGLADESH">BANGLADESH</option>
<option value="BARBADOS">BARBADOS</option>
<option value="BELARUS">BELARUS</option>
<option value="BELGIUM">BELGIUM</option>
<option value="BELIZE">BELIZE</option>
<option value="BENIN">BENIN</option>
<option value="BERMUDA">BERMUDA</option>
<option value="BHUTAN">BHUTAN</option>
<option value="BOLIVIA">BOLIVIA</option>
<option value="BOSNIA-HERZEGOVINA">BOSNIA-HERZEGOVINA</option>
<option value="BOTSWANA">BOTSWANA</option>
<option value="BRAZIL">BRAZIL</option>
<option value="BRUNEI">BRUNEI</option>
<option value="BULGARIA">BULGARIA</option>
<option value="BURKINA FASO">BURKINA FASO</option>
<option value="BURUNDI">BURUNDI</option>
<option value="CAMBODIA">CAMBODIA</option>
<option value="CAMEROON">CAMEROON</option>
<option value="CANADA">CANADA</option>
<option value="CAPE VERDE">CAPE VERDE</option>
<option value="CAROLINE ISLANDS">CAROLINE ISLANDS</option>
<option value="CAYMAN ISLANDS">CAYMAN ISLANDS</option>
<option value="CENTRAL AFRICAN REP">CENTRAL AFRICAN REP</option>
<option value="CHAD">CHAD</option>
<option value="CHILE">CHILE</option>
<option value="CHINA">CHINA</option>
<option value="CHRISTMAS ISLAND">CHRISTMAS ISLAND</option>
<option value="COLOMBIA">COLOMBIA</option>
<option value="COMOROS">COMOROS</option>
<option value="CONGO">CONGO</option>
<option value="CONGO DEMOCRATIC REP">CONGO DEMOCRATIC REP</option>
<option value="COOK ISLANDS">COOK ISLANDS</option>
<option value="COSTA RICA">COSTA RICA</option>
<option value="CROATIA">CROATIA</option>
<option value="CYPRUS">CYPRUS</option>
<option value="CZECH REPUBLIC">CZECH REPUBLIC</option>
<option value="DENMARK">DENMARK</option>
<option value="DJIBOUTI">DJIBOUTI</option>
<option value="DOMINICA">DOMINICA</option>
<option value="DOMINICAN REPUBLIC">DOMINICAN REPUBLIC</option>
<option value="ECUADOR">ECUADOR</option>
<option value="EGYPT">EGYPT</option>
<option value="EL SALVADOR">EL SALVADOR</option>
<option value="ENGLAND">ENGLAND</option>
<option value="EQUATORIAL GUINEA">EQUATORIAL GUINEA</option>
<option value="ERITREA">ERITREA</option>
<option value="ESTONIA">ESTONIA</option>
<option value="ETHIOPIA">ETHIOPIA</option>
<option value="FALKLAND ISLANDS">FALKLAND ISLANDS</option>
<option value="FAROE ISLANDS">FAROE ISLANDS</option>
<option value="FEDERATED STATES OF">FEDERATED STATES OF</option>
<option value="FIJI">FIJI</option>
<option value="FINLAND">FINLAND</option>
<option value="FRANCE">FRANCE</option>
<option value="FRENCH GUIANA">FRENCH GUIANA</option>
<option value="FRENCH POLYNESIA">FRENCH POLYNESIA</option>
<option value="GABON">GABON</option>
<option value="GAMBIA">GAMBIA</option>
<option value="GEORGIA">GEORGIA</option>
<option value="GERMANY">GERMANY</option>
<option value="GHANA">GHANA</option>
<option value="GIBRALTAR">GIBRALTAR</option>
<option value="GREECE">GREECE</option>
<option value="GREENLAND">GREENLAND</option>
<option value="GRENADA">GRENADA</option>
<option value="GUADELOUPE">GUADELOUPE</option>
<option value="GUAM">GUAM</option>
<option value="GUATEMALA">GUATEMALA</option>
<option value="GUINEA">GUINEA</option>
<option value="GUINEA-BISSAU">GUINEA-BISSAU</option>
<option value="GUYANA">GUYANA</option>
<option value="HAITI">HAITI</option>
<option value="HONDURAS">HONDURAS</option>
<option value="HONG KONG">HONG KONG</option>
<option value="HUNGARY">HUNGARY</option>
<option value="ICELAND">ICELAND</option>
<option value="INDIA">INDIA</option>
<option value="INDONESIA">INDONESIA</option>
<option value="IRAN">IRAN</option>
<option value="IRAQ">IRAQ</option>
<option value="IRELAND">IRELAND</option>
<option value="ISRAEL">ISRAEL</option>
<option value="ITALY">ITALY</option>
<option value="IVORY COAST">IVORY COAST</option>
<option value="JAMAICA">JAMAICA</option>
<option value="JAPAN">JAPAN</option>
<option value="JORDAN">JORDAN</option>
<option value="KAZAKHSTAN">KAZAKHSTAN</option>
<option value="KENYA">KENYA</option>
<option value="KIRGHIZIA">KIRGHIZIA</option>
<option value="KIRIBATI">KIRIBATI</option>
<option value="KOREA REP OF">KOREA REP OF</option>
<option value="KUWAIT">KUWAIT</option>
<option value="LAOS">LAOS</option>
<option value="LATVIA">LATVIA</option>
<option value="LEBANON">LEBANON</option>
<option value="LESOTHO">LESOTHO</option>
<option value="LIBERIA">LIBERIA</option>
<option value="LIBYA">LIBYA</option>
<option value="LIECHTENSTEIN">LIECHTENSTEIN</option>
<option value="LITHUANIA">LITHUANIA</option>
<option value="LUXEMBOURG">LUXEMBOURG</option>
<option value="MACAO">MACAO</option>
<option value="MACEDONIA">MACEDONIA</option>
<option value="MADAGASCAR">MADAGASCAR</option>
<option value="MALAWI">MALAWI</option>
<option value="MALAYSIA">MALAYSIA</option>
<option value="MALDIVES">MALDIVES</option>
<option value="MALI">MALI</option>
<option value="MALTA">MALTA</option>
<option value="MARSHALL ISLANDS">MARSHALL ISLANDS</option>
<option value="MARTINIQUE">MARTINIQUE</option>
<option value="MAURITANIA">MAURITANIA</option>
<option value="MAURITIUS">MAURITIUS</option>
<option value="MEXICO">MEXICO</option>
<option value="MICRONESIA FED ST">MICRONESIA FED ST</option>
<option value="MIDWAY ISLAND">MIDWAY ISLAND</option>
<option value="MOLDOVA">MOLDOVA</option>
<option value="MONACO">MONACO</option>
<option value="MONTSERRAT">MONTSERRAT</option>
<option value="MOROCCO">MOROCCO</option>
<option value="MOZAMBIQUE">MOZAMBIQUE</option>
<option value="MYANMAR">MYANMAR</option>
<option value="NAMIBIA">NAMIBIA</option>
<option value="NAURU">NAURU</option>
<option value="NEPAL">NEPAL</option>
<option value="NETHERLANDS">NETHERLANDS</option>
<option value="NETHERLANDS ANTILLES">NETHERLANDS ANTILLES</option>
<option value="NEW CALEDONIA">NEW CALEDONIA</option>
<option value="NEW ZEALAND">NEW ZEALAND</option>
<option value="NICARAGUA">NICARAGUA</option>
<option value="NIGER">NIGER</option>
<option value="NIGERIA">NIGERIA</option>
<option value="NORFOLK ISLAND">NORFOLK ISLAND</option>
<option value="NORTHERN IRELAND">NORTHERN IRELAND</option>
<option value="NORTHERN MARIANA IS">NORTHERN MARIANA IS</option>
<option value="NORWAY">NORWAY</option>
<option value="OMAN">OMAN</option>
<option value="PAKISTAN">PAKISTAN</option>
<option value="PANAMA">PANAMA</option>
<option value="PAPUA NEW GUINEA">PAPUA NEW GUINEA</option>
<option value="PARAGUAY">PARAGUAY</option>
<option value="PERU">PERU</option>
<option value="PHILIPPINES">PHILIPPINES</option>
<option value="POLAND">POLAND</option>
<option value="PORTUGAL">PORTUGAL</option>
<option value="QATAR">QATAR</option>
<option value="REPUBLIC OF KOREA">REPUBLIC OF KOREA</option>
<option value="REUNION">REUNION</option>
<option value="ROMANIA">ROMANIA</option>
<option value="RUSSIAN FEDERATION">RUSSIAN FEDERATION</option>
<option value="RWANDA">RWANDA</option>
<option value="SAMOA">SAMOA</option>
<option value="SAMOA AMERICAN">SAMOA AMERICAN</option>
<option value="SAMOA WESTERN">SAMOA WESTERN</option>
<option value="SAN MARINO">SAN MARINO</option>
<option value="SAO TOME & PRINCIPE">SAO TOME & PRINCIPE</option>
<option value="SAUDI ARABIA">SAUDI ARABIA</option>
<option value="SCOTLAND">SCOTLAND</option>
<option value="SENEGAL">SENEGAL</option>
<option value="SERBIA & MONTENEGRO">SERBIA & MONTENEGRO</option>
<option value="SEYCHELLES">SEYCHELLES</option>
<option value="SIERRA LEONE">SIERRA LEONE</option>
<option value="SINGAPORE">SINGAPORE</option>
<option value="SLOVAKIA">SLOVAKIA</option>
<option value="SLOVENIA">SLOVENIA</option>
<option value="SOLOMON ISLANDS">SOLOMON ISLANDS</option>
<option value="SOMALIA">SOMALIA</option>
<option value="SOUTH AFRICA">SOUTH AFRICA</option>
<option value="SPAIN">SPAIN</option>
<option value="SRI LANKA">SRI LANKA</option>
<option value="ST HELENA">ST HELENA</option>
<option value="ST KITTS-NEVIS">ST KITTS-NEVIS</option>
<option value="ST LUCIA">ST LUCIA</option>
<option value="ST VINCENT">ST VINCENT</option>
<option value="SUDAN">SUDAN</option>
<option value="SURINAME">SURINAME</option>
<option value="SWAZILAND">SWAZILAND</option>
<option value="SWEDEN">SWEDEN</option>
<option value="SWITZERLAND">SWITZERLAND</option>
<option value="SYRIA">SYRIA</option>
<option value="TAIWAN">TAIWAN</option>
<option value="TAJIKISTAN">TAJIKISTAN</option>
<option value="TANZANIA">TANZANIA</option>
<option value="THAILAND">THAILAND</option>
<option value="TOGO">TOGO</option>
<option value="TOKELAU">TOKELAU</option>
<option value="TONGA">TONGA</option>
<option value="TRINIDAD & TOBAGO">TRINIDAD & TOBAGO</option>
<option value="TUNISIA">TUNISIA</option>
<option value="TURKEY">TURKEY</option>
<option value="TURKISH REP N CYPRUS">TURKISH REP N CYPRUS</option>
<option value="TURKMENISTAN">TURKMENISTAN</option>
<option value="TURKS & CAICOS IS">TURKS & CAICOS IS</option>
<option value="TUVALU">TUVALU</option>
<option value="UGANDA">UGANDA</option>
<option value="UKRAINE">UKRAINE</option>
<option value="UNITED ARAB EMIRATES">UNITED ARAB EMIRATES</option>
<option value="URUGUAY">URUGUAY</option>
<option value="USA">USA</option>
<option value="UZBEKISTAN">UZBEKISTAN</option>
<option value="VANUATU">VANUATU</option>
<option value="VENEZUELA">VENEZUELA</option>
<option value="VIETNAM">VIETNAM</option>
<option value="VIRGIN ISLANDS UK">VIRGIN ISLANDS UK</option>
<option value="WAKE ISLAND">WAKE ISLAND</option>
<option value="WALES">WALES</option>
<option value="YEMEN">YEMEN</option>
<option value="ZAMBIA">ZAMBIA</option>
<option value="ZIMBABWE">ZIMBABWE</option>

</select></td></tr>
<!-- 
<tr><td align="right"><label id="home_search_q"><a href="countrylookup.jsp" target="popup" onClick="wopen('countrylookup.jsp', 'popup', 640, 480); return false;">Country</a></label></td><td><input type="text" id="country" name="country" tabindex="8" value="" title="country"></td></tr>
<tr><td align="right"><label id="home_search_q">Continent</label></td><td><input type="text" id="continent" name="continent" tabindex="9" value="" title="country"></td></tr>
 -->
 <tr><td align="right"><label id="home_search_q">Phone / Fax</label></td><td><input type="text" id="telephone" name="telephone" tabindex="10" value="" title="country"></td></tr>
<tr><td colspan=2><br><br></td></tr>
<tr><td align="right"><label id="home_search_q">Number of Results to Return</label></td><td colspan="2"><input type="text" value="" id="maxresults" name="maxresults" tabindex="12"/></td></tr>
<tr><td align="right"><label id="home_search_q">Output</label></td><td>
<select name="output">
<option value="html">HTML</option>
<option value="txt">Text</option>
</select>
</td></tr>
<tr><td colspan=2 align=center><input type="submit" class="formbutton" value="Submit"/>	     	
</td></tr>
</table>
</form>
</div>

</div>
	<script src="js/jquery-1.3.2.min.js" type=text/javascript></script>
	<script src="js/nice_menus.js" type=text/javascript></script>
</body>
</html>