<%@ Page Language="VB" AutoEventWireup="false" CodeFile="nos.aspx.vb" Inherits="nos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- Adicionar efeitos.css // efeitos gerais -->
<link rel="stylesheet" type="text/css" href="efeitos.css">
        <!-- ViewPort Site Responsivo -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 


    <title>EventGest</title>
</head>
<body>
    <form id="form1" runat="server">
       
        <h1 style="font-size:6.5vw;">EventGest</h1>
        Projeto final da unidade curricular nº 6
        <br />
        Tema: Sistema de Gestão de Eventos (Conf., seminários, etc.)
        <br />
        <br />
        Autores<br />
        Paulo Correia, 2851<br />
        Marcelo Salgueiro, 2981<br />
        José Durães, 2992<br />
        <br />
        Enunciado dado pelo docente:<br />
        Pretende-se com este sistema que seja implementada uma base de dados (Modelo de dados e DEA) e a respetiva implementação em MSQL Server e uma aplicação para a gestão integrada (VB.NET/C#). Para o sistema deverão ser considerados entre outros, os seguintes pressupostos: - Deverá permitir a existência de um ou mais eventos de vários tipos, composto por vários subeventos; - Cada autor pode ter vários artigos em vários eventos; - Cada artigo pode ser revisto por pelo menos dois revisores; - Cada revisor tem que pertencer ao conselho científico de um evento, podendo pertencer ao CC de outros eventos; - Deverá ser criado o formulário de registo da revisão de cada artigo, podendo ser o resultado &quot;Aceite&quot;, &quot;Aceite sob condição&quot;, &quot;Rejeitado&quot;. - Deverá ser possível manter um histórico de todos os eventos.
        <br />
        <br />
        Docentes
        <br />
        José Lousado
        <br />
        Pedro Lopes<p>
            <asp:Button ID="Button1" runat="server" Text="Voltar" />
        </p>
    </form>
</body>
</html>
