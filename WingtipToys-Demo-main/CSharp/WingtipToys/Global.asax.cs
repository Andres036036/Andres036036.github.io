using System;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Data.Entity;
using WingtipToys.Models;
using WingtipToys.Logic;

namespace WingtipToys
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Registrar rutas
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            // Registrar bundles
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            // Inicializar BD
            Database.SetInitializer(new ProductDatabaseInitializer());

            // Crear rol y usuario inicial
            RoleActions roleActions = new RoleActions();
            roleActions.AddUserAndRole();

            // Rutas personalizadas
            RegisterCustomRoutes(RouteTable.Routes);
        }

        void RegisterCustomRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(
                "ProductsByCategoryRoute",
                "Category/{categoryName}",
                "~/ProductList.aspx"
            );

            routes.MapPageRoute(
                "ProductByNameRoute",
                "Product/{productName}",
                "~/ProductDetails.aspx"
            );
        }

        void Application_Error(object sender, EventArgs e)
        {
            Exception exc = Server.GetLastError();

            if (exc is HttpUnhandledException && exc.InnerException != null)
            {
                Exception newExc = new Exception(exc.InnerException.Message);
                Server.Transfer("ErrorPage.aspx", true);
            }
        }
    }
}