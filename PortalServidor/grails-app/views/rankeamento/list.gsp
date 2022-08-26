
<%@ page import="portalservidor.ParecerRH" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>

<div id="palmas-parecerRH" class="content scaffold-list" role="main">
    <h1></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <table class="table table-striped">
        <thead>
        <tr>
            <td><h5>Nome do Servidor</h5></td>
            <td><h5>Parecer Chefia Imediata</h5></td>
            <td><h5>Parecer Chefia Mediata</h5></td>
            <td><h5>Parecer RH</h5></td>
            <td><h5>Unidade de Destino - 1ª Opção</h5></td>
            <td><h5>Unidade de Destino - 2ª Opção</h5></td>
            <td><h5>Campus Origem</h5></td>
            <td><h5>Pontuação</h5></td>


        </tr>
        </thead>
        <tbody>
        <g:each in="${remocao}" var="pegar">
            <tr>
                <td>${pegar.nomeSubordinado}</td>
                <td>${pegar.parecerChefia}</td>
                <td>${pegar.parecerDiretor}</td>
                <td>${pegar.parecerRH}</td>
                <td>${pegar.primeiraOpcao}</td>
                <td>${pegar.segundaOpcao}</td>
                <td>${pegar.campus}</td>
                <td>${pegar.pontuacao}</td>


            </tr>
        </g:each>

    </table>

    <g:link class="btn btn-primary" action="index">Voltar</g:link>
</div>
</body>
</html>
