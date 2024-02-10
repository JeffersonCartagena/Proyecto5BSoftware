package Controlador;

import Modelo.Index;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Servlet", urlPatterns = {"/Servlet"})
public class Servlet extends HttpServlet {
    
      @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");


// Obtener parámetros del formulario
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Verificar credenciales utilizando el modelo
        boolean loginSuccessful = Index.verificarCredenciales(username, password);
             

        // Obtener la sesión
        HttpSession session = request.getSession();

        // Contador de intentos
        int attempts = 0;
        if (session.getAttribute("attempts") != null) {
            attempts = (int) session.getAttribute("attempts");
        }

        // Realizar acciones según el resultado del login
        if (loginSuccessful) {
            // Login exitoso, redirigir a panel.jsp
            response.sendRedirect("PanelBecas.jsp");
        } else {
            // Login fallido, incrementar contador de intentos
            attempts++;
            session.setAttribute("attempts", attempts);

            // Verificar si se superaron los intentos permitidos
            if (attempts >= 3) {
                // Bloquear la página y mostrar mensaje
                response.sendRedirect("blockPage.jsp");
           // ...

} else {
    // Mostrar mensaje de intento fallido y volver a index.jsp
    request.setAttribute("failedAttempts", attempts);
    request.getRequestDispatcher("index.jsp").forward(request, response);
}

        }
    }

       @Override
    public String getServletInfo() {
        return "Short description";
    }

    private void QNVKBVK54Kdenciales(String username, String password) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void Credenciales(String username, String password) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
