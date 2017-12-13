<%@ page import="siteMaisonHote.Recup"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Estimation du prix du séjour</title>
</head>
<body style="background-color:blue">
	<% Recup recup = (Recup) request.getAttribute("recup");%>
	<% int base = 100; %>
	<% int prix = 0; %>

	<!-- affiche les données récupérées -->
	<h2><u>Résumé des coordonnées</u></h2><br/>
	

	<p>Nom : <b><%=recup.getNom() %></b></p>
	<p>Prénom : <b><%=recup.getPrenom() %></b></p>
	<p>E-mail : <b><%=recup.getEmail() %></b></p>
	<p>Numéro de téléphone : <b><%=recup.getnTelephone() %></b></p>
	<p>Nature du séjour : <b><%=recup.getGroupeRadio() %></b></p>
	<p>Date arrivée : <b><%=recup.getArrivee() %></b></p>
	<p>Nombre de nuits : <b><%=recup.getNuits() %></b></p>
	<% int nbN = Integer.parseInt(recup.getNuits()); %>
	<p>Parking : <b><% if (recup.getParking() == null)
		out.println("non");
		else {
		base += 5;
		out.println("oui");
		} %></b></p>
	<p>Animal : <b><% if (recup.getAnimal() == null)
		out.println("non");
		else {
		base += 10;
		out.println("oui");
		} %></b></p>
	<p>Parapluie : <b><% if (recup.getParapluie() == null)
		out.println("non");
		else {
		base += 5;
		out.println("oui");
		} %></b></p>
	<p>Fumeur : <b><% if (recup.getFumeur() == null)
		out.println("non");
		else
		out.println("oui"); %></b></p>
	<p>Nombre de personne : <b><%=recup.getNbPersonne() %></b></p>
	<% int nbP = Integer.parseInt(recup.getNbPersonne());
		if (nbP == 2)
			base += 50;
		else if (nbP == 3)
			base += 80;
		else if(nbP == 4)
			base += 100; %>
	<p>Région d'origine : <b><%=recup.getRegion() %></b></p>
	<% prix = base * nbN; %>
  <br>
	<p>Le prix total sera de  <b><%=prix %></b> euros !</p>
</body>
</html>
