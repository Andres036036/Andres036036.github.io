using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;
using WingtipToys.Logic;
using System.Collections.Specialized;
using System.Collections;
using System.Web.ModelBinding;

namespace WingtipToys
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (ShoppingCartActions carritoUsuario = new ShoppingCartActions())
            {
                decimal totalCarrito = 0;
                totalCarrito = carritoUsuario.GetTotal();

                if (totalCarrito > 0)
                {
                    // Mostrar total del carrito
                    lblTotal.Text = String.Format("{0:c}", totalCarrito);
                }
                else
                {
                    LabelTotalText.Text = "";
                    lblTotal.Text = "";
                    ShoppingCartTitle.InnerText = "El carrito de compras está vacío";
                    UpdateBtn.Visible = false;
                    CheckoutImageBtn.Visible = false;
                }
            }
        }

        // Obtener los productos del carrito
        public List<CartItem> GetShoppingCartItems()
        {
            ShoppingCartActions acciones = new ShoppingCartActions();
            return acciones.GetCartItems();
        }

        // Actualizar los productos del carrito
        public List<CartItem> UpdateCartItems()
        {
            using (ShoppingCartActions carritoUsuario = new ShoppingCartActions())
            {
                String idCarrito = carritoUsuario.GetCartId();

                ShoppingCartActions.ShoppingCartUpdates[] actualizacionesCarrito =
                    new ShoppingCartActions.ShoppingCartUpdates[CartList.Rows.Count];

                for (int i = 0; i < CartList.Rows.Count; i++)
                {
                    IOrderedDictionary valoresFila = new OrderedDictionary();
                    valoresFila = GetValues(CartList.Rows[i]);
                    actualizacionesCarrito[i].ProductId = Convert.ToInt32(valoresFila["ProductID"]);

                    CheckBox cbEliminar = new CheckBox();
                    cbEliminar = (CheckBox)CartList.Rows[i].FindControl("Remove");
                    actualizacionesCarrito[i].RemoveItem = cbEliminar.Checked;

                    TextBox txtCantidad = new TextBox();
                    txtCantidad = (TextBox)CartList.Rows[i].FindControl("PurchaseQuantity");
                    actualizacionesCarrito[i].PurchaseQuantity = Convert.ToInt16(txtCantidad.Text.ToString());
                }

                carritoUsuario.UpdateShoppingCartDatabase(idCarrito, actualizacionesCarrito);
                CartList.DataBind();
                lblTotal.Text = String.Format("{0:c}", carritoUsuario.GetTotal());
                return carritoUsuario.GetCartItems();
            }
        }

        // Obtener valores de una fila del GridView
        public static IOrderedDictionary GetValues(GridViewRow fila)
        {
            IOrderedDictionary valores = new OrderedDictionary();
            foreach (DataControlFieldCell celda in fila.Cells)
            {
                if (celda.Visible)
                {
                    // Extraer valores de la celda
                    celda.ContainingField.ExtractValuesFromCell(valores, celda, fila.RowState, true);
                }
            }
            return valores;
        }

        // Botón para actualizar carrito
        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            UpdateCartItems();
        }

        // Botón para proceder al pago
        protected void CheckoutBtn_Click(object sender, ImageClickEventArgs e)
        {
            using (ShoppingCartActions carritoUsuario = new ShoppingCartActions())
            {
                Session["payment_amt"] = carritoUsuario.GetTotal();
            }
            Response.Redirect("Checkout/CheckoutStart.aspx");
        }
    }
}