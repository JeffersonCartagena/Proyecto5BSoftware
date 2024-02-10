import Modelo.Docenentes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DocentesDAO {
    private Connection connection; // Suponiendo que tienes una conexión establecida

    public DocentesDAO(Connection connection) {
        this.connection = connection;
    }

    public void insert(Docenentes docente) throws SQLException {
        String query = "INSERT INTO docentes (nombre, apellido, fecha_nacimiento, lugar_nacimiento, telefono, carrera, institucion) VALUES (?, ?, ?, ?, ?, ?, ?)";
        
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, docente.getNombre());
            statement.setString(2, docente.getApellido());
            statement.setDate(3, java.sql.Date.valueOf(docente.getFechaNacimiento()));
            statement.setString(4, docente.getLugarNacimiento());
            statement.setString(5, docente.getTelefono());
            statement.setString(6, docente.getCarrera());
            statement.setString(7, docente.getInstitucion());
            
            statement.executeUpdate();
        }
    }
    public List<Docenentes> selectAll() throws SQLException {
        List<Docenentes> docentes = new ArrayList<>();
        String query = "SELECT * FROM docentes";
        
        try (PreparedStatement statement = connection.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {
            
            while (resultSet.next()) {
                Docenentes docente = new Docenentes();
                docente.setIdDocente(resultSet.getInt("idDocente"));
                docente.setNombre(resultSet.getString("nombre"));
                docente.setApellido(resultSet.getString("apellido"));
                docente.setFechaNacimiento(resultSet.getDate("fecha_nacimiento").toLocalDate());
                docente.setLugarNacimiento(resultSet.getString("lugar_nacimiento"));
                docente.setTelefono(resultSet.getString("telefono"));
                docente.setCarrera(resultSet.getString("carrera"));
                docente.setInstitucion(resultSet.getString("institucion"));
                
                docentes.add(docente);
            }
        }
        
        return docentes;
    }
}
