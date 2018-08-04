<%-- 
    Document   : list
    Created on : 04/08/2018, 16:19:03
    Author     : denis
--%>


<<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/layout/" prefix="utfpr" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<utfpr:template>
    <jsp:attribute name="cssEspecifico"></jsp:attribute>
    <jsp:attribute name="scriptEspecifico"></jsp:attribute>   


    <jsp:body>

        <div class="container">

            <a class="btn btn-primary" href="<c:url value="/produtora/form"/> "  >Novo</a> 

            <table style="width: 100%" class="table table-striped table-bordered  table-hover" >

                <thead>
                    <tr>
                        <th class="col-md-2" > Codigo</th>
                        <th>Nome</th>
                        <th class="col-md-2" > Ações</th>  
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="produtora" items="${produtoras}">

                        <tr>
                            <td>
                                ${produtora.id}
                            </td>
                            <td>
                                ${produtora.nome}
                            </td>
                            <td>
                                <form  action="<c:url value="/produtora/${produtora.id}"/>"
                                       method="POST"
                                       onsubmit="if (!confirm('Confirma a exclucao do resgisro?!'))
                                                   return false;">


                                    <a href="<c:url value="/produtora/form/${produtora.id}"/>"
                                       class=" btn btn-info"> 

                                        <i class="fa fa-edit"></i></a>

                                    <button class="btn btn-danger" type="submit"
                                            name="_method" value="DELETE">
                                        <i class="fa fa-trash"></i>
                                    </button>

                                </form>


                            </td>
                        </tr>


                    </c:forEach>
                </tbody>


            </table>


        </div>




    </jsp:body>


</utfpr:template>
