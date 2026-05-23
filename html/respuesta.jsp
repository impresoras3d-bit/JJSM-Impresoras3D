
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Respuesta - JJSM Impresoras 3D</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="header">
        <div class="menu container">
            <a href="index.html" class="logo">JJSM</a>
        </div>
    </header>

    <main class="container">
        <%-- ✅ SCRIPTLET JSP - recupera atributos del servlet --%>
        <%
            String tipo = (String) request.getAttribute("tipo");
            String icono = tipo.equals("Solicitud") ? "🖨️" : "📬";
        %>

        <h2><%= icono %> Tu <%= tipo %> fue recibida</h2>
        <p>Gracias por contactarnos. Aquí el resumen:</p>

        <div class="resumen-card">

            <%-- ✅ Muestra datos según el tipo de formulario --%>
            <% if (tipo.equals("Consulta")) { %>
                <p><strong>Nombre:</strong> <%= request.getAttribute("nombre") %></p>
                <p><strong>Email:</strong>  <%= request.getAttribute("email") %></p>
                <p><strong>Consulta sobre:</strong> <%= request.getAttribute("consulta") %></p>
                <p>Nos comunicaremos contigo en menos de 24 horas.</p>

            <% } else if (tipo.equals("Solicitud")) { %>
                <p><strong>Cliente:</strong>     <%= request.getAttribute("cliente") %></p>
                <p><strong>Modelo:</strong>      <%= request.getAttribute("modelo") %></p>
                <p><strong>Material:</strong>    <%= request.getAttribute("material") %></p>
                <p><strong>Descripción:</strong> <%= request.getAttribute("descripcion") %></p>

                <%-- ✅ Expresión JSP con lógica --%>
                <p><strong>Fecha de registro:</strong> <%= new java.util.Date() %></p>
            <% } %>
        </div>

        <a href="index.html" class="btn-1">← Volver a la tienda</a>
    </main>
</body>
</html>