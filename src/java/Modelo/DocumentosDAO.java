import Modelo.Documentos;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DocumentosDAO {
    private Connection conexion;

    // Constructor que establece la conexión con la base de datos
    public DocumentosDAO() {
        try {
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/nombre_base_de_datos", "usuario", "contraseña");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    // Método para insertar un nuevo documento en la base de datos
    public void insertarDocumento(Documentos documento) {
        String query = "INSERT INTO documentos (idDoc, TipoDoc, nombreDoc) VALUES (?, ?, ?)";
        try (PreparedStatement pstmt = conexion.prepareStatement(query)) {
            pstmt.setInt(1, documento.getIdDoc());
            pstmt.setString(2, documento.getTipoDoc());
            pstmt.setString(3, documento.getNombreDoc());
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    // Otros métodos de la clase DocumentosDAO...
}
