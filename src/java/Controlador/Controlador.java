package Controlador;

import Modelo.Colaborador;
import Modelo.ColaboradorDAO;
import Modelo.Oficina;
import Modelo.OficinaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lainc
 */
public class Controlador extends HttpServlet {

    ColaboradorDAO codao = new ColaboradorDAO();
    Colaborador co = new Colaborador();
    OficinaDAO ofdao = new OficinaDAO();
    Oficina ofi;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        if (menu.equals("Colaborador")) {
            switch (accion) {
                case "Listar":
                    List lista = codao.listar();
                    List listaOf = ofdao.mostrar();
                    request.setAttribute("oficinas", listaOf);
                    request.setAttribute("colaboradores", lista);
                    break;
                case "Agregar":
                    int rut = Integer.parseInt(request.getParameter("txtRutColaborador"));
                    String nombre = request.getParameter("txtNombre");
                    String apellido = request.getParameter("txtApellido");
                    String usuario = request.getParameter("txtUsuario");
                    String password = request.getParameter("txtPassword");
                    String direccion = request.getParameter("txtDireccion");
                    String correo = request.getParameter("txtCorreo");
                    int telefono = Integer.parseInt(request.getParameter("txtTelefono"));
                    String acceso = request.getParameter("cbAcceso");
                    ofi=new Oficina();
                    ofi.setId(Integer.parseInt(request.getParameter("cbOficina")));
                    co.setRutColaborador(rut);
                    co.setNombre(nombre);
                    co.setApellido(apellido);
                    co.setUsuario(usuario);
                    co.setPassword(password);
                    co.setDireccion(direccion);
                    co.setCorreo(correo);
                    co.setTelefono(telefono);
                    co.setTipoAcceso(acceso);                   
                    co.setOficina(ofi);
                    codao.agregar(co);
                    request.getRequestDispatcher("Controlador?menu=Colaborador&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    break;
                case "Eliminar":
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Colaborador.jsp").forward(request, response);
        }
        if (menu.equals("Empresa")) {
            request.getRequestDispatcher("Empresas.jsp").forward(request, response);
        }
        if (menu.equals("Surcusal")) {
            request.getRequestDispatcher("Oficina.jsp").forward(request, response);
        }
        if (menu.equals("Pago")) {
            request.getRequestDispatcher("MedioPago.jsp").forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
