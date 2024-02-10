
import Modelo.Estudiantes;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EstudiantesDAO {
    private Connection conexion;

    // Constructor que establece la conexión con la base de datos
    public EstudiantesDAO() {
        try {
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/nombre_base_de_datos", "usuario", "contraseña");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    // Método para insertar un nuevo estudiante en la base de datos
    public void insertarEstudiante(Estudiantes estudiante) {
        String query = "INSERT INTO estudiantes (idEstudiante, nombre, apellido, fechaNacimiento, lugarNacimiento, telefono, carrera, institucion, poseeDiscapacidad) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement pstmt = conexion.prepareStatement(query)) {
            pstmt.setInt(1, estudiante.getIdEstudiante());
            pstmt.setString(2, estudiante.getNombre());
            pstmt.setString(3, estudiante.getApellido());
            pstmt.setDate(4, java.sql.Date.valueOf(estudiante.getFechaNacimiento()));
            pstmt.setString(5, estudiante.getLugarNacimiento());
            pstmt.setString(6, estudiante.getTelefono());
            pstmt.setString(7, estudiante.getCarrera());
            pstmt.setString(8, estudiante.getInstitucion());
            pstmt.setBoolean(9, estudiante.isPoseeDiscapacidad());
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    // Otros métodos de la clase EstudiantesDAO...
}
