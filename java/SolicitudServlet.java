{

        request.setCharacterEncoding("UTF-8");

        // Recibir los datos del formulario
        String cliente     = request.getParameter("cliente");
        String modelo      = request.getParameter("modelo");
        String material    = request.getParameter("material");
        String descripcion = request.getParameter("descripcion");

        // Guardar en atributos para el JSP
        request.setAttribute("cliente",     cliente);
        request.setAttribute("modelo",      modelo);
        request.setAttribute("material",    material);
        request.setAttribute("descripcion", descripcion);
        request.setAttribute("tipo",        "Solicitud");

        // Redirigir al JSP de respuesta
        RequestDispatcher rd = request.getRequestDispatcher("respuesta.jsp");
        rd.forward(request, response);
    }