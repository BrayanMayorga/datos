package Modelo;

import configuracion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lainc
 */
public class ColaboradorDAO {

    Conexion cn = new Conexion();
    Connection Conectar;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    Oficina of = new Oficina();

    public Colaborador validar(String Usuario, String Password) {
        Colaborador co = new Colaborador();
        String sql = "select * from colaborador where Usuario=? and Password=?";
        try {
            Conectar = cn.Conexion();
            ps = Conectar.prepareStatement(sql);
            ps.setString(1, Usuario);
            ps.setString(2, Password);
            rs = ps.executeQuery();
            while (rs.next()) {
                co.setRutColaborador(rs.getInt("RutColaborador"));
                co.setUsuario(rs.getString("Usuario"));
                co.setPassword(rs.getString("Password"));
                co.setNombre(rs.getString("Nombre"));
                co.setApellido(rs.getString("Apellido"));
                co.setDireccion(rs.getString("Direccion"));
                co.setCorreo(rs.getString("Correo"));
                co.setTelefono(rs.getInt("Telefono"));
                co.setTipoAcceso(rs.getString("TipoDeAcceso"));
                of.setId(rs.getInt("oficinas"));
            }
        } catch (Exception e) {

        }
        return co;
    }

    public List listar() {
        String sql = "select * from colaborador";
        List<Colaborador> lista = new ArrayList<>();
        try {
            Conectar = cn.Conexion();
            ps = Conectar.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Colaborador co = new Colaborador();
                co.setRutColaborador(rs.getInt(1));
                co.setNombre(rs.getString(2));
                co.setApellido(rs.getString(3));
                co.setUsuario(rs.getString(4));
                co.setDireccion(rs.getString(5));
                co.setTelefono(rs.getInt(6));
                co.setCorreo(rs.getString(7));
                co.setPassword(rs.getString(8));
                co.setTipoAcceso(rs.getString(9));
                of.setId(rs.getInt(10));
                lista.add(co);
            }
        } catch (Exception e) {

        }
        return lista;
    }

    public int agregar(Colaborador c) {
        String sql = "insert into colaborador(RutColaborador,Nombre,Apellido,Usuario,Direccion,"
                + "Telefono,Correo,Password,TipoDeAcceso,IDOficina)values(?,?,?;?,?,?,?,?,?,?)";
        try {
            Conectar = cn.Conexion();
            ps = Conectar.prepareStatement(sql);
            ps.setInt(1, c.getRutColaborador());
            ps.setString(2, c.getNombre());
            ps.setString(3, c.getApellido());
            ps.setString(4, c.getUsuario());
            ps.setString(5, c.getDireccion());
            ps.setInt(6, c.getTelefono());
            ps.setString(7, c.getCorreo());
            ps.setString(8, c.getPassword());
            ps.setString(9, c.getTipoAcceso());
            ps.setInt(10, c.getOficina().getId());            
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return r;
    }

    public Colaborador listarRut(int rut) {
        Colaborador cola = new Colaborador();
        String sql = "select * from colaborador where RutColaborador=" + rut;
        try {
            Conectar = cn.Conexion();
            ps = Conectar.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                cola.setNombre(rs.getString(2));
                cola.setApellido(rs.getString(3));
                cola.setUsuario(rs.getString(4));
                cola.setTelefono(rs.getInt(5));
                cola.setCorreo(rs.getString(6));
                cola.setDireccion(rs.getString(7));
                cola.setTipoAcceso(rs.getString(8));
                of.setId(rs.getInt(9));
            }
        } catch (Exception e) {

        }
        return cola;
    }

    public int actualizar(Colaborador c) {
        String sql = "update colaborador set Nombre=?, Apellido=?, Usuario=?, Direccion=?, Telefono=?, Correo=?, Password=?, TipoDeAcceso=?, IDOficina=? where RutColaborador=?";
        try {
            Conectar = cn.Conexion();
            ps = Conectar.prepareStatement(sql);
            ps.setString(1, c.getNombre());
            ps.setString(2, c.getApellido());
            ps.setString(3, c.getUsuario());
            ps.setString(4, c.getDireccion());
            ps.setInt(5, c.getTelefono());
            ps.setString(6, c.getCorreo());
            ps.setString(7, c.getPassword());
            ps.setString(8, c.getTipoAcceso());
            //ps.setInt(9, c.getIDOficina());
            ps.setInt(10, c.getRutColaborador());
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return r;
    }

    public void eliminar(int rutColaborador) {
        String sql = "delete from colaborador where RutColaborador=" + rutColaborador;
        try {
            Conectar = cn.Conexion();
            ps = Conectar.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
}
