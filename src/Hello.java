

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Hello
 */
@WebServlet("/Hello")
public class Hello extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Hello() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("email1");//will return value 
		String mob=request.getParameter("mob1");//will return value 
		String quer=request.getParameter("query1");//will return value 
		String name=request.getParameter("name1");//will return value
		Pattern VALID_EMAIL_ADDRESS_REGEX=Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
//		boolean b3 = Pattern.matches("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",email);  
		Matcher matcher = VALID_EMAIL_ADDRESS_REGEX .matcher(email);
//		Sys
		if(matcher.find())
		{
			request.setAttribute("myname",name);
			//add in db
			try{  
				Class.forName("com.mysql.jdbc.Driver");  
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","rootpasswordgiven"); 
				PreparedStatement stmt=con.prepareStatement("insert into Contacts values(?,?,?)");
				stmt.setString(1,mob);
				stmt.setString(2, name);
				stmt.setString(3, quer);
				int i=stmt.executeUpdate();  
				System.out.println(i+" records inserted");  
				  
				con.close(); 
			}catch(Exception e){ System.out.println(e);}
			request.getRequestDispatcher("/Welcome.jsp").forward(request, response); 
		}
		else
		{
			out.print("<html><body>");
			out.print("<h1>Please Enter Correct data</h1>" + name + email + mob + quer);
			out.print("</body></html>");			
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
