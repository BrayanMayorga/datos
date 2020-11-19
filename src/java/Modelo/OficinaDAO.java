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

}
