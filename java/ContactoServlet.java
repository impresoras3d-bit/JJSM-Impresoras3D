{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
   {
        // Recibir los datos del formulario
        String nombre   = request.getParameter("nombre");
        String email    = request.getParameter("email");
        String consulta = request.getParameter("consulta");

        // Guardar los datos para que JSP los lea
        request.setAttribute("nombre",   nombre);
        request.setAttribute("email",    email);
        request.setAttribute("consulta", consulta);
        request.setAttribute("tipo",     "Consulta");

        // Redirigir a la página JSP
        RequestDispatcher rd = request.getRequestDispatcher("respuesta.jsp");
        rd.forward(request, response);
    }
}