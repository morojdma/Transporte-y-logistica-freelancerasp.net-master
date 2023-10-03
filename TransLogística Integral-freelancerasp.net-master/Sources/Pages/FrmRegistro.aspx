<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmRegistro.aspx.cs" Inherits="CRUD.Sources.Pages.FrmRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="../JavaScript/JavaScript.js"></script>
    <title>Registro de usuario</title>
</head>
<body>
    <form id="FrmRegistro" runat="server">
        <div class="container d-flex justify-content-center">
            <div class="col-8">
                <div class="form-control card card-body">
                    <div class="row justify-content-center">
                        <asp:label runat="server" CssClass="row justify-content-center h3">Registro de usuarios</asp:label>
                    </div>
                    <fieldset>
                        <legend class="row justify-content-center">Datos personales</legend>
                        <div class="input-group">
                            <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="Nombres:"></asp:Label>
                            <asp:TextBox ID="tbNombres" CssClass="form-control" runat="server" placeholder="ej. Anne"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label2" CssClass="form-control" runat="server" Text="Apellidos:"></asp:Label>
                            <asp:TextBox ID="tbApellidos" CssClass="form-control" runat="server" placeholder="ej. Hathaway"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label3" CssClass="form-control" runat="server" Text="Fecha de nacimiento:"></asp:Label>
                            <asp:TextBox ID="tbfecha" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label7" CssClass="form-control" runat="server" Text="Edad:"></asp:Label>
                            <asp:TextBox ID="tbEdad" CssClass="form-control" runat="server" placeholder="ej. 18"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label11" CssClass="form-control" runat="server" Text="Documento:"></asp:Label>
                            <asp:TextBox ID="tbDocumento" CssClass="form-control" runat="server" placeholder="1000465192"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label12" CssClass="form-control" runat="server" Text="Celular:"></asp:Label>
                            <asp:TextBox ID="tbCelular" CssClass="form-control" runat="server" placeholder="3058130637"></asp:TextBox>
                        </div>
                    </fieldset>
                    <br />
                    <fieldset>
                        <legend class="row justify-content-center">Vehiculos</legend>
                        <div class="input-group">
                            <asp:Label ID="Label8" CssClass="form-control" runat="server" Text="Placa:"></asp:Label>
                            <asp:TextBox ID="tbPlaca" CssClass="form-control" runat="server" placeholder="AAA~123"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label9" CssClass="form-control" runat="server" Text="Marca:"></asp:Label>
                            <asp:TextBox ID="tbMarca" CssClass="form-control" runat="server" placeholder="Mazada"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label10" CssClass="form-control" runat="server" Text="Modelo:"></asp:Label>
                            <asp:TextBox ID="tbModelo" CssClass="form-control" runat="server" placeholder="2022"></asp:TextBox>
                        </div>
                    </fieldset>
                    <br />
                    <fieldset>
                        <legend class="row justify-content-center">Trayectos</legend>
                        <div class="input-group">
                            <asp:Label ID="Label13" CssClass="form-control" runat="server" Text="Ciudad Origen:"></asp:Label>
                            <asp:TextBox ID="tbCOrigen" CssClass="form-control" runat="server" placeholder="Bogota"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <asp:Label ID="Label14" CssClass="form-control" runat="server" Text="Ciudad Destino:"></asp:Label>
                            <asp:TextBox ID="tbCDestino" CssClass="form-control" runat="server" placeholder="Medellin"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <asp:Label ID="Label15" CssClass="form-control" runat="server" Text="Valor Real:"></asp:Label>
                            <asp:TextBox ID="tbVReal" CssClass="form-control" runat="server" placeholder="1'000.000"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <asp:Label ID="Label16" CssClass="form-control" runat="server" Text="Valor Cobrado:"></asp:Label>
                            <asp:TextBox ID="tbVCobrado" CssClass="form-control" runat="server" placeholder="3'000.000"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <asp:Label ID="Label18" CssClass="form-control" runat="server" Text="Fecha de trayecto:"></asp:Label>
                            <asp:TextBox ID="tbFTrayecto" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                    </fieldset>
                    <br />
                    <fieldset>
                        <legend class="row justify-content-center">Datos de inicio de sesión</legend>
                        <div class="input-group">
                            <asp:Label ID="Label4" CssClass="form-control" runat="server" Text="Usuario:"></asp:Label>
                            <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="ej. Anne"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label5" CssClass="form-control" runat="server" Text="Clave:"></asp:Label>
                            <asp:TextBox ID="tbClave" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                        </div>
                        <br />
                        <div class="input-group">
                            <asp:Label ID="Label6" CssClass="form-control" runat="server" Text="Repetir Clave:"></asp:Label>
                            <asp:TextBox ID="tbClave2" CssClass="form-control" runat="server" placeholder="Password Again" TextMode="Password"></asp:TextBox>
                        </div>
                        <br />
                        <div class="row justify-content-center">
                            <asp:Image runat="server" CssClass="img-thumbnail" Width="150" Height="150" ImageUrl="~/Sources/Imagenes/Icono usuario.png"/>
                        </div>
                        <div class="row justify-content-center">
                            <asp:FileUpload runat="server" CssClass="small form-control" ID="FUImage" onchange="mostrarimagen(this)" />
                        </div>
                    </fieldset>
                    <br />
                    <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    <br />
                    <div class="row">
                        <asp:Button runat="server" CssClass="form-control btn btn-success" Text="Completar Registro" OnClick="Registrar" />
                        <hr />
                        <asp:Button runat="server" CssClass="form-control btn btn-warning" Text="Cancelar" OnClick="Cancelar" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
