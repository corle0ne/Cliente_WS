using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cliente_WS.Calculadora_Service;

namespace Cliente_WS.Catalogos.Calculadora
{
    public partial class Calculadora : System.Web.UI.Page
    {
        //crear un cliente que resvuelva las peticiones del servicio soap
        Calculadora_Service.WebService1SoapClient Cliente_WS;
        protected void Page_Load(object sender, EventArgs e)
        {
            Cliente_WS = new Calculadora_Service.WebService1SoapClient();

        }

        protected void btnSumar_Click(object sender, EventArgs e)
        {
            double a = double.Parse(txta.Text);
            double b = double.Parse(txtb.Text);

            double resultado = Cliente_WS.Suma(a, b);
            lblresultado.Text = resultado.ToString();

        }

        protected void btRestar_Click(object sender, EventArgs e)
        {
            double a =double.Parse(txta.Text);
            double b = double.Parse(txtb.Text);

            double resultado = Cliente_WS.Resta(a,b);
            lblresultado.Text=resultado.ToString();
        }

        protected void btnMultiplicar_Click(object sender, EventArgs e)
        {
            double a = double.Parse(txta.Text);
            double b = double.Parse(txtb.Text);

            double resultado = Cliente_WS.Multiplicacion(a, b);
            lblresultado.Text = resultado.ToString();

        }

        protected void btnDividir_Click(object sender, EventArgs e)
        {
            double a = double.Parse(txta.Text);
            double b = double.Parse(txtb.Text);

            double resultado = Cliente_WS.Division(a, b);
            lblresultado.Text = resultado.ToString();

        }
    }
}