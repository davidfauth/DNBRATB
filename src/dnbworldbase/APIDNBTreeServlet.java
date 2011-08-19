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

public class APIDNBTreeServlet extends HttpServlet
{    
    protected void doPost(HttpServletRequest request, 
                         HttpServletResponse response)
                         throws ServletException, IOException
    {
        // get parameters from the request
    	String dnbMaxResults = "";
        String dunsNumber = request.getParameter("duns_number");
        dnbMaxResults = request.getParameter("max_records");
        String dnbOutput = request.getParameter("datatype");
        String vstateval = "";
        String dnbTable = "";

        if (dnbMaxResults != null){
        }else{
        	dnbMaxResults = "1000";
        }
        
        

        String url = "";
        String message = "";
        String dnbHeaderInfo = DNBDisplay.setDNBResultHeader();
        try {
			dnbTable = DNBDB.queryDNBAPITREE(dunsNumber, Integer.parseInt(dnbMaxResults),dnbOutput);
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
//			response.setContentType("application/json; charset=utf-8");
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
