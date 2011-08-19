var fieldValues = "";

 function setFields() {
	fieldValues = 'duns_nbr=' + document.forms['f'].dunsnbr.value & '&business_name=' + document.forms['f'].companyname.value;
	alert (fieldValues); 
}

