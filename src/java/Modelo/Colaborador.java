package Modelo;
/**
 *
 * @author lainc
 */
public class Colaborador {
    int RutColaborador;
    int Telefono;
    int IdOficina;
    String Nombre;
    String Apellido;
    String Usuario;
    String Direccion;
    String Correo;
    String Password;
    String TipoAcceso;

    public Colaborador() {
    }

    public Colaborador(int RutColaborador, int Telefono, int IdOficina, String Nombre, String Apellido, String Usuario, String Direccion, String Correo, String Password, String TipoAcceso) {
        this.RutColaborador = RutColaborador;
        this.Telefono = Telefono;
        this.IdOficina = IdOficina;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Usuario = Usuario;
        this.Direccion = Direccion;
        this.Correo = Correo;
        this.Password = Password;
        this.TipoAcceso = TipoAcceso;
    }

    public int getRutColaborador() {
        return RutColaborador;
    }

    public void setRutColaborador(int RutColaborador) {
        this.RutColaborador = RutColaborador;
    }

    public int getTelefono() {
        return Telefono;
    }

    public void setTelefono(int Telefono) {
        this.Telefono = Telefono;
    }

    public int getIdOficina() {
        return IdOficina;
    }

    public void setIdOficina(int IdOficina) {
        this.IdOficina = IdOficina;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getTipoAcceso() {
        return TipoAcceso;
    }

    public void setTipoAcceso(String TipoAcceso) {
        this.TipoAcceso = TipoAcceso;
    }

    
  
}
