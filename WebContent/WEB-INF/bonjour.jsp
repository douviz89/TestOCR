<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="utf-8">
<title>Lister les utilisateurs de la base de données</title>
</head>
<body>

	<form action="bonjour" method="POST">
		<p>
			<label for="nom">Nom :</label> <input type="text" id="nom" name="nom" />
		</p>
		<p>
			<label for="prenom">Prenom :</label> <input type="text" id="prenom"
				name="prenom" />
		</p>

		<input type="submit" value="Envoyer">
	</form>


	<ul>
		<c:forEach items="${ utilisateurs }" var="utilisateur">
			<li><c:out value="${ utilisateur.nom  }  ${ utilisateur.prenom } " />
					
				</li>
		</c:forEach>
	</ul>






	<!--   La JSTL et les Variables -->

	<%-- <c:out value="${ auteur.nom }" default="oulach"/> --%>

	<%-- <c:set var="pseudo" value="${auteur.nom}" scope="page" />
	<c:if test="${ !empty pseudo}">
		<c:out value="Bonjour ${ pseudo }." />
	</c:if>
	<p>
		<c:out value="${auteur.actif }"></c:out>
	</p>
	<c:set target="${ auteur }" property="actif" value="false" />
	<p>
		<c:out value="${auteur.actif }"></c:out>
	</p>
	<c:choose>
		<c:when test="${ variable }">Du texte</c:when>
		<c:when test="${ autreVariable }">Du texte</c:when>
		<c:when test="${ encoreUneAutreVariable }">Du texte</c:when>
		<c:otherwise></c:otherwise>
	</c:choose> 
	
	
	<c:forTokens var ="morceau" items="elem,ent 1/ele,ment 2/element 3" delims="/ ,">
		<p><c:out value="${ morceau }"/></p>
	</c:forTokens>
	
	<c:forEach items="${ titres }" var="item" varStatus="status">
		<p>N°<c:out value="${ status.count }"/> <c:out value="${ item }"/></p>
		
	</c:forEach>
	--%>


</body>
</html>