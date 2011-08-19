package data;

import java.util.*;
import java.sql.*;
import java.io.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang.StringUtils;

public class SQLUtil
{
    public static String getHtmlTable(ResultSet results)
            throws SQLException
    {
        StringBuffer htmlRows = new StringBuffer();
        
        ResultSetMetaData metaData = results.getMetaData();
        
        while (results.next())
        {
            htmlRows.append("<tr>");
            htmlRows.append("<td><input type=\"checkbox\" name=\"companalyze\" value=" + results.getString("duns_nbr") + "></td>");
            htmlRows.append("<td>");
            String busInd = "";
			
            if (results.getString("FULL_TREE")!= null){
            	if (results.getString("FULL_TREE").equals("1001")){
            		busInd = "<img src=/DNB/images/global_ult.gif>";
            	}
            }
            if (results.getString("LOC_SUB") != null){
            	if (results.getString("LOC_SUB").equals("13")){
            		busInd = "<img src=/DNB/images/subsidiary.gif>";
            	}
            }
            if (results.getString("LOC_SUB") != null){
            	if (results.getString("LOC_SUB").equals("03")){
            		busInd = "<img src=/DNB/images/subsidiary.gif>";
            	}
            }
            if (results.getString("HEIRARCHY_CD") != null){
            	if (results.getString("HEIRARCHY_CD").equals("")){
            		busInd = "<img src=/DNB/images/unlinked.gif>";
				}
            }
            if (results.getString("LOCATION_TYPE_CD") != null){
            	if (results.getString("LOCATION_TYPE_CD").equals("2")){
            		busInd = "<img src=/DNB/images/branch.gif>";
            	}
            }
            if (results.getString("FULL_TREE") != null){
            	if (results.getString("FULL_TREE").equals("1001")){
            		busInd = "<img src=/DNB/images/global_ult.gif>";
            	}
            }
            if (results.getString("FULL_TREE") != null){
            	if (results.getString("FULL_TREE").equals("0000")){
            		busInd = "<img src=/DNB/images/unlinked.gif>";
            	}
            }
            if (results.getString("OUT_BUS_FLAG") != null){
            	if (results.getString("OUT_BUS_FLAG").compareTo("A")>0){
            		busInd = "<img src=/DNB/images/out_of_business.gif>";
            	}
            }
            htmlRows.append(busInd);
            htmlRows.append("</td>");
            htmlRows.append("<td>" + results.getString("business_name") + "</td>");
            htmlRows.append("<td>");
            if (results.getString("Tradestyle") != null){
            	htmlRows.append(results.getString("tradestyle")); 
            }
            htmlRows.append("</td>");
            htmlRows.append("<td>" + results.getString("duns_nbr") + "</td>");
            htmlRows.append("<td>" + results.getString("primary_sic_cd") + "</td>");
            htmlRows.append("<td>" + results.getString("line_of_business") + "</td>");
            htmlRows.append("<td>" + results.getString("physical_st_addr_1") + ", "+ results.getString("PHYSICAL_CITY") + " " + results.getString("Physical_st_abbr") + " " + results.getString("physical_zip")  + "</td>");
      		htmlRows.append("<td>" + results.getString("physical_country_name") + "</td>");
      		htmlRows.append("<td>");
      		if (results.getString("GLBL_ULT_NAME") != null){
      			htmlRows.append(results.getString("GLBL_ULT_NAME"));
      		}
            htmlRows.append("</td>");
      		htmlRows.append("<td>");
      		if (results.getString("GLBL_ULT_COUNTRY") != null){
      			htmlRows.append(results.getString("GLBL_ULT_COUNTRY"));
      		}
            htmlRows.append("</td>");
      		htmlRows.append("<td>" + results.getString("EMP_HERE") + "</td>");
      		htmlRows.append("<td>CEO: ");
      		if (results.getString("CEO_FULL_NAME") != null){
      		 htmlRows.append("<a href=\"/DNB/showDetailedExec?execname=");
      		 htmlRows.append(results.getString("CEO_FULL_NAME")+ "\">");
      		 htmlRows.append(results.getString("CEO_FULL_NAME")+"</a><br>");
      		 }
      		if (results.getString("FIRST_EX_FULL_NAME") != null){
      		 htmlRows.append("First Exec: <a href=\"/DNB/showDetailedExec?execname=");
      		 htmlRows.append(results.getString("FIRST_EX_FULL_NAME")+ "\">");
      		 htmlRows.append(results.getString("FIRST_EX_FULL_NAME")+"</a><br>");
      		 }
       		if (results.getString("SECOND_EX_FULL_NAME") != null){
      		 htmlRows.append("Second Exec: <a href=\"/DNB/showDetailedExec?execname=");
      		 htmlRows.append(results.getString("SECOND_EX_FULL_NAME")+ "\">");
      		 htmlRows.append(results.getString("SECOND_EX_FULL_NAME")+"</a><br>");
      		 }
       		if (results.getString("THIRD_EX_FULL_NAME") != null){
      		 htmlRows.append("Third Exec: <a href=\"/DNB/showDetailedExec?execname=");
      		 htmlRows.append(results.getString("THIRD_EX_FULL_NAME")+ "\">");
      		 htmlRows.append(results.getString("THIRD_EX_FULL_NAME")+"</a><br>");
      		 }
       		if (results.getString("FOURTH_EX_FULL_NAME") != null){
      		 htmlRows.append("Fourth Exec: <a href=\"/DNB/showDetailedExec?execname=");
      		 htmlRows.append(results.getString("FOURTH_EX_FULL_NAME")+ "\">");
      		 htmlRows.append(results.getString("FOURTH_EX_FULL_NAME")+"</a><br>");
      		 }
       		if (results.getString("FIFTH_EX_FULL_NAME") != null){
      		 htmlRows.append("Fifth Exec: <a href=\"/DNB/showDetailedExec?execname=");
      		 htmlRows.append(results.getString("FIFTH_EX_FULL_NAME")+ "\">");
      		 htmlRows.append(results.getString("FIFTH_EX_FULL_NAME")+"</a><br>");
      		 }
       		if (results.getString("SIXTH_EX_FULL_NAME") != null){
      		 htmlRows.append("Sixth Exec: <a href=\"/DNB/src/showDetailedExec?execname=");
      		 htmlRows.append(results.getString("SIXTH_EX_FULL_NAME")+ "\">");
      		 htmlRows.append(results.getString("SIXTH_EX_FULL_NAME")+"</a><br>");
      		 }
       		if (results.getString("Seventh_EX_FULL_NAME") != null){
      		 htmlRows.append("Seventh Exec: <a href=\"/DNB/showDetailedExec?execname=");
      		 htmlRows.append(results.getString("Seventh_EX_FULL_NAME")+ "\">");
      		 htmlRows.append(results.getString("Seventh_EX_FULL_NAME")+"</a><br>");
      		 }
       		if (results.getString("EIGHTH_EX_FULL_NAME") != null){
      		 htmlRows.append("Eighth Exec: <a href=\"/DNB/showDetailedExec?execname=");
      		 htmlRows.append(results.getString("EIGHTH_EX_FULL_NAME")+ "\">");
      		 htmlRows.append(results.getString("EIGHTH_EX_FULL_NAME")+"</a><br>");
      		 }
       		if (results.getString("NINTH_EX_FULL_NAME") != null){
      		 htmlRows.append("Ninth Exec: <a href=\"/DNB/showDetailedExec?execname=");
     		 htmlRows.append(results.getString("NINTH_EX_FULL_NAME")+ "\">");
      		 htmlRows.append(results.getString("NINTH_EX_FULL_NAME")+"</a><br>");
      		 }
       		if (results.getString("TENTH_EX_FULL_NAME") != null){
      		 htmlRows.append("Tenth Exec: <a href=\"/DNB/showDetailedExec?execname=");
      		 htmlRows.append(results.getString("TENTH_EX_FULL_NAME")+ "\">");
      		 htmlRows.append(results.getString("TENTH_EX_FULL_NAME")+"</a><br>");
      		 }
       		if (results.getString("ELEVENTH_EX_FULL_NAME") != null){
      		 htmlRows.append("Eleventh Exec: <a href=\"/DNB/showDetailedExec?execname=");
      		 htmlRows.append(results.getString("ELEVENTH_EX_FULL_NAME")+ "\">");
      		 htmlRows.append(results.getString("ELEVENTH_EX_FULL_NAME")+"</a><br>");
      		 }
     		htmlRows.append("</td>");
        	htmlRows.append("</tr>");
        }
        htmlRows.append("</tbody></table>");
        htmlRows.append("<input type=\"hidden\" name=dunsnbr value=''><input type=\"hidden\" name=companyname value=''>");
	    htmlRows.append("<input type=\"submit\" name=view value=\"Tree View\"/>&nbsp;<input type=\"submit\" name=view value=\"Detailed Report\"/>&nbsp;<input type=\"submit\" name=view value=\"All Report\"/>");
        
        return htmlRows.toString();
    }  
    
    public static String getDetailedReport(ResultSet results)
            throws SQLException
    {
        StringBuffer htmlRows = new StringBuffer();
        
        	htmlRows.append("<h1>Company Details</h1><table cellspacing=1 id=\"compData\" class=\"mainTable\">");
        	htmlRows.append("<tbody>");
        
        while (results.next())
        {
        htmlRows.append("<tr><td>Company Name</td><td>" + results.getString("business_name") + "</td></tr>");
        htmlRows.append("<tr><td>Tradestyle");
        if (results.getString("Tradestyle") != null){
			htmlRows.append(results.getString("Tradestyle") + "</td></tr>");
		}else{
			htmlRows.append("</td></tr>");
        }
		htmlRows.append("<tr><td>D-U-N-S Number</td><td>" + results.getString("DUNS_NBR") +"</td></tr>");
		htmlRows.append("<tr><td>Primary SIC Code</td><td>" + results.getString("PRIMARY_SIC_CD") +"</td></tr>");
		htmlRows.append("<tr><td>Line of Business</td><td>" + results.getString("line_of_business") +"</td></tr>");
		htmlRows.append("<tr><td>Year Started</td><td>" + results.getString("START_YEAR") +"</td></tr>");
		htmlRows.append("<tr><td>In Business</td><td></td></tr>");
		htmlRows.append("<tr><td></td><td></td></tr>");	
		htmlRows.append("<tr><td colspan=2>Addresses</td></tr>");	
		htmlRows.append("<tr><td>Physical Address</td><td>" + results.getString("PHYSICAL_ST_ADDR_1") + ", " + results.getString("PHYSICAL_CITY") + " " + results.getString("PHYSICAL_ST_ABBR") + " " + results.getString("PHYSICAL_ZIP") + "&nbsp;" + results.getString("PHYSICAL_COUNTRY_NAME") +"</td></tr>");
		htmlRows.append("<tr><td>Mail Address</td><td>");
		
		if (results.getString("MAIL_ST_ADDR_1") != null){
			htmlRows.append(results.getString("MAIL_ST_ADDR_1") + ", ");
		}
		
		if (results.getString("MAIL_CITY") != null){
			htmlRows.append(results.getString("MAIL_CITY") + " ");
		}

		if (results.getString("MAIL_STATE_ABBR") != null){
			htmlRows.append(results.getString("MAIL_STATE_ABBR") + " ");
		}

		if (results.getString("MAIL_ZIP") != null){
			htmlRows.append(results.getString("MAIL_ZIP") + "&nbsp;");
		}
		if (results.getString("MAIL_COUNTRY") != null){
			htmlRows.append(results.getString("MAIL_COUNTRY"));
		}
		
		htmlRows.append("</td></tr>");
		
		
		htmlRows.append("<tr><td>Latitude / Longitude</td><td>");
		if (results.getString("LATITUDE") != null){
			htmlRows.append(results.getString("LATITUDE") + "</td></tr>");
		}else{
			htmlRows.append(" ");
		}
		if (results.getString("LONGITUDE") != null){
			htmlRows.append(results.getString("LONGITUDE") + "</td></tr>");
		}
		htmlRows.append("</td></tr>");
				
		htmlRows.append("<tr><td></td><td></td></tr>");	
		htmlRows.append("<tr><td colspan=2>Contact Information</td></tr>");	
		htmlRows.append("<tr><td>Telephone</td><td>" + results.getString("COUNTRY_ACCESS_CODE") + "-" + results.getString("TELEPHONE") + "</td></tr>");
		htmlRows.append("<tr><td>Fax</td><td>");
		if (results.getString("FAX_NUMBER") != null){
			htmlRows.append(results.getString("FAX_NUMBER") + "</td></tr>");
		}else{
			htmlRows.append("</td></tr>");
        }
		htmlRows.append("<tr><td>Telex</td><td>");
		
		if (results.getString("CABLE_TELEX") != null){
			htmlRows.append(results.getString("CABLE_TELEX") + "</td></tr>");
		}else{
			htmlRows.append("</td></tr>");
        }
	
		htmlRows.append("<tr><td></td><td></td></tr>");	
		htmlRows.append("<tr><td colspan=2>Executives</td></tr>");		
	
		if (results.getString("CEO_FULL_NAME")!= null){
			htmlRows.append("<tr><td>CEO</td><td>" + results.getString("CEO_FULL_NAME") +  "</td></tr>");
		}
		if (results.getString("FIRST_EX_FULL_NAME")!= null){
			htmlRows.append("<tr><td>First Executive</td><td>" + results.getString("FIRST_EX_FULL_NAME") +  "</td></tr>");
		}
		if (results.getString("SECOND_EX_FULL_NAME")!= null){
			htmlRows.append("<tr><td>Second Executive</td><td>" + results.getString("SECOND_EX_FULL_NAME") +  "</td></tr>");
		}
		if (results.getString("THIRD_EX_FULL_NAME")!= null){
			htmlRows.append("<tr><td>Third Executive</td><td>" + results.getString("THIRD_EX_FULL_NAME") +  "</td></tr>");
		}
		if (results.getString("FOURTH_EX_FULL_NAME")!= null){
			htmlRows.append("<tr><td>Fourth Executive</td><td>" + results.getString("FOURTH_EX_FULL_NAME") +  "</td></tr>");
		}
		if (results.getString("FIFTH_EX_FULL_NAME")!= null){
			htmlRows.append("<tr><td>Fifth Executive</td><td>" + results.getString("FIFTH_EX_FULL_NAME") +  "</td></tr>");
		}
		if (results.getString("SIXTH_EX_FULL_NAME")!= null){
			htmlRows.append("<tr><td>Sixth Executive</td><td>" + results.getString("SIXTH_EX_FULL_NAME") +  "</td></tr>");
		}
		if (results.getString("Ninth_EX_FULL_NAME")!= null){
			htmlRows.append("<tr><td>Ninth Executive</td><td>" + results.getString("Ninth_EX_FULL_NAME") +  "</td></tr>");
		}
		if (results.getString("EIGHTH_EX_FULL_NAME")!= null){
			htmlRows.append("<tr><td>Eighth Executive</td><td>" + results.getString("EIGHTH_EX_FULL_NAME") +  "</td></tr>");
		}
		if (results.getString("NINTH_EX_FULL_NAME")!= null){
			htmlRows.append("<tr><td>Ninth Executive</td><td>" + results.getString("NINTH_EX_FULL_NAME") +  "</td></tr>");
		}
		if (results.getString("TENTH_EX_FULL_NAME")!= null){
			htmlRows.append("<tr><td>Tenth Executive</td><td>" + results.getString("TENTH_EX_FULL_NAME") +  "</td></tr>");
		}
		if (results.getString("ELEVENTH_EX_FULL_NAME")!= null){
			htmlRows.append("<tr><td>Eleventh Executive</td><td>" + results.getString("ELEVENTH_EX_FULL_NAME") +  "</td></tr>");
		}
		htmlRows.append("<tr><td></td><td></td></tr>");	
		htmlRows.append("<tr><td colspan=2>Employees</td></tr>");	
		htmlRows.append("<tr><td>Employees Here</td><td>" + results.getString("EMP_HERE") +  "</td></tr>");
		htmlRows.append("<tr><td>Total Employees</td><td>" + results.getString("EMP_TOTAL") +  "</td></tr>");

		htmlRows.append("<tr><td></td><td></td></tr>");	
		htmlRows.append("<tr><td colspan=2>Corporate Structure</td></tr>");	
		htmlRows.append("<tr><td colspan=2>Parent Corporation</td></tr>");	
		htmlRows.append("<tr><td>Parent Name</td><td>");

		if (results.getString("PRNT_NAME") != null){
			htmlRows.append(results.getString("PRNT_NAME") + "</td></tr>");
		}else{
			htmlRows.append("</td></tr>");
        }
		
		htmlRows.append("<tr><td>Parent D-U-N-S Number</td><td>");
		if (results.getString("PRNT_DUNS_NBR") != null){
			htmlRows.append(results.getString("PRNT_DUNS_NBR") + "</td></tr>");
		}else{
			htmlRows.append("</td></tr>");
        }
		htmlRows.append("<tr><td>Physical Address</td><td>");
		
		if (results.getString("PRNT_PHYSICAL_ADDR") != null){
			htmlRows.append(results.getString("PRNT_PHYSICAL_ADDR") + ", ");
		}
		
		if (results.getString("PRNT_CITY") != null){
			htmlRows.append(results.getString("PRNT_CITY") + " ");
		}

		if (results.getString("PRNT_STATE_ABBR") != null){
			htmlRows.append(results.getString("PRNT_STATE_ABBR") + " ");
		}

		if (results.getString("PRNT_ZIP") != null){
			htmlRows.append(results.getString("PRNT_ZIP") + "&nbsp;");
		}
		if (results.getString("PRNT_COUNTRY_NAME") != null){
			htmlRows.append(results.getString("PRNT_COUNTRY_NAME"));
		}
		
		htmlRows.append("</td></tr>");
		
		htmlRows.append("<tr><td colspan=2>Domestic Ultimate Parent Corporation</td></tr>");	
		htmlRows.append("<tr><td>Domestic Parent Name</td><td>");
		if (results.getString("DOM_ULT_NAME") != null){
			htmlRows.append(results.getString("DOM_ULT_NAME") + "</td></tr>");
		}else{
			htmlRows.append("</td></tr>");
        }

		htmlRows.append("<tr><td>Domestic Parent D-U-N-S Number</td><td>");
		if (results.getString("DOM_ULT_DUNS_NBR") != null){
			htmlRows.append(results.getString("DOM_ULT_DUNS_NBR") + "</td></tr>");
		}else{
			htmlRows.append("</td></tr>");
        }

		htmlRows.append("<tr><td>Domestic Parent Address</td><td>");
		if (results.getString("DOM_ULT_PHYSICAL_ADDR") != null){
			htmlRows.append(results.getString("DOM_ULT_PHYSICAL_ADDR") + ", ");
		}
		
		if (results.getString("DOM_ULT_CITY") != null){
			htmlRows.append(results.getString("DOM_ULT_CITY") + " ");
		}

		if (results.getString("DOM_ULT_STATE_ABBR") != null){
			htmlRows.append(results.getString("DOM_ULT_STATE_ABBR") + " ");
		}

		if (results.getString("DOM_ULT_ZIP") != null){
			htmlRows.append(results.getString("DOM_ULT_ZIP") + "&nbsp;");
		}
		if (results.getString("DOM_ULT_COUNTRY_CD") != null){
			htmlRows.append(results.getString("DOM_ULT_COUNTRY_CD"));
		}
		
		htmlRows.append("</td></tr>");		
		
		htmlRows.append("<tr><td colspan=2>Global Ultimate Parent Corporation</td></tr>");	
		if (results.getString("GLBL_ULT_NAME") != null){
			htmlRows.append(results.getString("GLBL_ULT_NAME") + "</td></tr>");
		}else{
			htmlRows.append("</td></tr>");
        }
		htmlRows.append("<tr><td>Global Ultimate Parent D-U-N-S Number</td><td>");
		if (results.getString("GLBL_ULT_DUNS_NBR") != null){
			htmlRows.append(results.getString("GLBL_ULT_DUNS_NBR") + "</td></tr>");
		}else{
			htmlRows.append("</td></tr>");
        }
		htmlRows.append("<tr><td>Global Ultimate Parent Address</td><td>");

		if (results.getString("GLBL_ULT_PHYSICAL_ADDR") != null){
			htmlRows.append(results.getString("GLBL_ULT_PHYSICAL_ADDR") + ", ");
		}
		
		if (results.getString("GLBL_ULT_CITY") != null){
			htmlRows.append(results.getString("GLBL_ULT_CITY") + " ");
		}

		if (results.getString("GLBL_STATE_ABBR") != null){
			htmlRows.append(results.getString("GLBL_STATE_ABBR") + " ");
		}

		if (results.getString("GLBL_ULT_ZIP") != null){
			htmlRows.append(results.getString("GLBL_ULT_ZIP") + "&nbsp;");
		}
		if (results.getString("GLBL_ULT_COUNTRY_CD") != null){
			htmlRows.append(results.getString("GLBL_ULT_COUNTRY_CD"));
		}
		
		htmlRows.append("</td></tr>");		
		
		
		
        
        
        }
		htmlRows.append("</tbody></table></div></div>");
        return htmlRows.toString();
    }    
    
    public static String getTreeViewDetails(ResultSet results, String TreeSize, String vdunsNbr)
    	throws SQLException
    	{
    		StringBuffer htmlRows = new StringBuffer();
    		htmlRows.append("<br>There are " + TreeSize + " members in the family tree. <br>");
    		htmlRows.append("<a href=\"/DNB/TreeViewExport?dunsnbr=" + vdunsNbr + "&output=text\">Export Tree to text file</a> <br><br>");
    		int tmpFullTree = 1;
    		String busInd = "";
            while (results.next())
            {
             	if (results.getString("FULL_TREE").equals("1001")){
            		htmlRows.append("<li>");
            		htmlRows.append(results.getString("Business_Name") + " (" + results.getString("duns_nbr") + ") " + results.getString("Physical_City") + ", " + results.getString("State_Name"));
                    if (results.getString("FULL_TREE") != null){
                    	if (results.getString("FULL_TREE").equals("1001")){
                    		busInd = "<img src=/DNB/images/global_ult.gif>";
                    	}
                    }
                    if (results.getString("LOC_SUB") != null){
                    	if (results.getString("LOC_SUB").equals("13")){
                    		busInd ="<img src=/DNB/images/parent.gif>";
            			}
            		}
                    if (results.getString("LOC_SUB") != null){
                    	if (results.getString("LOC_SUB").equals("03")){
                    		busInd ="<img src=/DNB/images/subsidiary.gif>";
            			}
                    }
                    if (results.getString("HEIRARCHY_CD") != null){
                    	if (results.getString("HEIRARCHY_CD").equals("")){
                    		busInd="<img src=/DNB/images/unlinked.gif>";
            			}
                    }
                    if (results.getString("LOCATION_TYPE_CD") != null){
                    	if (results.getString("LOCATION_TYPE_CD").equals("2")){
                    		busInd="<img src=/DNB/images/branch.gif>";
            			}
                    }
                    htmlRows.append(busInd);            
            		htmlRows.append("<ul>");
            	} else {
            		if (results.getString("FULL_TREE").equals("1302") || results.getString("FULL_TREE").equals("0302")){
            			if (tmpFullTree < 1) {
            				htmlRows.append("</ul>");
            				tmpFullTree = 1;
                  			}
            		}

            		
            		htmlRows.append("<li>");
            		htmlRows.append(results.getString("Business_Name") + " (" + results.getString("duns_nbr") + ") " + results.getString("Physical_City") + ", " + results.getString("State_Name"));
           
                    if (results.getString("FULL_TREE") != null){
                    	if (results.getString("FULL_TREE").equals("1001")){
                    		busInd = "<img src=/DNB/images/global_ult.gif>";
                    	}
                    }
                    if (results.getString("LOC_SUB") != null){
                    	if (results.getString("LOC_SUB").equals("13")){
                    		busInd ="<img src=/DNB/images/parent.gif>";
            			}
            		}
                    if (results.getString("LOC_SUB") != null){
                    	if (results.getString("LOC_SUB").equals("03")){
                    		busInd ="<img src=/DNB/images/subsidiary.gif>";
            			}
                    }
                    if (results.getString("HEIRARCHY_CD") != null){
                    	if (results.getString("HEIRARCHY_CD").equals("")){
                    		busInd="<img src=/DNB/images/unlinked.gif>";
            			}
                    }
                    if (results.getString("LOCATION_TYPE_CD") != null){
                    	if (results.getString("LOCATION_TYPE_CD").equals("2")){
                    		busInd="<img src=/DNB/images/branch.gif>";
            			}
                    }
                    htmlRows.append(busInd);  
                    
            		if (results.getString("FULL_TREE").equals("1302")){
        			}else{
        				htmlRows.append( "</li>");
        			}

            	}
        		if (results.getString("FULL_TREE").equals("1302")){
    				htmlRows.append( "<ul>");
    				tmpFullTree = 0;
        		}
            }
            htmlRows.append("</ul>");
            
    		return htmlRows.toString();
}  
  
    public static String getReportOutput (ResultSet results)
    throws SQLException
    {
        StringBuffer htmlRows = new StringBuffer();
        
    	htmlRows.append("DUNS_NBR|BUSINESS_NAME|TRADESTYLE|REGISTERED_ADDRESS_IND|PHYSICAL_ST_ADDR_1|PHYSICAL_ST_ADDR_2|PHYSICAL_CITY|STATE_NAME|PHYSICAL_COUNTRY_NAME|PHYSICAL_CITY_CD|FIPS_COUNTY_CD|PHYSICAL_STATE_CD|PHYSICAL_ST_ABBR|FIPS_COUNTRY_CD|PHYSICAL_ZIP|CONTINENT_CD|MAIL_ST_ADDR_1|MAIL_CITY|MAIL_COUNTY_NAME|MAIL_STATE|MAIL_COUNTRY|MAIL_CITY_CD|MAIL_COUNTY_CD|MAIL_STATE_CD|MAIL_STATE_ABBR|MAIL_COUNTRY_CD|MAIL_ZIP|MAIL_CONTINENT_CDNAT_IDENT_NUM|NATIONAL_ID_SYSTEM_CD|COUNTRY_ACCESS_CODE|TELEPHONE|CABLE_TELEX|FAX_NUMBER|CEO_FULL_NAME|CEO_TITLE|LINE_OF_BUSINESS|PRIMARY_SIC_CD|SIC_CODE_TWO|SIC_CODE_THREE|SIC_CODE_FOUR|SIC_CODE_FIVE|SIC_CODE_SIX|PRIMARY_LOC_ACTY_CD|ACTIVITY_INDICATOR|START_YEAR|ANNUAL_SALES|ANNUAL_SALES_IND|ANNUAL_SALES_US|CURRENCY_CD|EMP_HERE|EMP_HERE_CD|EMP_TOTAL|EMP_TOTAL_CD|PRINCIPAL_INCLUDED_IND|IMPORT_EXPORT_INDC|LEGAL_STATUS_CD|CONTROL_IND|LOCATION_TYPE_CD|SUBSIDIARY_INDC|FILLER|PREVIOUS_DUNS|REPORT_DATE|PRNT_DUNS_NBR|PRNT_NAME|PRNT_PHYSICAL_ADDR|PRNT_CITY|PRNT_STATE|PRNT_COUNTRY_NAME|PRNT_CITY_CD|PRNT_COUNTRY_CD|PRNT_STATE_ABBR|PRNT_HQ_CNTRY_CD|PRNT_ZIP|PRNT_CONTINENT_CD|DOM_ULT_DUNS_NBR|DOM_ULT_NAME|DOM_ULT_PHYSICAL_ADDR|DOM_ULT_CITY|DOM_ULT_STATE|DOM_ULT_CITY_CD|DOM_ULT_COUNTRY_CD|DOM_ULT_STATE_ABBR|DOM_ULT_ZIP|GLBL_ULT_INDC|GLBL_ULT_FILLER|GLBL_ULT_DUNS_NBR|GLBL_ULT_NAME|GLBL_ULT_PHYSICAL_ADDR|GLBL_ULT_CITY|GLBL_ULT_STATE|GLBL_ULT_COUNTRY|GLBL_ULT_CITY_CD|GLBL_ULT_COUNTY_CD|GLBL_STATE_ABBR|GLBL_ULT_COUNTRY_CD|GLBL_ULT_ZIP|GLBL_ULT_CONTINENT_CD|NBR_FAM_MEMBERS|DIAS_CD|HEIRARCHY_CD|FMLY_UPDATE_DATE|USER_AREA|FIRST_EX_FULL_NAME|FIRST_EX_TITLE|SECOND_EX_FULL_NAME|SECOND_EX_TITLE|THIRD_EX_FULL_NAME|THIRD_EX_TITLE|FOURTH_EX_FULL_NAME|FOURTH_EX_TITLE|FIFTH_EX_FULL_NAME|FIFTH_EX_TITLE|SIXTH_EX_FULL_NAME|SIXTH_EX_TITLE|SEVENTH_EX_FULL_NAME|SEVENTH_EX_TITLE|EIGHTH_EX_FULL_NAME|EIGHTH_EX_TITLE|NINTH_EX_FULL_NAME|NINTH_EX_TITLE|TENTH_EX_FULL_NAME|TENTH_EX_TITLE|ELEVENTH_EX_FULL_NAME|ELEVENTH_EX_TITLE|OUT_BUS_FLAG|LATITUDE|LONGITUDE|CORP_PARENT_ID");

    	htmlRows.append("\n");

        ResultSetMetaData metaData = results.getMetaData();
        
        while (results.next())
        {

			if (results.getString("DUNS_NBR") != null){
				htmlRows.append(results.getString("DUNS_NBR"));	
			}	
			htmlRows.append("|");
			if (results.getString("BUSINESS_NAME") != null){	
				htmlRows.append(results.getString("BUSINESS_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("TRADESTYLE") != null){	
				htmlRows.append(results.getString("TRADESTYLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("REGISTERED_ADDRESS_IND") != null){	
				htmlRows.append(results.getString("REGISTERED_ADDRESS_IND"));	
			}	
			htmlRows.append("|");
			if (results.getString("PHYSICAL_ST_ADDR_1") != null){	
				htmlRows.append(results.getString("PHYSICAL_ST_ADDR_1"));	
			}	
			htmlRows.append("|");
			if (results.getString("PHYSICAL_ST_ADDR_2") != null){	
				htmlRows.append(results.getString("PHYSICAL_ST_ADDR_2"));	
			}	
			htmlRows.append("|");
			if (results.getString("PHYSICAL_CITY") != null){	
				htmlRows.append(results.getString("PHYSICAL_CITY"));	
			}	
			htmlRows.append("|");
			if (results.getString("STATE_NAME") != null){	
				htmlRows.append(results.getString("STATE_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("PHYSICAL_COUNTRY_NAME") != null){	
				htmlRows.append(results.getString("PHYSICAL_COUNTRY_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("PHYSICAL_CITY_CD") != null){	
				htmlRows.append(results.getString("PHYSICAL_CITY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("FIPS_COUNTY_CD") != null){	
				htmlRows.append(results.getString("FIPS_COUNTY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("PHYSICAL_STATE_CD") != null){	
				htmlRows.append(results.getString("PHYSICAL_STATE_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("PHYSICAL_ST_ABBR") != null){	
				htmlRows.append(results.getString("PHYSICAL_ST_ABBR"));	
			}	
			htmlRows.append("|");
			if (results.getString("FIPS_COUNTRY_CD") != null){	
				htmlRows.append(results.getString("FIPS_COUNTRY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("PHYSICAL_ZIP") != null){	
				htmlRows.append(results.getString("PHYSICAL_ZIP"));	
			}	
			htmlRows.append("|");
			if (results.getString("CONTINENT_CD") != null){	
				htmlRows.append(results.getString("CONTINENT_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("MAIL_ST_ADDR_1") != null){	
				htmlRows.append(results.getString("MAIL_ST_ADDR_1"));	
			}	
			htmlRows.append("|");
			if (results.getString("MAIL_CITY") != null){	
				htmlRows.append(results.getString("MAIL_CITY"));	
			}	
			htmlRows.append("|");
			if (results.getString("MAIL_COUNTY_NAME") != null){	
				htmlRows.append(results.getString("MAIL_COUNTY_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("MAIL_STATE") != null){	
				htmlRows.append(results.getString("MAIL_STATE"));	
			}	
			htmlRows.append("|");
			if (results.getString("MAIL_COUNTRY") != null){	
				htmlRows.append(results.getString("MAIL_COUNTRY"));	
			}	
			htmlRows.append("|");
			if (results.getString("MAIL_CITY_CD") != null){	
				htmlRows.append(results.getString("MAIL_CITY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("MAIL_COUNTY_CD") != null){	
				htmlRows.append(results.getString("MAIL_COUNTY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("MAIL_STATE_CD") != null){	
				htmlRows.append(results.getString("MAIL_STATE_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("MAIL_STATE_ABBR") != null){	
				htmlRows.append(results.getString("MAIL_STATE_ABBR"));	
			}	
			htmlRows.append("|");
			if (results.getString("MAIL_COUNTRY_CD") != null){	
				htmlRows.append(results.getString("MAIL_COUNTRY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("MAIL_ZIP") != null){	
				htmlRows.append(results.getString("MAIL_ZIP"));	
			}	
			htmlRows.append("|");
			if (results.getString("MAIL_CONTINENT_CD") != null){	
				htmlRows.append(results.getString("MAIL_CONTINENT_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("NATIONAL_ID_SYSTEM_CD") != null){	
				htmlRows.append(results.getString("NATIONAL_ID_SYSTEM_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("COUNTRY_ACCESS_CODE") != null){	
				htmlRows.append(results.getString("COUNTRY_ACCESS_CODE"));	
			}	
			htmlRows.append("|");
			if (results.getString("TELEPHONE") != null){	
				htmlRows.append(results.getString("TELEPHONE"));	
			}	
			htmlRows.append("|");
			if (results.getString("CABLE_TELEX") != null){	
				htmlRows.append(results.getString("CABLE_TELEX"));	
			}	
			htmlRows.append("|");
			if (results.getString("FAX_NUMBER") != null){	
				htmlRows.append(results.getString("FAX_NUMBER"));	
			}	
			htmlRows.append("|");
			if (results.getString("CEO_FULL_NAME") != null){	
				htmlRows.append(results.getString("CEO_FULL_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("CEO_TITLE") != null){	
				htmlRows.append(results.getString("CEO_TITLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("LINE_OF_BUSINESS") != null){	
				htmlRows.append(results.getString("LINE_OF_BUSINESS"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRIMARY_SIC_CD") != null){	
				htmlRows.append(results.getString("PRIMARY_SIC_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("SIC_CODE_TWO") != null){	
				htmlRows.append(results.getString("SIC_CODE_TWO"));	
			}	
			htmlRows.append("|");
			if (results.getString("SIC_CODE_THREE") != null){	
				htmlRows.append(results.getString("SIC_CODE_THREE"));	
			}	
			htmlRows.append("|");
			if (results.getString("SIC_CODE_FOUR") != null){	
				htmlRows.append(results.getString("SIC_CODE_FOUR"));	
			}	
			htmlRows.append("|");
			if (results.getString("SIC_CODE_FIVE") != null){	
				htmlRows.append(results.getString("SIC_CODE_FIVE"));	
			}	
			htmlRows.append("|");
			if (results.getString("SIC_CODE_SIX") != null){	
				htmlRows.append(results.getString("SIC_CODE_SIX"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRIMARY_LOC_ACTY_CD") != null){	
				htmlRows.append(results.getString("PRIMARY_LOC_ACTY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("ACTIVITY_INDICATOR") != null){	
				htmlRows.append(results.getString("ACTIVITY_INDICATOR"));	
			}	
			htmlRows.append("|");
			if (results.getString("START_YEAR") != null){	
				htmlRows.append(results.getString("START_YEAR"));	
			}	
			htmlRows.append("|");
			if (results.getString("ANNUAL_SALES") != null){	
				htmlRows.append(results.getString("ANNUAL_SALES"));	
			}	
			htmlRows.append("|");
			if (results.getString("ANNUAL_SALES_IND") != null){	
				htmlRows.append(results.getString("ANNUAL_SALES_IND"));	
			}	
			htmlRows.append("|");
			if (results.getString("ANNUAL_SALES_US") != null){	
				htmlRows.append(results.getString("ANNUAL_SALES_US"));	
			}	
			htmlRows.append("|");
			if (results.getString("CURRENCY_CD") != null){	
				htmlRows.append(results.getString("CURRENCY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("EMP_HERE") != null){	
				htmlRows.append(results.getString("EMP_HERE"));	
			}	
			htmlRows.append("|");
			if (results.getString("EMP_HERE_CD") != null){	
				htmlRows.append(results.getString("EMP_HERE_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("EMP_TOTAL") != null){	
				htmlRows.append(results.getString("EMP_TOTAL"));	
			}	
			htmlRows.append("|");
			if (results.getString("EMP_TOTAL_CD") != null){	
				htmlRows.append(results.getString("EMP_TOTAL_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRINCIPAL_INCLUDED_IND") != null){	
				htmlRows.append(results.getString("PRINCIPAL_INCLUDED_IND"));	
			}	
			htmlRows.append("|");
			if (results.getString("IMPORT_EXPORT_INDC") != null){	
				htmlRows.append(results.getString("IMPORT_EXPORT_INDC"));	
			}	
			htmlRows.append("|");
			if (results.getString("LEGAL_STATUS_CD") != null){	
				htmlRows.append(results.getString("LEGAL_STATUS_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("CONTROL_IND") != null){	
				htmlRows.append(results.getString("CONTROL_IND"));	
			}	
			htmlRows.append("|");
			if (results.getString("LOCATION_TYPE_CD") != null){	
				htmlRows.append(results.getString("LOCATION_TYPE_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("SUBSIDIARY_INDC") != null){	
				htmlRows.append(results.getString("SUBSIDIARY_INDC"));	
			}	

			htmlRows.append("|");
			if (results.getString("PREVIOUS_DUNS") != null){	
				htmlRows.append(results.getString("PREVIOUS_DUNS"));	
			}	
			htmlRows.append("|");
			if (results.getString("REPORT_DATE") != null){	
				htmlRows.append(results.getString("REPORT_DATE"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRNT_DUNS_NBR") != null){	
				htmlRows.append(results.getString("PRNT_DUNS_NBR"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRNT_NAME") != null){	
				htmlRows.append(results.getString("PRNT_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRNT_PHYSICAL_ADDR") != null){	
				htmlRows.append(results.getString("PRNT_PHYSICAL_ADDR"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRNT_CITY") != null){	
				htmlRows.append(results.getString("PRNT_CITY"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRNT_STATE") != null){	
				htmlRows.append(results.getString("PRNT_STATE"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRNT_COUNTRY_NAME") != null){	
				htmlRows.append(results.getString("PRNT_COUNTRY_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRNT_CITY_CD") != null){	
				htmlRows.append(results.getString("PRNT_CITY_CD"));	
			}	htmlRows.append("|");
			if (results.getString("PRNT_COUNTRY_CD") != null){	
				htmlRows.append(results.getString("PRNT_COUNTRY_CD"));	
			}	htmlRows.append("|");
			if (results.getString("PRNT_STATE_ABBR") != null){	
				htmlRows.append(results.getString("PRNT_STATE_ABBR"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRNT_HQ_CNTRY_CD") != null){	
				htmlRows.append(results.getString("PRNT_HQ_CNTRY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRNT_ZIP") != null){	
				htmlRows.append(results.getString("PRNT_ZIP"));	
			}	
			htmlRows.append("|");
			if (results.getString("PRNT_CONTINENT_CD") != null){	
				htmlRows.append(results.getString("PRNT_CONTINENT_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("FILLER4") != null){	
				htmlRows.append(results.getString("FILLER4"));	
			}	
			htmlRows.append("|");
			if (results.getString("DOM_ULT_DUNS_NBR") != null){	
				htmlRows.append(results.getString("DOM_ULT_DUNS_NBR"));	
			}	
			htmlRows.append("|");
			if (results.getString("DOM_ULT_NAME") != null){	
				htmlRows.append(results.getString("DOM_ULT_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("DOM_ULT_PHYSICAL_ADDR") != null){	
				htmlRows.append(results.getString("DOM_ULT_PHYSICAL_ADDR"));	
			}	
			htmlRows.append("|");
			if (results.getString("DOM_ULT_CITY") != null){	
				htmlRows.append(results.getString("DOM_ULT_CITY"));	
			}	
			htmlRows.append("|");
			if (results.getString("DOM_ULT_STATE") != null){	
				htmlRows.append(results.getString("DOM_ULT_STATE"));	
			}	
			htmlRows.append("|");
			if (results.getString("DOM_ULT_CITY_CD") != null){	
				htmlRows.append(results.getString("DOM_ULT_CITY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("DOM_ULT_COUNTRY_CD") != null){	
				htmlRows.append(results.getString("DOM_ULT_COUNTRY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("DOM_ULT_STATE_ABBR") != null){	
				htmlRows.append(results.getString("DOM_ULT_STATE_ABBR"));	
			}	
			htmlRows.append("|");
			if (results.getString("DOM_ULT_ZIP") != null){	
				htmlRows.append(results.getString("DOM_ULT_ZIP"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_INDC") != null){	
				htmlRows.append(results.getString("GLBL_ULT_INDC"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_FILLER") != null){	
				htmlRows.append(results.getString("GLBL_ULT_FILLER"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_DUNS_NBR") != null){	
				htmlRows.append(results.getString("GLBL_ULT_DUNS_NBR"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_NAME") != null){	
				htmlRows.append(results.getString("GLBL_ULT_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_PHYSICAL_ADDR") != null){	
				htmlRows.append(results.getString("GLBL_ULT_PHYSICAL_ADDR"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_CITY") != null){	
				htmlRows.append(results.getString("GLBL_ULT_CITY"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_STATE") != null){	
				htmlRows.append(results.getString("GLBL_ULT_STATE"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_COUNTRY") != null){	
				htmlRows.append(results.getString("GLBL_ULT_COUNTRY"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_CITY_CD") != null){	
				htmlRows.append(results.getString("GLBL_ULT_CITY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_COUNTY_CD") != null){	
				htmlRows.append(results.getString("GLBL_ULT_COUNTY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_STATE_ABBR") != null){	
				htmlRows.append(results.getString("GLBL_STATE_ABBR"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_COUNTRY_CD") != null){	
				htmlRows.append(results.getString("GLBL_ULT_COUNTRY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_ZIP") != null){	
				htmlRows.append(results.getString("GLBL_ULT_ZIP"));	
			}	
			htmlRows.append("|");
			if (results.getString("GLBL_ULT_CONTINENT_CD") != null){	
				htmlRows.append(results.getString("GLBL_ULT_CONTINENT_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("NBR_FAM_MEMBERS") != null){	
				htmlRows.append(results.getString("NBR_FAM_MEMBERS"));	
			}	
			htmlRows.append("|");
			if (results.getString("DIAS_CD") != null){	
				htmlRows.append(results.getString("DIAS_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("HEIRARCHY_CD") != null){	
				htmlRows.append(results.getString("HEIRARCHY_CD"));	
			}	
			htmlRows.append("|");
			if (results.getString("FMLY_UPDATE_DATE") != null){	
				htmlRows.append(results.getString("FMLY_UPDATE_DATE"));	
			}	
			htmlRows.append("|");
			if (results.getString("USER_AREA") != null){	
				htmlRows.append(results.getString("USER_AREA"));	
			}	
			htmlRows.append("|");
			if (results.getString("FIRST_EX_FULL_NAME") != null){	
				htmlRows.append(results.getString("FIRST_EX_FULL_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("FIRST_EX_TITLE") != null){	
				htmlRows.append(results.getString("FIRST_EX_TITLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("SECOND_EX_FULL_NAME") != null){	
				htmlRows.append(results.getString("SECOND_EX_FULL_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("SECOND_EX_TITLE") != null){	
				htmlRows.append(results.getString("SECOND_EX_TITLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("THIRD_EX_FULL_NAME") != null){	
				htmlRows.append(results.getString("THIRD_EX_FULL_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("THIRD_EX_TITLE") != null){	
				htmlRows.append(results.getString("THIRD_EX_TITLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("FOURTH_EX_FULL_NAME") != null){	
				htmlRows.append(results.getString("FOURTH_EX_FULL_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("FOURTH_EX_TITLE") != null){	
				htmlRows.append(results.getString("FOURTH_EX_TITLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("FIFTH_EX_FULL_NAME") != null){	
				htmlRows.append(results.getString("FIFTH_EX_FULL_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("FIFTH_EX_TITLE") != null){	
				htmlRows.append(results.getString("FIFTH_EX_TITLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("SIXTH_EX_FULL_NAME") != null){	
				htmlRows.append(results.getString("SIXTH_EX_FULL_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("SIXTH_EX_TITLE") != null){	
				htmlRows.append(results.getString("SIXTH_EX_TITLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("SEVENTH_EX_FULL_NAME") != null){	
				htmlRows.append(results.getString("SEVENTH_EX_FULL_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("SEVENTH_EX_TITLE") != null){	
				htmlRows.append(results.getString("SEVENTH_EX_TITLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("EIGHTH_EX_FULL_NAME") != null){	
				htmlRows.append(results.getString("EIGHTH_EX_FULL_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("EIGHTH_EX_TITLE") != null){	
				htmlRows.append(results.getString("EIGHTH_EX_TITLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("NINTH_EX_FULL_NAME") != null){	
				htmlRows.append(results.getString("NINTH_EX_FULL_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("NINTH_EX_TITLE") != null){	
				htmlRows.append(results.getString("NINTH_EX_TITLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("TENTH_EX_FULL_NAME") != null){	
				htmlRows.append(results.getString("TENTH_EX_FULL_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("TENTH_EX_TITLE") != null){	
				htmlRows.append(results.getString("TENTH_EX_TITLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("ELEVENTH_EX_FULL_NAME") != null){	
				htmlRows.append(results.getString("ELEVENTH_EX_FULL_NAME"));	
			}	
			htmlRows.append("|");
			if (results.getString("ELEVENTH_EX_TITLE") != null){	
				htmlRows.append(results.getString("ELEVENTH_EX_TITLE"));	
			}	
			htmlRows.append("|");
			if (results.getString("OUT_BUS_FLAG") != null){	
				htmlRows.append(results.getString("OUT_BUS_FLAG"));	
			}	
			htmlRows.append("|");
			if (results.getString("LATITUDE") != null){	
				htmlRows.append(results.getString("LATITUDE"));	
			}	
			htmlRows.append("|");
			if (results.getString("LONGITUDE") != null){	
				htmlRows.append(results.getString("LONGITUDE"));	
			}	
			htmlRows.append("|");
			if (results.getString("CORP_PARENT_ID") != null){	
				htmlRows.append(results.getString("CORP_PARENT_ID"));	
			}	
			htmlRows.append("|");

        	htmlRows.append("\r\n");
        }
        
        return htmlRows.toString();
    }
    public static String getDNBTreeTextOutput (ResultSet results)
    throws SQLException
    {
        StringBuffer htmlRows = new StringBuffer();
        
    	htmlRows.append("DUNS Number|Business Name|Global Ultimate Duns|Address");

    	htmlRows.append("\n");

        ResultSetMetaData metaData = results.getMetaData();
        
        while (results.next())
        {
        	htmlRows.append(results.getString("DUNS_NBR"));
        	htmlRows.append("|");
        	htmlRows.append(results.getString("BUSINESS_NAME"));
        	htmlRows.append("|");
        	htmlRows.append(results.getString("GLBL_ULT_DUNS_NBR"));
        	htmlRows.append("|");
        	htmlRows.append(results.getString("PHYSICAL_CITY"));
        	htmlRows.append(",");
        	htmlRows.append(results.getString("PHYSICAL_ST_ABBR"));
        	htmlRows.append(" ");
        	htmlRows.append(results.getString("PHYSICAL_COUNTRY_NAME"));
        	htmlRows.append("\n");
        }
        return htmlRows.toString();
    }    
  
    public static String getJSONOutput (ResultSet results, int vMaxResults)
    throws SQLException
    {
        StringBuffer jsonData = new StringBuffer();
//        String aDate = "date: 12-15-2003";
//        Pattern datePattern = Pattern.compile("date: (\\d{2})-(\\d{2})-(\\d{4})");
//        Matcher dateMatcher = datePattern.matcher(aDate);
//        if (dateMatcher.find())
//        {
//          System.out.println("Month is: " + dateMatcher.group(1));
//          System.out.println("Day is:   " + dateMatcher.group(2));
//          System.out.println("Year is:  " + dateMatcher.group(3));
//        }

    System.out.println(vMaxResults < 1);    
        if (vMaxResults < 1){
        	jsonData.append("{\"responseData\": {\"results\":[");
        	jsonData.append("{\"DNBsearchResultClass\":\"DNBwebSearch\",\"duns_number\":\"\",\"businessName\":\"\",\"SICCode\":\"\",\"SICCodeDescr\":\"\",\"Tradestyle\":\"\",\"StartYear\":\"");
        	jsonData.append("\",\"Address\":\"\",\"City\":\"\",\"State\":\"\",\"Zip\":\"\",\"Latitude\":\"\",\"Longitude\":\"\",\"CountryCode\":\"\",\"Telephone\":\"");
        	jsonData.append("\",\"CEO\":\"\",\"CEO_FN\":\"\",\"CEO_MN\":\"\",\"CEO_LN\":\"");
        	jsonData.append("\",\"FirstExec\":\"\",\"FirstExecFN\":\"\",\"FirstExecMN\":\"\",\"FirstExecLN\":\"");
        	jsonData.append("\",\"SecondExec\":\"\",\"SecondExecFN\":\"\",\"SecondExecMN\":\"\",\"SecondExecLN\":\"");
        	jsonData.append("\",\"ThirdExec\":\"\",\"ThirdExecFN\":\"\",\"ThirdExecMN\":\"\",\"ThirdExecLN\":\"");
        	jsonData.append("\",\"FourthExec\":\"\",\"FourthExecFN\":\"\",\"FourthExecMN\":\"\",\"FourthExecLN\":\"");
        	jsonData.append("\",\"FifthExec\":\"\",\"FifthExecFN\":\"\",\"FifthExecMN\":\"\",\"FifthExecLN\":\"");
        	jsonData.append("\",\"SixthExec\":\"\",\"SixthExecFN\":\"\",\"SixthExecMN\":\"\",\"SixthExecLN\":\"");
        	jsonData.append("\",\"SeventhExec\":\"\",\"SeventhExecFN\":\"\",\"SeventhExecMN\":\"\",\"SeventhExecLN\":\"");
        	jsonData.append("\",\"EighthExec\":\"\",\"EighthExecFN\":\"\",\"EighthExecMN\":\"\",\"EighthExecLN\":\"");
        	jsonData.append("\",\"NinthExec\":\"\",\"NinthExecFN\":\"\",\"NinthExecMN\":\"\",\"NinthExecLN\":\"");
        	jsonData.append("\",\"TenthExec\":\"\",\"TenthExecFN\":\"\",\"TenthExecMN\":\"\",\"TenthExecLN\":\"");
        	jsonData.append("\",\"Employees\":\"\",\"Physical_Country_Name\":\"\",\"Tradestyle\":\"");
        	jsonData.append("\",\"Out_Of_Business\":\"\",\"LOB\":\"");
        	jsonData.append("\",\"glbl_ult_country\":\"");
        	jsonData.append("\",\"loc_sub\":\"\",\"heirarchy_cd\":\"\",\"location_type_cd\":\"");
        	jsonData.append("\",\"Full_Tree\":\"\",\"totalResults\":\"0\",\"URL\":\"http://www.intelliwaresystems.com\"},");
        	jsonData.append("],\"cursor\":{\"pages\":[{\"start\":\"0\",\"label\":1}],\"estimatedResultCount\":");
        	jsonData.append("\"0\",\"currentPageIndex\":0,\"moreResultsUrl\":\"http:\\\\apps.intelliwaresystems.com\"}}, \"responseDetails\": null, \"responseStatus\": 200}");
        }else{
        	jsonData.append("{\"responseData\": {\"results\":[");
            while (results.next())
            	
            {
            jsonData.append("{\"DNBsearchResultClass\":\"DNBwebSearch\",\"duns_number\":\"" +  results.getString("DUNS_NBR") +  "\",\"businessName\":\"" +results.getString("BUSINESS_NAME") +  "\",\"SICCode\":\"" + results.getString("PRIMARY_SIC_CD") + "\",\"SICCodeDescr\":\"" + results.getString("SIC_CODE_DESCR") + "\",\"Tradestyle\":\"");
            if (StringUtils.isBlank(results.getString("TRADESTYLE"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("TRADESTYLE"));
            }
            jsonData.append("\",\"StartYear\":\"" + results.getString("Start_Year"));
            jsonData.append("\",\"Address\":\"" + results.getString("PHYSICAL_ST_ADDR_1") + "\",\"City\":\"" + results.getString("PHYSICAL_CITY") +"\",\"State\":\"" + results.getString("PHYSICAL_ST_ABBR") + "\",\"Zip\":\"" + results.getString("PHYSICAL_ZIP") + "\",\"Physical_Country_Name\":\"" + results.getString("PHYSICAL_COUNTRY_NAME"));
            jsonData.append("\",\"CountryCode\":\"");
            if (StringUtils.isBlank(results.getString("COUNTRY_ACCESS_CODE"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("COUNTRY_ACCESS_CODE"));
            }
            jsonData.append("\",\"Telephone\":\"");
            if (StringUtils.isBlank(results.getString("TELEPHONE"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("TELEPHONE"));
            }
            jsonData.append("\",\"CEO\":\""); 
            if (StringUtils.isBlank(results.getString("CEO_FULL_NAME"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("CEO_FULL_NAME"));
            }
            jsonData.append("\",\"FirstExec\":\""); 
            if (StringUtils.isBlank(results.getString("FIRST_EX_FULL_NAME"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("FIRST_EX_FULL_NAME"));
            }
            jsonData.append("\",\"SecondExec\":\""); 
            if (StringUtils.isBlank(results.getString("SECOND_EX_FULL_NAME"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("SECOND_EX_FULL_NAME"));
            }
            jsonData.append("\",\"ThirdExec\":\""); 
            if (StringUtils.isBlank(results.getString("THIRD_EX_FULL_NAME"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("THIRD_EX_FULL_NAME"));
            }
            jsonData.append("\",\"FourthExec\":\""); 
            if (StringUtils.isBlank(results.getString("FOURTH_EX_FULL_NAME"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("FOURTH_EX_FULL_NAME"));
            }
            jsonData.append("\",\"FifthExec\":\""); 
            if (StringUtils.isBlank(results.getString("FIFTH_EX_FULL_NAME"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("FIFTH_EX_FULL_NAME"));
            }
            jsonData.append("\",\"SixthExec\":\""); 
            if (StringUtils.isBlank(results.getString("SIXTH_EX_FULL_NAME"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("SIXTH_EX_FULL_NAME"));
            }
            jsonData.append("\",\"SeventhExec\":\""); 
            if (StringUtils.isBlank(results.getString("SEVENTH_EX_FULL_NAME"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("SEVENTH_EX_FULL_NAME"));
            }
            jsonData.append("\",\"EighthExec\":\""); 
            if (StringUtils.isBlank(results.getString("EIGHTH_EX_FULL_NAME"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("EIGHTH_EX_FULL_NAME"));
            }
            jsonData.append("\",\"NinthExec\":\""); 
            if (StringUtils.isBlank(results.getString("NINTH_EX_FULL_NAME"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("NINTH_EX_FULL_NAME"));
            }
            jsonData.append("\",\"TenthExec\":\""); 
            if (StringUtils.isBlank(results.getString("TENTH_EX_FULL_NAME"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("TENTH_EX_FULL_NAME"));
            }
            jsonData.append("\",\"EleventhExec\":\""); 
            if (StringUtils.isBlank(results.getString("ELEVENTH_EX_FULL_NAME"))){
            	jsonData.append("");
            }else{
            	jsonData.append(results.getString("ELEVENTH_EX_FULL_NAME"));
            }
            jsonData.append("\",\"Employees\":\"" + results.getString("EMP_TOTAL") + "\",\"glbl_ult_country\":\"" + results.getString("GLBL_ULT_COUNTRY") + "\",\"Tradestyle\":\"" + results.getString("TRADESTYLE"));
            jsonData.append("\",\"Out_Of_Business\":\"" + results.getString("OUT_BUS_FLAG") + "\",\"LOB\":\"" + results.getString("LINE_OF_BUSINESS"));
            jsonData.append("\",\"loc_sub\":\"" + results.getString("LOC_SUB") + "\",\"heirarchy_cd\":\"" + results.getString("HEIRARCHY_CD") + "\",\"location_type_cd\":\"" + results.getString("LOCATION_TYPE_CD"));
            jsonData.append("\",\"Full_Tree\":\"" + results.getString("FULL_TREE") + "\",\"totalResults\":\"" + vMaxResults + "\",\"URL\":\"\"},");            
            }
            jsonData.append("],\"cursor\":{\"pages\":[{\"start\":\"0\",\"label\":1}],\"estimatedResultCount\":");
            jsonData.append("\"" +  vMaxResults + "\",\"currentPageIndex\":0,\"moreResultsUrl\":\"http:\\\\apps.intelliwaresystems.com\"}}, \"responseDetails\": null, \"responseStatus\": 200}");
        }
        return jsonData.toString();
    }    
 
    public static String getTxtOutput (ResultSet results)
    throws SQLException
    {
        StringBuffer htmlRows = new StringBuffer();
        
    	htmlRows.append("DUNS Number|Global Ultimate Duns|Global Ultimate Name|Global Ultimate Country|Global Ultimate Address|Company name|Tradestyle|Line of Business|SIC Code|Address|Start Year|Active_Inactive|CEO|Exec1|Exec2|Exec3|Exec4|Exec5|Exec6|Exec7|Exec8|Exec9|Exec10");

    	htmlRows.append("\n");

        ResultSetMetaData metaData = results.getMetaData();
        
        while (results.next())
        {
        	htmlRows.append(results.getString("DUNS_NBR"));
        	htmlRows.append("|");
        	htmlRows.append(results.getString("GLBL_ULT_DUNS_NBR"));
        	htmlRows.append("|");
      		if (results.getString("GLBL_ULT_NAME") != null){
      			htmlRows.append(results.getString("GLBL_ULT_NAME"));
      		}
        	htmlRows.append("|");
      		if (results.getString("GLBL_ULT_COUNTRY") != null){
      			htmlRows.append(results.getString("GLBL_ULT_COUNTRY"));
      		}
        	htmlRows.append("|");
      		if (results.getString("GLBL_ULT_PHYSICAL_ADDR") != null){
      			htmlRows.append(results.getString("GLBL_ULT_PHYSICAL_ADDR"));
      		}
        	htmlRows.append(" ");
      		if (results.getString("GLBL_ULT_CITY") != null){
      			htmlRows.append(results.getString("GLBL_ULT_CITY"));
      		}
        	htmlRows.append(",");
      		if (results.getString("GLBL_STATE_ABBR") != null){
      			htmlRows.append(results.getString("GLBL_STATE_ABBR"));
      		}
        	htmlRows.append("|");
        	htmlRows.append(results.getString("BUSINESS_NAME"));
        	htmlRows.append("|");
            if (results.getString("Tradestyle") != null){
            	htmlRows.append(results.getString("Tradestyle")); 
            }
        	htmlRows.append("|");
        	htmlRows.append(results.getString("LINE_OF_BUSINESS"));
        	htmlRows.append("|");
        	htmlRows.append(results.getString("PRIMARY_SIC_CD"));
        	htmlRows.append("|");
        	htmlRows.append(results.getString("PHYSICAL_ST_ADDR_1"));
        	htmlRows.append(" ");
        	htmlRows.append(results.getString("PHYSICAL_CITY"));
        	htmlRows.append(",");
        	htmlRows.append(results.getString("PHYSICAL_ST_ABBR"));
        	htmlRows.append(" ");
        	htmlRows.append(results.getString("PHYSICAL_COUNTRY_NAME"));
        	htmlRows.append("|");
       		if (results.getString("START_YEAR") != null){
       			htmlRows.append(results.getString("START_YEAR"));
       		}
        	htmlRows.append("|");
        	htmlRows.append(results.getString("OUT_BUS_FLAG"));
        	htmlRows.append("|");
       		if (results.getString("CEO_FULL_NAME") != null){
       			htmlRows.append(results.getString("CEO_FULL_NAME"));
       		}
       		htmlRows.append("|");
       		if (results.getString("FIRST_EX_FULL_NAME") != null){
       			htmlRows.append(results.getString("FIRST_EX_FULL_NAME"));
       		}
        	htmlRows.append("|");
       		if (results.getString("SECOND_EX_FULL_NAME") != null){
       			htmlRows.append(results.getString("SECOND_EX_FULL_NAME"));
       		}
        	htmlRows.append("|");
       		if (results.getString("THIRD_EX_FULL_NAME") != null){
       			htmlRows.append(results.getString("THIRD_EX_FULL_NAME"));
       		}
        	htmlRows.append("|");
       		if (results.getString("FOURTH_EX_FULL_NAME") != null){
       			htmlRows.append(results.getString("FOURTH_EX_FULL_NAME"));
       		}
        	htmlRows.append("|");
       		if (results.getString("FIFTH_EX_FULL_NAME") != null){
       			htmlRows.append(results.getString("FIFTH_EX_FULL_NAME"));
       		}
        	htmlRows.append("|");
       		if (results.getString("SIXTH_EX_FULL_NAME") != null){
       			htmlRows.append(results.getString("SIXTH_EX_FULL_NAME"));
       		}
        	htmlRows.append("|");
       		if (results.getString("Ninth_EX_FULL_NAME") != null){
       			htmlRows.append(results.getString("Ninth_EX_FULL_NAME"));
       		}
        	htmlRows.append("|");
       		if (results.getString("EIGHTH_EX_FULL_NAME") != null){
       			htmlRows.append(results.getString("EIGHTH_EX_FULL_NAME"));
       		}
        	htmlRows.append("|");
       		if (results.getString("NINTH_EX_FULL_NAME") != null){
       			htmlRows.append(results.getString("NINTH_EX_FULL_NAME"));
       		}
        	htmlRows.append("|");
       		if (results.getString("TENTH_EX_FULL_NAME") != null){
       			htmlRows.append(results.getString("TENTH_EX_FULL_NAME"));
       		}
        	htmlRows.append("\r\n");
        }
        
        return htmlRows.toString();
    }
    
    
   
    
}