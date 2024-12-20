<%@ attribute name="querry" required="true" type="java.lang.String" description="Text to use in the first cell." %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<sql:setDataSource var="dataSource" driver="com.mysql.cj.jdbc.Driver"
  url="jdbc:mysql://db/animal" user="maria" password="pass"/>
<sql:query dataSource="${dataSource}" var="result">
${querry}
</sql:query>
<c:forEach var = "i" items="${result.rows}">
<div class="flex-container">
    <div class="item0">ID</div>
    <div class="item1">BREED</div>
    <div class="item2">COLOR</div>
    <div class="item3">
    <c:out value = "${i['id']}"/>
    </div>
    <div class="item4">
    <c:out value = "${i['breed']}"/>
    </div>
    <div class="item5">
    <c:out value = "${i['color']}"/>
    </div>
</div>
</c:forEach>