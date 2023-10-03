<%@ Page Title="" Language="C#" MasterPageFile="~/Sources/Pages/MP.Master" AutoEventWireup="true" CodeBehind="FrmTrayectos.aspx.cs" Inherits="ASP_SP.Sources.Pages.FrmTrayectos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Trayecto
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/FondoTrayecto.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="detalle3">
    <div class="container">
        <fieldset class="row">
            <div class="container text-black-50 row">
                <div class="col-6 row justify-content-center">
                    <div class="align-items-center col-auto">
                        <fieldset>
                            <div class="row">
                                <asp:Image runat="server" ID="image" CssClass="form-control img-thumbnail" Height="300" />
                            </div>
                        </fieldset>
                    </div>
                </div>
                <div class="col-6 row justify-content-center">
                    <div class="align-item-center col-auto">
                        <fieldset>
                            <legend>
                                <i class="fa fa-database">Datos de Trayecto</i>
                            </legend>
                            <asp:Table runat="server" Enabled="false">
                                <asp:tablerow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Ciudad Origen:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbCOrigen"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:tablerow>
                                <asp:tablerow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Ciudad Destino:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbCDestino"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:tablerow>
                                <asp:tablerow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Valor Real:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbVReal"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:tablerow>
                                <asp:tablerow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Valor Cobrado:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbVCobrado"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:tablerow>
                                <asp:tablerow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Fecha de trayecto:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbFTrayecto"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:tablerow>
                            </asp:Table>
                        </fieldset>
                    </div>
                </div>
            </div>
        </fieldset>
    </div>
    </div>
</asp:Content>
