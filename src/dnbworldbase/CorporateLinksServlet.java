package dnbworldbase;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import business.DNBCompany;
import business.User;
import data.DNBDB;
import data.UserDB;
import display.DNBDisplay;

public class CorporateLinksServlet extends HttpServlet
{    
    protected void doPost(HttpServletRequest request, 
                         HttpServletResponse response)
                         throws ServletException, IOException
        {
        // get parameters from the request
    	String strAction = "";
        String strSelectedDNBNumbers = request.getParameter("companalyze");
        strAction = request.getParameter("view");
        String strQueryDetail = request.getParameter("dnbQuery");
        String url = "";
        
        if (strAction.equals("Detailed Report")){
        	url = "/DetailedReport?dunsnbr=" + strSelectedDNBNumbers;
        } else if (strAction.equals("All Report")){
        	url = "/AllReport?params="+ strQueryDetail;
        } else if (strAction.equals("Visualize")){
        	url = "/TreeView?dunsnbr=" + strSelectedDNBNumbers + "&output=html";
        } else {
        	url = "/TreeView?dunsnbr=" + strSelectedDNBNumbers + "&output=html";        	
        }
        	
        // forward the request and response to the view
        RequestDispatcher dispatcher =
             getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);        
    }    
}
