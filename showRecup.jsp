<%@ page import="siteMaisonHote.Recup"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Formulaire de r�servation</title>
</head>
<body>
	<% Recup recup = (Recup) request.getAttribute("recup");%>
	
	<!-- affiche les donn�es r�cup�r�es -->
	<h2><u>R�sum� des coordonn�es</u></h2><br/>
	<p>Nom : <b><%=recup.getNom() %></b></p>
	<p>Pr�nom : <b><%=recup.getPrenom() %></b></p>
	<p>E-mail : <b><%=recup.getEmail() %></b></p>
	<p>Num�ro de t�l�phone : <b><%=recup.getnTelephone() %></b></p>
	<p>Nombre de personne : <b><%=recup.getNbPersonne() %></b></p>
	<p>R�gion d'origine : <b><%=recup.getRegion() %></b></p>
	
</body>
</html>