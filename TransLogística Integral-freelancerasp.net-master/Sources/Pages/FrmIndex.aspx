<%@ Page Title="" Language="C#" MasterPageFile="~/Sources/Pages/MP.Master" AutoEventWireup="true" CodeBehind="FrmIndex.aspx.cs" Inherits="CRUD.Sources.Pages.FrmIndex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Inicio
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/style-Index1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="detalle" >
        <ul class="escritores">
            <li class="charles" > <a href="/Sources/Pages/FrmIndex.aspx" >Charles bukowski</a></li>
            <li class="william">William Shakespeare</li>
            <li class="dante">Dante Alighieri</li>
            <li class="davinci">Leonardo da Vinci</li>
        </ul>
    </div>
</asp:Content>



