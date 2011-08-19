package dnbworldbase;

import java.io.*;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.*;

public class TreeViewTextServlet extends HttpServlet
{    
    protected void doPost(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException
{
// get parameters from the request
String strSelectedDNBNumbers = request.getParameter("dunsnbr");
String strAction = request.getParameter("view");
String url = "";

url = "/TreeView?dunsnbr=" + strSelectedDNBNumbers + "&output=text";
// forward the request and response to the view
RequestDispatcher dispatcher =
getServletContext().getRequestDispatcher(url);
dispatcher.forward(request, response);        
}    
    public void doGet(HttpServletRequest request, 
            HttpServletResponse response)
    throws ServletException, IOException
    {
    	doPost(request,response);
    }
}
