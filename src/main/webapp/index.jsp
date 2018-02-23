<html>
<head>
<title>Hello World!</title>
</head>
<body>
        <h1>Hello World!!!</h1>
        <p>
                Current Date/Time: --->
                <b><%= new java.util.Date() %></b></p>
        <p>
                You are coming from: --->
                <b><%= request.getRemoteAddr() %></b></p>
        <p>
                Servervlet`s Server/Ver.: --->
                <b><%=request.getServletContext().getServerInfo() %></b></p>
        <p>
                Java Ver.: --->
                <b><%= System.getProperty("java.version") %></b></p>
        <p>
                Java Vendor: --->
                <b><%= System.getProperty("java.vendor") %></b></p>
        <p>
                OS Core Ver: --->
                <b><%= System.getProperty("os.version") %></b></p>
        <p>
                App Server HostName: --->
                <b><%= java.net.InetAddress.getLocalHost().getHostName() %></b></p>
                <%@ page import="java.util.*"%>


        <%
            java.io.InputStream inputStream = getServletContext().getResourceAsStream("/META-INF/maven/hello-world/hw/pom.properties");
            Properties mavenProperties= new Properties();
            mavenProperties.load(inputStream );
            String version = (String) mavenProperties.get("version");
            String name = (String) mavenProperties.get("artifactId");

        %>
        <p>
                App name: --->
                <b><%= name %></b></p>
        <p>
                App version: --->
                <b><%= version %></b></p>
</body>
