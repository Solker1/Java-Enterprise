package com.simplecalculatorbackend;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calculator")
public class SimpleCalculator extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String num1 = req.getParameter("num1");
		String num2 = req.getParameter("num2");
		String operation = req.getParameter("operation");

		double result = 0;
		try {

			double a = Double.parseDouble(num1);
			double b = Double.parseDouble(num2);

			switch (operation) {
			case "+":
				result = a + b;
				break;
			case "-":
				result = a - b;
				break;
			case "x":
				result = a * b;
				break;
			case "/":
				if (b != 0) {
					result = a / b;
				} else {
					req.setAttribute("error", "Infinity");
					req.getRequestDispatcher("/index.jsp").forward(req, resp);
					return;
				}
				break;
			default:
				req.setAttribute("error", "Invalid Operation");
				req.getRequestDispatcher("/index.jsp").forward(req, resp);
				return;
			}

			req.setAttribute("result", result);
			req.getRequestDispatcher("/index.jsp").forward(req, resp);

		} catch (Exception e) {
			req.setAttribute("error", "Invalid number format");
			req.getRequestDispatcher("/index.jsp").forward(req, resp);
		}

	}
}
