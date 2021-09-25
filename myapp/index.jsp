<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    import="java.net.*" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>My Test App</title>
        <link rel="stylesheet" href="/resources/themes/master.css" type="text/css" />
    </head>
    <body>

        <%  String hostname, serverAddress;
            hostname = "error";
            serverAddress = "error";
            try {
                InetAddress inetAddress;
                inetAddress = InetAddress.getLocalHost();
                hostname = inetAddress.getHostName();
                serverAddress = inetAddress.toString();
            } catch (UnknownHostException e) {
                e.printStackTrace();
            }
        %>
        <h1><strong>Bem-vindo ao MyApp</strong></h1>
        <table style="border-collapse: collapse; width: 80.8967%; height: 47px;" border="1">
            <tbody>
                <tr>
                <td style="width: 35.9649%;"><strong>Endere&ccedil;o IP do Host:</strong></td>
                <td style="width: 64.0351%;"><%=serverAddress %></td>
                </tr>
                <tr>
                <td style="width: 35.9649%;"><strong>Nome do Host:</strong></td>
                <td style="width: 64.0351%;"><%=hostname %></td>
                </tr>
            </tbody>
        </table>

    </body>

    </html>