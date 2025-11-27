<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Security.aspx.cs" Inherits="WingtipToys.Admin.Security" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Administración de Usuarios</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:LoginView runat="server">
            <RoleGroups>
                <asp:RoleGroup Roles="canEdit">
                    <ContentTemplate>

                        <h2>Gestión de Usuarios y Roles</h2>

                        <!-- PRIMER BLOQUE: Hacer admin -->
                        <asp:TextBox 
                            ID="TextBox1" 
                            runat="server" 
                            CssClass="form-control" 
                            placeholder="Correo del usuario" />
                        <br />

                        <asp:Button 
                            ID="Button1" 
                            runat="server" 
                            Text="Hacer Admin" 
                            CssClass="btn btn-primary"
                            OnClick="Button1_Click" />
                        <br /><br />

                        <asp:Label 
                            ID="Label1" 
                            runat="server" 
                            CssClass="text-info"></asp:Label>

                        <hr />

                        <!-- SEGUNDO BLOQUE: Crear usuario -->
                        <h3>Crear nuevo usuario</h3>
                        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" />
                        <hr />

                        <!-- TERCER BLOQUE: Asignar rol -->
                        <h3>Asignar usuario al rol canEdit</h3>

                        Usuario:
                        <asp:TextBox 
                            ID="txtUser" 
                            runat="server" />
                        <br /><br />

                        <asp:Button 
                            ID="btnAddToRole" 
                            runat="server" 
                            Text="Asignar rol canEdit"
                            OnClick="btnAddToRole_Click" />
                        <br /><br />

                        <asp:Label 
                            ID="lblStatus" 
                            runat="server" 
                            Text=""></asp:Label>

                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>

            <AnonymousTemplate>
                Debes iniciar sesión como administrador para acceder aquí.
            </AnonymousTemplate>
        </asp:LoginView>

    </form>
</body>
</html>