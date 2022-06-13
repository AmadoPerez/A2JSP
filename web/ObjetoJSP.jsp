<%-- 
    Document   : ObjetoJSP
    Created on : 10/06/2022, 05:33:02 PM
    Author     : Privado
--%>
<%@page import="mi_paquete.Alumno"%>

<%
    Alumno dato[]=new Alumno[10];
    dato[0]=new Alumno("57211000116","Amado","Perez","Cochine",10,9,8);
    dato[1]=new Alumno("57211000117","yosef","Flores","Martinez",8,9,8);
    dato[2]=new Alumno("57211000118","kevin","Garcia","Camacho",9,8,9);
    dato[3]=new Alumno("57211000119","Yonthan","Pastrana","Tepeczing",8,8,8);
    dato[4]=new Alumno("57211000120","veronica","Marin","Jorge",10,10,9);
    dato[5]=new Alumno("57211000121","Luis gustavo","Tacuba","Bonifacio",10,8,8);
    dato[6]=new Alumno("57211000122","Adrian","Gutierrez","Nava",8,9,8);
    dato[7]=new Alumno("57211000123","susano","Mora","Nieves",9,9,9);
    dato[8]=new Alumno("57211000124","elias","sanchez","Garcia",8,8,8);
    dato[9]=new Alumno("57211000125","Victor","Bautista","nieves",10,9,8);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/estilos.css">
        
    </head>
    <body>
         <h1>A2. Llamar objetos java en páginas JSP!</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Matricula</th>
                    <th>Nombre completo</th>
                    <th>ddi</th>
                    <th>dwi</th>
                    <th>ecbd</th>
                    <th>Promedio</th>
                </tr>
            </thead>
            <tbody>
               
                 <%
                        for(int i=0; i<dato.length; i++)
                        {
                           out.print("<tr>"); 
                           out.print("<td>"+dato[i].getMatricula()+"</td>");
                           out.print("<td>"+dato[i].getNombre()+" "+dato[i].getApellidoP()+" "+dato[i].getApellidoM()+"</td>");
                           out.print("<td>"+dato[i].getDdi()+"</td>");
                           out.print("<td>"+dato[i].getDwi()+"</td>");
                           out.print("<td>"+dato[i].getEcbd()+"</td>");
                           out.print("<td>"+dato[i].getProm()+"</td>");
                           out.print("</tr>"); 
                        }
                    %>
            </tbody>
        </table>


    </body>
</html>
