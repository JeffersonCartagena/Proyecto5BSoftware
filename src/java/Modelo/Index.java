package Modelo;

public class Index {

    private static final String USUARIO_CORRECTO = "jeffer";
    private static final String CONTRASENIA_CORRECTA = "123";
    public static boolean verificarCrea;

    public static boolean verificarCredenciales(String usuario, String contrasenia) {
        return USUARIO_CORRECTO.equals(usuario) && CONTRASENIA_CORRECTA.equals(contrasenia);
    }
}
