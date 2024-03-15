package com.jspiders.cardekhowithservlet1.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhowithservlet1.JDBC.CarJDBC;
@WebServlet("/edit_car")
public class EditAllCars extends HttpServlet{

	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		int res = CarJDBC.editCar(id);
		if(res == 1) {
			req.setAttribute("message", "Car updated");
		}else {
			req.setAttribute("message", "Car not found ");
		}
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("edit_car.jsp");
		requestDispatcher.forward(req, resp);
	}
}
