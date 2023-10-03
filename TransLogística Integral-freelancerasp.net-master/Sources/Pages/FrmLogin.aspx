<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="CRUD.Sources.Pages.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../Style/style.css" rel="stylesheet" />
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
    <title>Inicio de sesión</title>
</head>
<body>
    <form id="FrmLogin" runat="server">
        <div class="container" >
            <div class="cabezera">
                <img src="../Imagenes/Icono%20usuario.png" />
            </div>
            <div class="cuerpo">
                <h1>Inicio de sesión</h1>
                <formview class="formulario" >
                    <div >
                        <asp:TextBox runat="server" CssClass="form-control" placeholder="User" ID="tbUsuario"></asp:TextBox>
                    </div>
                    <div >
                        <asp:TextBox runat="server" CssClass="form-control" placeholder="Password" TextMode="Password" ID="tbClave"></asp:TextBox>
                    </div>
                    <div >
                        <asp:Button runat="server" CssClass="form-control btn btn-dark" Text="LOG IN" OnClick="Iniciar"></asp:Button>
                    </div>
                    <div >
                        <asp:Label runat="server" ID="lblError" CssClass="alert-danger"></asp:Label>
                        <br />
                        <br />
                        <asp:Label runat="server" class="formulario"  Text="¿No tienes una cuenta?, Regístrate"></asp:Label>
                        <asp:LinkButton runat="server" class="formulario" Text=" aquí" OnClick="Registrarse"></asp:LinkButton>
                    </div>
                </formview>
            </div>
        </div>
    </form>
</body>
</html>
