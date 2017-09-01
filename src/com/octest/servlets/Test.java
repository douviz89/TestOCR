package com.octest.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.octest.bdd.Noms;
import com.octest.beans.Utilisateur;

@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Test() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Noms tableNoms = new Noms();
		request.setAttribute("utilisateurs", tableNoms.getUtilisateurs());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/bonjour.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Noms tableNoms = new Noms();
		Utilisateur utilisateur = new Utilisateur();
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		
		utilisateur.setNom(nom);
		utilisateur.setPrenom(prenom);
		
		tableNoms.ajouterUtilisateur(utilisateur);
		request.setAttribute("utilisateurs", tableNoms.getUtilisateurs());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/bonjour.jsp").forward(request, response);
		//doGet(request, response);
	}

}
