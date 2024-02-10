import Modelo.Becas;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BecasDAO {
    private Connection conexion;

    // Constructor que establece la conexión con la base de datos
    public BecasDAO() {
        try {
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/nombre_base_de_datos", "usuario", "contraseña");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    // Método para insertar una nueva beca en la base de datos
    public void insertarBeca(Becas beca) {
        String query = "INSERT INTO becas (idBecas, idEstudiantes, idDocentes, documento1, documento2, documento3, observaciones, fecha) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement pstmt = conexion.prepareStatement(query)) {
            pstmt.setInt(1, beca.getIdBacas());
            pstmt.setString(2, beca.getIdEstudiantes());
            pstmt.setString(3, beca.getIdDocentes());
            pstmt.setString(4, beca.getDocumento1());
            pstmt.setString(5, beca.getDocuemento2());
            pstmt.setString(6, beca.getDocumento3());
            pstmt.setString(7, beca.getObservaciones());
            pstmt.setDate(8, new java.sql.Date(beca.getFecha().getTime()));
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    // Método para seleccionar todas las becas de la base de datos
    public List<Becas> seleccionarTodasBecas() {
        List<Becas> listaBecas = new ArrayList<>();
        String query = "SELECT * FROM becas";
        try (PreparedStatement pstmt = conexion.prepareStatement(query)) {
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Becas beca = new Becas(
                    rs.getInt("idBecas"),
                    rs.getString("idEstudiantes"),
                    rs.getString("idDocentes"),
                    rs.getString("documento1"),
                    rs.getString("documento2"),
                    rs.getString("documento3"),
                    rs.getString("observaciones"),
                    rs.getDate("fecha")
                );
                listaBecas.add(beca);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listaBecas;
    }
}
