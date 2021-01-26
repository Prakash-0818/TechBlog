package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_005fpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/normal_navbar.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Register-page</title>\n");
      out.write("        <!--css-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" \n");
      out.write("        integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"css/mystyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <style>\n");
      out.write("           .banner-background{\n");
      out.write("            clip-path : polygon(50% 0%, 80% 0, 100% 0, 100% 100%, 75% 95%, 50% 100%, 22% 94%, 0 100%, 0 0, 16% 0);\n");
      out.write("           }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"index.jsp\"><span class=\"fa fa-laptop\"></span> Blogger.com</a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("          <a class=\"nav-link\" href=\"#\"><span class=\"fa fa-home\"> Home</span><span class=\"sr-only\">(current)</span></a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("         <span class=\"fa fa-bars\"></span> Categories\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Programming-Language</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">java</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">javaScript</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Python</a>\n");
      out.write("          \n");
      out.write("          <div class=\"dropdown-divider\"></div>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Project-Implementation</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Data-Structure</a> \n");
      out.write("          <div class=\"dropdown-divider\"></div>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\"></a>\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("       <li class=\"nav-item\">\n");
      out.write("           <a class=\"nav-link\" href=\"#\"><span class=\"fa fa-address-card\"></span> Contact</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("           <a class=\"nav-link\" href=\"login_page.jsp\"><span class=\"fa fa-user\"></span> Login</a>\n");
      out.write("      </li>\n");
      out.write("       <li class=\"nav-item active\">\n");
      out.write("           <a class=\"nav-link\" href=\"register_page.jsp\"><span class=\"fa fa-user-plus\"></span> Sign-up</a>\n");
      out.write("      </li>\n");
      out.write("    </ul>\n");
      out.write("    <form class=\"form-inline my-2 my-lg-0\">\n");
      out.write("      <input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("      <button class=\"btn btn-outline-light my-2 my-sm-0\" type=\"submit\">Search</button>\n");
      out.write("    </form>\n");
      out.write("  </div>\n");
      out.write("</nav>");
      out.write("\n");
      out.write("        <main class=\"d-flex align-items-center bg-primary banner-background p-5\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"col-md-6 offset-md-3\">\n");
      out.write("                    <div class=\"card\">\n");
      out.write("                        <div class=\"card-header bg-primary text-center text-white\">\n");
      out.write("                            <span class=\"fa fa-user-plus fa-3x\"></span>\n");
      out.write("                            <br>\n");
      out.write("                            <h3>Register here!!</h3>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <form id=\"reg-form\" action=\"RegisterServlet\" method=\"POST\">\n");
      out.write("   <div class=\"form-group\">\n");
      out.write("    <label for=\"user_name\">User Name</label>\n");
      out.write("    <input type=\"text\" name=\"user_name\" class=\"form-control\" id=\"user_name\" aria-describedby=\"emailHelp\" placeholder=\"Enter name\">\n");
      out.write("    \n");
      out.write("  </div>   \n");
      out.write("   \n");
      out.write("                               \n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label for=\"exampleInputEmail1\">Email address</label>\n");
      out.write("    <input type=\"email\" name=\"user_email\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" placeholder=\"Enter email\">\n");
      out.write("  </div>\n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label for=\"exampleInputPassword1\">Password</label>\n");
      out.write("    <input type=\"password\"  name=\"user_password\"class=\"form-control\" id=\"exampleInputPassword1\" placeholder=\"Password\">\n");
      out.write("  </div>\n");
      out.write("      \n");
      out.write("    <div class=\"form-group\">\n");
      out.write("    <label for=\"gender\">Select Gender</label>\n");
      out.write("    <br>\n");
      out.write("    \n");
      out.write("    <input type=\"radio\" id=\"gender\" name=\"gender\" value=\"male\"> Male\n");
      out.write("    <input type=\"radio\" id=\"gender\" name=\"gender\" value=\"female\"> Female\n");
      out.write("    <input type=\"radio\" id=\"gender\" name=\"gender\" value=\"others\"> Others\n");
      out.write("  </div>\n");
      out.write("      \n");
      out.write("     <div class=\"form-group\">\n");
      out.write("     <textarea name=\"about\" class=\"form-control\" id=\"about\" cols=\"\" rows=\"\" placeholder=\"Enter Something about yourself\"></textarea>\n");
      out.write("     </div>\n");
      out.write("                                                            \n");
      out.write("                        \n");
      out.write("                                \n");
      out.write("  <div class=\"form-check\">\n");
      out.write("      <input type=\"checkbox\"  name=\"check\" class=\"form-check-input\" id=\"exampleCheck1\">\n");
      out.write("    <label class=\"form-check-label\" for=\"exampleCheck1\">agree terms and conditions</label>\n");
      out.write("  </div>\n");
      out.write("  <br>\n");
      out.write("  <div class=\"container text-center\" id=\"loader\" style=\"display: none;\">\n");
      out.write("   <span class=\"fa fa-refresh fa-spin fa-2x\"></span>\n");
      out.write("     <h4>Please wait...</h4>\n");
      out.write("     </div>\n");
      out.write("  <button id=\"sumbimt-btn\" type=\"submit\" class=\"btn btn-primary\">Register</button>\n");
      out.write("</form>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                       \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </main>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("         <script\n");
      out.write("         src=\"https://code.jquery.com/jquery-3.5.1.min.js\"\n");
      out.write("         integrity=\"sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=\"\n");
      out.write("         crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" \n");
      out.write("        integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" \n");
      out.write("        integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"js/myjs.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("           \n");
      out.write("           $(document).ready(function(){\n");
      out.write("               console.log(\"loaded\")\n");
      out.write("               \n");
      out.write("               $('#reg-form').on('submit',function(event){\n");
      out.write("                   event.preventDefault();\n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("                   let form=new FormData(this);\n");
      out.write("                   \n");
      out.write("                   $(\"#sumbimt-btn\").hide();\n");
      out.write("                   $(\"#loader\").show();\n");
      out.write("                   \n");
      out.write("                   //send register servlet;\n");
      out.write("                   $.ajax({\n");
      out.write("                      url: \"RegisterServlet\",\n");
      out.write("                      type: 'POST',\n");
      out.write("                      data: form,\n");
      out.write("                      success: function (data, textStatus,  jqXHR){\n");
      out.write("                          \n");
      out.write("                          console.log(data)\n");
      out.write("                          $(\"#sumbimt-btn\").show();\n");
      out.write("                          $(\"#loader\").hide();\n");
      out.write("                      },\n");
      out.write("                      error: function(jqXHR, textStatus,errorThrown){\n");
      out.write("                        console.log(jqXHR)\n");
      out.write("                         $(\"#sumbimt-btn\").show();\n");
      out.write("                          $(\"#loader\").hide(); \n");
      out.write("            \n");
      out.write("                             \n");
      out.write("});\n");
      out.write("                      },\n");
      out.write("                      processData: false,\n");
      out.write("                       contentType: false\n");
      out.write("            \n");
      out.write("                   });\n");
      out.write("                   \n");
      out.write("               });\n");
      out.write("           });\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
