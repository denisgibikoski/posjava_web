<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/layout/" prefix="utfpr" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<utfpr:template>
    <jsp:attribute name="cssEspecifico"></jsp:attribute>
    <jsp:attribute name="scriptEspecifico"></jsp:attribute>   


    <jsp:body>
        <div class="container">


            <form id="frm" action="<c:url value="/genero" />" method="POST" class="well span6" >
                <c:if test="${not empty errors}">
                    <div class="alert alert-danger">
                        <ul>
                            <c:forEach var="erro" items="${errors}">

                                <li>${erro.message}</li>

                            </c:forEach>
                        </ul>
                    </div>
                </c:if>

                <div class="form-group" >

                    <label  for="id"  > Codigo:</label>
                    <input  type="text" id="id" name="genero.id" class="form-control" readonly />

                </div>

                <div class="form-group" >

                    <label  for="nome"  > Nome:</label>
                    <input  type="text" id="nome" name="genero.nome" class="form-control" />

                </div>
                <button type="submit" class="btn btn-success" >Salvar</button>


            </form>

        </div>
    </jsp:body>


</utfpr:template>