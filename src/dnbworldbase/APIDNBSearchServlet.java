package dnbworldbase;

import java.io.*;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.*;

import business.User;
import data.UserDB;
import data.DNBDB;
import display.DNBDisplay;
import business.DNBCompany;

public class APIDNBSearchServlet extends HttpServlet
{    
    protected void doPost(HttpServletRequest request, 
                         HttpServletResponse response)
                         throws ServletException, IOException
    {
        // get parameters from the request
    	String dnbMaxResults = "";
    	String vStartRow = "";
    	String vEndRow = "";
    	String dunsNumber = null;
    	String companyName = null;
    	String vSIC = null;
    	String dnbZip = null;
    	String dnbAddress = null;
    	String dnbCity = null;
    	String dnbState = null;
    	String dnbCountry = null;
    	String dnbActive = null;
        dunsNumber = request.getParameter("duns_number");
        companyName = request.getParameter("company_name");
        String vExecName = request.getParameter("exec_name");
        vSIC = request.getParameter("sic");
        dnbZip = request.getParameter("zipcode");
        dnbAddress = request.getParameter("address");
        dnbCity = request.getParameter("city");
        dnbState = request.getParameter("state");
        dnbCountry = request.getParameter("country");
        dnbActive = request.getParameter("active");
        dnbMaxResults = request.getParameter("max_records");
        vStartRow = request.getParameter("startrow");
        vEndRow = request.getParameter("endrow");
        String dnbOutput = request.getParameter("datatype");
        String vstateval = "";
        String dnbTable = "";

        if (dnbMaxResults != null){
        }else{
        	dnbMaxResults = "1000";
        }
        
        if (vStartRow != null){
        }else{
        	vStartRow = "1";
        }
        
        if (vEndRow != null){
        }else{
        	vEndRow = "1000";
        }
        
        if (dnbAddress != null){
        	dnbAddress = dnbAddress.toUpperCase();
        }else{
        	dnbAddress = null;
        }
        
        if (dnbCity != null){
        	dnbCity = dnbCity.toUpperCase();
        }else{
        	dnbCity = null;
        }
                
        if (dnbState!= null){
        	dnbState = dnbState.toUpperCase();
        }else{
        	dnbState = null;
        }
        if (dnbCountry != null){
        	dnbCountry = dnbCountry.toUpperCase();
        }else{
        	dnbCountry = null;
        }
        
        if (companyName != null){
        	companyName = companyName.toUpperCase();
        }else{
        	companyName = null;
        }

        if (vExecName != null){
        	vExecName = vExecName.toUpperCase();
        }else{
        	vExecName = null;
        }

        if (dnbActive != null){
        }else{
        	dnbActive = null;
        }
        if (dnbZip != null){
        }else{
        	dnbZip = null;
        }
        
        // create the User object
        

        String url = "";
        String message = "";
        String dnbHeaderInfo = DNBDisplay.setDNBResultHeader();
        try {
			dnbTable = DNBDB.queryDNBAPI(dunsNumber, companyName, vExecName, vSIC, dnbAddress, dnbCity, dnbZip, dnbState, dnbCountry, dnbActive, Integer.parseInt(dnbMaxResults),dnbOutput,Integer.parseInt(vStartRow),Integer.parseInt(vEndRow));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (dnbOutput.equals("html")){
	        response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<!doctype html public \"-//W3C//DTD HTML 4.0 Transitional//EN\">\n" +
        		dnbHeaderInfo + 
        		dnbTable + 
        		"</div></body>\n" +
        		"</html>\n");
			out.close();
		}else{
			response.setContentType("application/json; charset=utf-8");
//			response.setHeader("Content-Transfer-Encoding", "8bit");
			PrintWriter out = response.getWriter();
			out.println(dnbTable);
			out.close();			
		}
        
    } 
    
    public void doGet(HttpServletRequest request, 
            HttpServletResponse response)
    throws ServletException, IOException
    {
    	doPost(request,response);
    }    
    
}
