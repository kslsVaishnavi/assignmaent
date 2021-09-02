package webapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyWebApp extends HttpServlet {
    private static final long serialVersionUID = 1L;
   
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyWebApp() {
        super();
    }

        
        

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Username = request.getParameter("name");
        String Password = request.getParameter("password");
        String cardtype = request.getParameter("card");
        String check = request.getParameter("bal");
       
      List<String> useLst = new ArrayList();
       useLst.add(Username);
       useLst.add(Password);
       useLst.add(cardtype);
       useLst.add(check);
       response.getWriter().append(" "+useLst);
    
      
	
    }

 

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

 

}