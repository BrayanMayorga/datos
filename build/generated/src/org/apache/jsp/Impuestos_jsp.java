package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Impuestos_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Impuestos</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>        \n");
      out.write("\n");
      out.write("    <center>\n");
      out.write("        <h3>Pago de Impuestos</h3>\n");
      out.write("    </center>\n");
      out.write("    <br>\n");
      out.write("\n");
      out.write("    <div class=\"d-flex\">\n");
      out.write("        <div class=\"col-sm-4\">\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <form action=\"Controlador?menu=Colaborador\" method=\"POST\">\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Rut:</label>\n");
      out.write("                            <input type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empleado.getDni()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"txRut\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Nombre:</label>\n");
      out.write("                            <input type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empleado.getNom()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"txtNombre\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Apellido:</label>\n");
      out.write("                            <input type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empleado.getTel()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"txtApellido\" class=\"form-control\">\n");
      out.write("                        </div> \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Rut Empresa:</label>\n");
      out.write("                            <input type=\"text\"value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empleado.getTel()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"txtPass\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Fecha de emision:</label>\n");
      out.write("                            <input type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empleado.getEstado()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"txtDireccion\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Direccion</label>\n");
      out.write("                            <input type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empleado.getUser()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"txtTelefono\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Monto a pagar:</label>\n");
      out.write("                            <input type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empleado.getUser()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"txtTelefono\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                </div>                         \n");
      out.write("            </div>\n");
      out.write("        </div>                     \n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <center>\n");
      out.write("        <h3>Detalle</h3>\n");
      out.write("    </center>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"col-xs-6\">\n");
      out.write("        <h1><a href=\" \"><img alt=\"\" src=\"logo.png\" /> logo </a></h1>\n");
      out.write("        <h1>nombre de la persona</h1>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-xs-6 text-right\">\n");
      out.write("        <h1>Impuestos</h1>\n");
      out.write("        <h1><small>N°3</small></h1>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <hr />\n");
      out.write("\n");
      out.write("    <pre>\n");
      out.write("<h5>\n");
      out.write("    <label>rut empresa</label>  \n");
      out.write("    <label>Giro</label>\n");
      out.write("   <label> Direccion</label>\n");
      out.write("   <label> Fecha</label>\n");
      out.write("   <label> Rut Empresa</label>\n");
      out.write("   <label> Domicilio</label>\n");
      out.write(" </h5>  \n");
      out.write("    </pre>\n");
      out.write("    <table class=\"table table-bordered\">\n");
      out.write("        <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>\n");
      out.write("                    <h4>Descripcion</h4>\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    <h4>Total Impuestos</h4>\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    <h4>Total</h4>\n");
      out.write("                </th>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("            <tr>\n");
      out.write("                <td>Artículo </td>\n");
      out.write("                <td><a href=\"#\"> </a></td>\n");
      out.write("                <td class=\" text-right \">-</td>\n");
      out.write("                <td class=\" text-right \"></td>\n");
      out.write("                <td class=\" text-right \"></td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
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
