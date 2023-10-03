<%@ Page Title="" Language="C#" MasterPageFile="~/Sources/Pages/MP.Master" AutoEventWireup="true" CodeBehind="FrmVehiculos.aspx.cs" Inherits="CRUD.Sources.Pages.FrmVehiculos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Vehiculos
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/FondoVehiculo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="detalle2">
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
                                <i class="fa fa-database">Datos Vehículo</i>
                            </legend>
                            <asp:Table runat="server" Enabled="false">
                                <asp:tablerow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Placa:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbPlaca"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:tablerow>
                                <asp:tablerow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Marca:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbMarca"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:tablerow>
                                <asp:tablerow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Modelo:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbModelo"></asp:TextBox>
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
