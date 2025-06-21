<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab24</title>
</head>
<body>
    
    <form method="post">
        Введите x: <input type="text" name="x"><br>
        Введите n: <input type="text" name="n"><br>
        <input type="submit" value="Вычислить">
    </form>
    
    <%
        try {
            double x = Double.parseDouble(request.getParameter("x"));
            double n = Double.parseDouble(request.getParameter("n"));
            double sum = 0;
            
            for (double i = 0; i <= n; i++) {
                double fact = 1;
                for(double j = 1; j <= 2*i; j++) {
                    fact *= j;
                }
                sum += (Math.pow(-1, i) * Math.pow(x, 2*i)) / fact;
            }
            
            out.println(String.format("sum = %.6f", sum));
        } catch (NumberFormatException e) {
            out.println("Ошибка: введите корреткное значение");
        } 
    %>
</body>
</html>