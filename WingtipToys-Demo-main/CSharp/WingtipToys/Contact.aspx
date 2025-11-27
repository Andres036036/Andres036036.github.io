<%@ Page Title="Contacto - NovaType" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs" Inherits="WingtipToys.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section style="max-width:900px; margin:auto; padding:30px;">
        <h1 style="text-align:center; color:#2b2b2b;">Contáctanos</h1>
        <h2 style="text-align:center; color:#555;">Estamos aquí para ayudarte</h2>

        <p style="margin-top:25px; font-size:16px; line-height:1.7;">
            En <strong>NovaType</strong> valoramos la comunicación con nuestros clientes, aliados y visitantes.
            Si tienes dudas, sugerencias o deseas colaborar con nosotros, no dudes en ponerte en contacto.
            Nuestro equipo estará encantado de responderte lo antes posible.
        </p>

        <hr style="margin:30px 0; border:0; border-top:1px solid #ccc;" />

        <h3 style="color:#2b2b2b;">Información de contacto</h3>

        <address style="font-size:16px; line-height:1.8; margin-left:15px;">
            <strong>Nombre de contacto:</strong> Juan José Lambraño<br />
            <strong>Correo electrónico:</strong> <a href="mailto:JuanJoseL@gmail.com">JuanJoseL@gmail.com</a><br />
            <strong>Teléfono:</strong> +57 300 123 4567<br />
            <strong>Ubicación:</strong> Bogotá, Colombia
        </address>

        <p style="margin-top:15px; font-size:16px; line-height:1.7;">
            Si te interesa colaborar, tienes una idea o quieres contratar nuestros servicios,
            completa el formulario de contacto o escríbenos directamente a los correos indicados.
        </p>

        <hr style="margin:30px 0; border:0; border-top:1px solid #ccc;" />

        <h3 style="color:#2b2b2b;">Departamentos</h3>
        <address style="font-size:16px; line-height:1.8; margin-left:15px;">
            <strong>Soporte técnico:</strong> <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing y alianzas:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>

        <hr style="margin:40px 0; border:0; border-top:1px solid #ccc;" />

        <h3 style="color:#2b2b2b;">Formulario de contacto</h3>
        <p style="font-size:16px; line-height:1.7;">
            Déjanos tu mensaje y te responderemos pronto:
        </p>

        <form style="margin-top:15px;">
            <div style="margin-bottom:10px;">
                <label for="nombre" style="display:block; font-weight:bold;">Nombre:</label>
                <input type="text" id="nombre" name="nombre" style="width:100%; padding:8px; border:1px solid #ccc; border-radius:5px;" />
            </div>

            <div style="margin-bottom:10px;">
                <label for="email" style="display:block; font-weight:bold;">Correo electrónico:</label>
                <input type="email" id="email" name="email" style="width:100%; padding:8px; border:1px solid #ccc; border-radius:5px;" />
            </div>

            <div style="margin-bottom:10px;">
                <label for="mensaje" style="display:block; font-weight:bold;">Mensaje:</label>
                <textarea id="mensaje" name="mensaje" rows="5" style="width:100%; padding:8px; border:1px solid #ccc; border-radius:5px;"></textarea>
            </div>

            <div style="text-align:center; margin-top:20px;">
                <input type="submit" value="Enviar mensaje" 
                       style="background-color:#0094ff; color:white; padding:10px 25px; border:none; border-radius:25px; cursor:pointer; font-weight:bold;" />
            </div>
        </form>

        <hr style="margin:40px 0; border:0; border-top:1px solid #ccc;" />

        <p style="text-align:center; font-size:15px; color:#777;">
            &copy; <%: DateTime.Now.Year %> NovaType — Tecnología que te conecta.
        </p>
    </section>
</asp:Content>
