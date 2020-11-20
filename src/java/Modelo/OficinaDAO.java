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
public class OficinaDAO {

    Conexion cn = new Conexion();
    Connection Conectar;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    public List mostrar() {
        String sql = "select * from oficina";
        List<Oficina> listaOf = new ArrayList<>();
        try {
            Conectar = cn.Conexion();
            ps = Conectar.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Oficina of = new Oficina();
                of.setId(rs.getInt(1));
                of.setNom(rs.getString(2));
                of.setDir(rs.getString(3));
                listaOf.add(of);
            }
        } catch (Exception e) {

        }
        return listaOf;
    }

    public int agregar(Oficina o) {
        String sql = "insert into oficina(Nombre, Direccion)values(?,?)";
        try {
            Conectar = cn.Conexion();
            ps = Conectar.prepareStatement(sql);
            ps.setString(1, o.getNom());
            ps.setString(2, o.getDir());
            ps.executeUpdate();

        } catch (Exception e) {

        }
        return r;
    }

}
