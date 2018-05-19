package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class adminLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html; charset=utf-8");
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
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n");
      out.write("<html lang=\"zh-CN\" class=\"bootstrap-admin-vertical-centered\">\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<title>图书馆管理系统后台</title>\n");
      out.write("\t    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/css/bootstrap.min.css\">\n");
      out.write("\t    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/css/bootstrap-theme.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/css/bootstrap-admin-theme.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/css/bootstrap-admin-theme.css\">\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/jQuery/jquery-3.1.1.min.js\"></script>\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/ajax-lib/ajaxutils.js\"></script>\n");
      out.write("         <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/js/adminLogin.js\"></script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<style type=\"text/css\">\n");
      out.write("    <!--这边啥意思-->\n");
      out.write("    <!--这边不是js 这边只是为警示框设置一下格式-->\n");
      out.write("        .alert{\n");
      out.write("            margin: 0 auto 20px;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/js/jquery.min.js\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<body class=\"bootstrap-admin-without-padding\">\n");
      out.write("<!--这边div有次序吗-->\n");
      out.write("<!--题外话 可以使用google开发者工具体验-->\n");
      out.write("<!--row就是一行 col是一列的意思-->\n");
      out.write("<!--div里面的总是比外面的小两边空白 主要用来布局-->\n");
      out.write("<div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-12\">\n");
      out.write("            <!--这边文字位置好像不对啊-->\n");
      out.write("            <!--对于上一层div 叉号的相对位置是确定的-->\n");
      out.write("            <div class=\"alert alert-info\">\n");
      out.write("                <!--这边href=\"#\"什么意思-->\n");
      out.write("                <!--点击这个叉号之后 就链接到本页面-->\n");
      out.write("                \n");
      out.write("                <!--&times啥意思-->\n");
      out.write("                <!---->\n");
      out.write("                <a class=\"close\" data-dismiss=\"alert\" href=\"#\">&times;</a>\n");
      out.write("                欢迎登录图书馆管理系统后台\n");
      out.write("            </div>\n");
      out.write("            <!--大框架套小框架-->\n");
      out.write("            <form class=\"bootstrap-admin-login-form\"><!--引用大框架-->\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"firstname\" for=\"username\">账&nbsp;号</label>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"username\" placeholder=\"管理员用户名\"/>\n");
      out.write("                    <label class=\"control-label\" for=\"username\" style=\"display:none;\"></label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"firstname\" for=\"password\">密&nbsp;码</label>\n");
      out.write("                    <input type=\"password\" class=\"form-control\" id=\"password\" placeholder=\"密码\"/>\n");
      out.write("                    <label class=\"control-label\" for=\"username\" style=\"display:none;\"></label>\n");
      out.write("                </div>\n");
      out.write("                <input type=\"button\" class=\"btn btn-lg btn-primary\" id=\"login_submit\" value=\"登&nbsp;&nbsp;&nbsp;&nbsp;录\"/>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div class=\"modal fade\" id=\"modal_info\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"addModalLabel\">\n");
      out.write("    <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("            <div class=\"modal-header\">\n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n");
      out.write("                <h4 class=\"modal-title\" id=\"infoModalLabel\">提示</h4>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-body\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\" id=\"div_info\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-footer\">\n");
      out.write("                <button type=\"button\" class=\"btn btn-default\" id=\"btn_info_close\" data-dismiss=\"modal\">关闭</button>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
