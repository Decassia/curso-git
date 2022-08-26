<%@ page import="portalservidor.FormacaoAcademica" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="#">UFT</a>
            <div class="nav-collapse collapse">
                <p class="navbar-text pull-right">
                    <g:link controller="logout">Sair</g:link>
                </p>
                <ul class="nav">
                    <li class="disabled"><a href="#"><span class="badge badge-success">1</span> Dados Funcionais</a></li>
                    <li class="disabled"><a href="#"><span class="badge badge-success">2</span> Cursos de Capacitação</a></li>
                    <li class="active"><g:link controller="formacaoAcademica"><span class="badge badge-info">3</span> Formação Acadêmica</g:link></li>
                    <li class="disabled"><a href="#"><span class="badge">4</span> Remoção Interna</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="span12">
            <g:if test="${flash.message}">
                <div class="alert alert-info" role="status"><strong>${flash.message}</strong></div>
            </g:if>
            <g:if test="${flash.success}">
                <div class="alert alert-success" role="status"><strong>${flash.success}</strong></div>
            </g:if>
            <g:if test="${flash.error}">
                <div class="alert alert-error" role="status"><strong>${flash.error}</strong></div>
            </g:if>
            <g:if test="${flash.warning}">
                <div class="alert alert-warning" role="status"><strong>${flash.warning}</strong></div>
            </g:if>
            <g:hasErrors bean="${formacaoAcademicaInstance}">
                <div class="alert alert-error alert-block">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${formacaoAcademicaInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </div>
            </g:hasErrors>

            <g:form action="save" method="post"  enctype="multipart/form-data">
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset><br>

                <fieldset>


             <i class=" icon-ok icon-white"></i>
                <g:submitButton  type="submit" class="btn btn-primary" name="create"  value="Salvar" />

                </div>
                </fieldset>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
