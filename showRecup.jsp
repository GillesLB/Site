<%@ page import="siteMaisonHote.Recup"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Formulaire de réservation</title>
</head>
<body>
	<% Recup recup = (Recup) request.getAttribute("recup");%>
	
	<!-- affiche les données récupérées -->
	<h2><u>Résumé des coordonnées</u></h2><br/>
	<p>Nom : <b><%=recup.getNom() %></b></p>
	<p>Prénom : <b><%=recup.getPrenom() %></b></p>
	<p>E-mail : <b><%=recup.getEmail() %></b></p>
	<p>Numéro de téléphone : <b><%=recup.getnTelephone() %></b></p>
	<p>Nombre de personne : <b><%=recup.getNbPersonne() %></b></p>
	<p>Région d'origine : <b><%=recup.getRegion() %></b></p>
	
</body>
</html>