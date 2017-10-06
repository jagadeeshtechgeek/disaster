<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="viewIncident">


	<a href='#' onclick="getViewIncidentPage();"> &lt Back</a> <br />
	<br />
	<a href='#' onclick="getAllModules();"> &lt Home</a> <br />

	<div class="panel panel-default">
		<div class="panel-heading">Incident details</div>
		<div class="panel-body">
		<c:if test="${status.statusCode == '*'}">

			<table class="table table-striped">
				<tr>
					<th>Name:</th>
					<td><c:out value="${incident.name}" /></td>
				</tr>
				<tr>
					<th>Mobile:</th>
					<td><c:out value="${incident.mobile}" /></td>
				</tr>
				<tr>
					<th>Description:</th>
					<td><c:out value="${incident.description}" /></td>
				</tr>
				<tr>
					<th>Time:</th>
					<td><c:out value="${incident.date}" /></td>
				</tr>
				<tr>
					<th>Message Notification:</th>
					<td><c:out value="${incident.msgStatus}" /></td>
				</tr>
				<tr>
					<th>Action:</th>
					<td><c:out value="${incident.action}" /></td>
				</tr>
			</table>
		</div>
	</div>
	</c:if>
	<c:if test="${status.statusCode =='Problem'}">
			<div class="alert alert-warning"
				style="text-align: center;">
				<strong><c:out value="${status.statusCode}" /></strong>
				<p>
					<c:out value="${status.statusMsg}" />
				</p>
				<a href='#' onclick="getViewIncidentPage();">
				Try again</a> 
			</div>
	</c:if>
	<c:if test="${status.statusCode == 'Invalid'}">
			<div class="alert alert-warning"
				style="text-align: center;">
				<strong><c:out value="${status.statusCode}" /></strong>
				<p>
					<c:out value="${status.statusMsg}" />
				</p>
				<a href='#' onclick="getViewIncidentPage();">
				Try again</a> 
			</div>
	</c:if>
	
</div>
