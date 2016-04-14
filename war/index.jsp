<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- The HTML 4.01 Transitional DOCTYPE declaration-->
<!-- above set at the top of the file will set     -->
<!-- the browser's rendering engine into           -->
<!-- "Quirks Mode". Replacing this declaration     -->
<!-- with a "Standards Mode" doctype is supported, -->
<!-- but may lead to some differences in layout.   -->

<html>
<%  double bedrag = 113.0; %>

        <!-- html code  -->
        <a href="jsptoets.jsp">toets jsp</a>
        <table border="1">
            <thead>
                <tr>
                    <th>   <a href="rek.jsp">jsprekenmachine</a>	</th>
                    <th>Totaal &euro; <%= bedrag %></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Jan</td>
                    <td>&euro; <%= bedrag/4 %></td>
                </tr>
                <tr>
                    <td>Ali</td>
                    <td>&euro; <%= bedrag/4 %></td>
                </tr>
                <tr>
                    <td>Jeannette</td>
                    <td>&euro; <%= bedrag/4 %></td>
                </tr>
                <tr>
                    <td>Piet</td>
                    <td>&euro; <%= bedrag/4 %></td>
                </tr>
            </tbody>
        </table>
     
</html>

