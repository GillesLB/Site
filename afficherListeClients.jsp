<%@page import="java.util.Collection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="siteMaisonHote.Client"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liste des réservations</title>
<link rel="stylesheet" href="style.css" />
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="all"/>
</head>

<body>
	<table border=1>
		<tr>
			<th>Nom</th>
			<th>Prenom</th>
			<th>E-mail</th>
			<th>Télephone</th>
			<th>Nature du séjour</th>
			<th>Date d'arrivée</th>
			<th>Nb de nuits</th>
			<th>Parking</th>
			<th>Animal</th>
			<th>Parapluie</th>
			<th>Fumeur</th>
			<th>Nombre de personne</th>
			<th>Région d'origine</th>
		</tr>
		<%
			// SimpleDateFormat dateFormater = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			Collection<Client> listeClients = (Collection<Client>) request.getAttribute("client");
			if(listeClients != null){
				Iterator it = listeClients.iterator() ;
			    while (it.hasNext()){
			    	Client serveur=(Client) it.next() ;
		%>
		<tr>
			<td><%=serveur.getNom()%></td>
			<td><%=serveur.getPrenom()%></td>
			<td><%=serveur.getEmail()%></td>
			<td><%=serveur.getnTelephone()%></td>
			<td><%=serveur.getArrivee()%></td>
			<td><%=serveur.getNuits()%></td>
			<td><%=serveur.getGroupeRadio()%></td>
			<td><% if (serveur.getParking() == null)
				out.println("non");
				else {
				out.println("oui");
				} %></td>
			<td><% if (serveur.getAnimal() == null)
				out.println("non");
				else {
				out.println("oui");
				} %></td>
			<td><% if (serveur.getParapluie() == null)
				out.println("non");
				else {
				out.println("oui");
				} %></td>
			<td><% if (serveur.getFumeur() == null)
				out.println("non");
				else {
				out.println("oui");
				} %></td>
			<td><%=serveur.getNbPersonne()%></td>
			<td><%=serveur.getRegion()%></td>
		</tr>
		<%      }
			}
		%>
		</table>
</body>
</html>