<%-- 
    Document   : form
    Created on : 04/08/2018, 16:20:11
    Author     : denis
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/layout/" prefix="utfpr" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<utfpr:template>
    <jsp:attribute name="cssEspecifico"></jsp:attribute>
    <jsp:attribute name="scriptEspecifico"></jsp:attribute>   


    <jsp:body>
        <div class="container">


            <form id="frm" action="<c:url value="/produtora" />" method="POST" class="well span6" >
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
                    <input  type="text" id="id" name="produtora.id" class="form-control" readonly 
                            value="${produtora.id}"/>

                </div>

                <div class="form-group" >

                    <label  for="nome"  > Nome:</label>
                    <input  type="text" id="nome" name="produtora.nome" class="form-control" 
                            value="${produtora.nome}"/>

                </div>
                <button type="submit" class="btn btn-success" >Salvar</button>


            </form>

        </div>
    </jsp:body>


</utfpr:template>