<%@ page import="java.util.*, dao.*, modelos.*"%>

<html>
	<body>
		<table>
			<% ContatoDAO dao = new ContatoDAO(); 
				List<Contato> contatos = dao.getLista();
				for(Contato contato : contatos){
				%>
				<tr>
					<td><%=contato.getNome() %></td>
					<td><%=contato.getEmail() %></td>
					<td><%=contato.getEndereco() %></td>
					<td><%=contato.getDataNascimento().getTime() %></td>
				</tr>
				<%} %>
		</table>
	</body>
</html>
	
	