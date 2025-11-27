<%@ Page Title="Bienvenidos a NovaType" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WingtipToys._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section style="max-width:900px; margin:auto; padding:30px;">
        <h1 style="text-align:center; color:#2b2b2b;">Bienvenidos a NovaType</h1>
        <h2 style="text-align:center; color:#555;">Innovación que se adapta a ti</h2>

        <p style="margin-top:25px; font-size:16px; line-height:1.7;">
            En <strong>NovaType</strong> te damos la bienvenida a un espacio dedicado a la tecnología moderna. 
            Nos especializamos en ofrecer productos innovadores, confiables y de alta calidad que se ajustan a 
            las necesidades de cada usuario, combinando diseño, rendimiento y funcionalidad.
        </p>

        <p style="font-size:16px; line-height:1.7;">
            Nuestro objetivo es conectar a las personas con las últimas tendencias en dispositivos, accesorios 
            y soluciones digitales, garantizando una experiencia de compra segura, rápida y personalizada. 
            En NovaType creemos que la tecnología no solo debe ser avanzada, sino también accesible y útil para todos.
        </p>

        <p style="font-size:16px; line-height:1.7;">
            Ya sea que busques herramientas para potenciar tu productividad, productos inteligentes para tu hogar 
            o dispositivos que te acompañen en tu día a día, en <strong>NovaType</strong> encontrarás opciones pensadas 
            para cada estilo de vida.
        </p>

        <blockquote style="border-left:4px solid #0094ff; padding-left:15px; color:#444; margin-top:25px; font-style:italic;">
            “La tecnología debe inspirar, facilitar y transformar la manera en que vivimos.”
        </blockquote>

        <hr style="margin:40px 0; border:0; border-top:1px solid #ccc;" />

        <h3 style="color:#2b2b2b;">Lo que ofrecemos</h3>
        <ul style="font-size:16px; line-height:1.7; margin-left:25px;">
            <li><strong>Innovación constante:</strong> Productos actualizados con lo más reciente en tecnología.</li>
            <li><strong>Calidad y confianza:</strong> Solo trabajamos con marcas y componentes de alto rendimiento.</li>
            <li><strong>Atención personalizada:</strong> Nuestro equipo te acompaña antes, durante y después de tu compra.</li>
            <li><strong>Experiencia segura:</strong> Tu satisfacción y seguridad son nuestra prioridad.</li>
        </ul>

        <hr style="margin:40px 0; border:0; border-top:1px solid #ccc;" />

        <h3 style="color:#2b2b2b;">Comienza a explorar</h3>
        <p style="font-size:16px; line-height:1.7;">
            Descubre todo lo que <strong>NovaType</strong> tiene para ti visitando nuestras secciones de productos. 
            Encontrarás desde accesorios esenciales hasta dispositivos inteligentes que transformarán tu experiencia digital.
        </p>

        <div style="text-align:center; margin-top:25px;">
            <a href="ProductList.aspx" style="background-color:#0094ff; color:white; padding:12px 28px; border-radius:25px; text-decoration:none; font-weight:bold;">
                Explorar productos
            </a>
        </div>

        <hr style="margin:40px 0; border:0; border-top:1px solid #ccc;" />

        <p style="text-align:center; font-size:15px; color:#777;">
            &copy; <%: DateTime.Now.Year %> NovaType. Innovación, calidad y tecnología para ti.
        </p>
    </section>
</asp:Content>
