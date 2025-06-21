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
        try{
double x = Double.parseDouble(xParam);
int n = Double.parseInt(nParam);
            if(x > 1){
double arcctg = 0;
                for(int i = 0;i < n; i++){
arcctg += Math.pow(-1,i+1) / ((2*i+1) * Math.pow(x,(2*i+1)));
        }
        out.println("resultat: "+ (arcctg + Math.PI/2));
        }
        else out.println("the value of x is incorrect");
        }
                catch(NumberFormatException e){
        out.println("incorrect value");
        }
                }
    %>
</body>
</html>
