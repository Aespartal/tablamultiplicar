<%-- 
    Document   : tablamultiplicar
    Created on : 19-sep-2019, 19:32:21
    Author     : alejandro
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <title>Tabla de multiplicar</title>
    </head>
    <body>
        <div class="container">
            <div id="header">
                <h1 class="h1-header">Tabla de multiplicar</h1>
            </div>
            <Table class="table table-bordered table-sm costumers">
                <tbody>
                    <!--cambio de prueba-->
                    <!--Validaciones-->
                    <%
                        try {
                            String redirectURL = "index.jsp";
                            int alto = Integer.parseInt(request.getParameter("alto"));
                            int ancho = Integer.parseInt(request.getParameter("ancho"));

                            if (alto == 0) {
                                JOptionPane.showMessageDialog(null, "El alto debe ser mayor que 0", "Error", JOptionPane.ERROR_MESSAGE);
                                response.sendRedirect(redirectURL);
                            } else {
                                if (alto > 20) {
                                    JOptionPane.showMessageDialog(null, "El alto tiene que ser menor o igual de 20", "Error", JOptionPane.ERROR_MESSAGE);
                                    response.sendRedirect(redirectURL);
                                } else {
                                    if (ancho == 0) {
                                        JOptionPane.showMessageDialog(null, "El ancho debe ser mayor que 0", "Error", JOptionPane.ERROR_MESSAGE);
                                        response.sendRedirect(redirectURL);
                                    } else {
                                        if (ancho > 20) {
                                            JOptionPane.showMessageDialog(null, "El ancho tiene que ser menor o igual de 20", "Error", JOptionPane.ERROR_MESSAGE);
                                            response.sendRedirect(redirectURL);

                                        } else {

                                            int resultado = 0;
                                            for (int i = 1; i <= alto; i++) { %>  
                    <tr>
                        <%
                            for (int j = 1; j <= ancho; j++) {
                        %>
                        <td> <%= resultado = i * j%>  </td>
                        <%}%>
                    </tr>

                    <%}%>
                    <%                  }
                                    }
                                }
                            }
                        } catch (Exception e) {
                            String redirectURL = "index.jsp";
                            JOptionPane.showMessageDialog(null, "El valor tiene que ser numerico", "Error", JOptionPane.ERROR_MESSAGE);
                            response.sendRedirect(redirectURL);
                        }                     
                    %>
                </tbody>
            </table>
            <a href="index.jsp">Volver al formulario</a>
        </div>
    </body>
</html>
