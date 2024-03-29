package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import bean.UserBeans;
import model.UserModel;
import javaWebApplication.utility.DataUtility;
import javaWebApplication.utility.ServletUtility;



/**
 * Servlet implementation class LoginCTL
 */
@WebServlet(name= "LoginCTL", urlPatterns = {"LoginCTL"})
public class LoginCTL extends HttpServlet {
	boolean status;
  private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCTL() {
        super();
        // TODO Auto-generated constructor stub
    }
  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    String op = DataUtility.getString(request.getParameter("operation"));
    HttpSession session=request.getSession(false);
    if("logout".equalsIgnoreCase(op)) {
      session.invalidate();
      ServletUtility.setSuccessMessage("LogoutSucessfully",request);
      
    }
    ServletUtility.forward("jsp/login.jsp", request, response);
    
  }
  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
       UserBeans user = new UserBeans();
       String login=request.getParameter("login");
       String pwd=request.getParameter("password");
      
       HttpSession session=request.getSession(true);
       user = UserModel.UserLogin(login,pwd);
       if(user != null) {
    	   status = true;
         session.setAttribute("user", user.getFirstName());
         //ServletUtility.setSuccessMessage(request.getParameter("login")+ " is login successfully", request);
         ServletUtility.redirect("jsp/welcome.jsp", request, response);
       }else {
    	   status = false;
         ServletUtility.setErrorMessage("Invalid User", request);
         ServletUtility.forward("jsp/login.jsp", request, response);
       }
  }
}