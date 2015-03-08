using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HACKCDMX
{
    public partial class Habilidades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            label_info.Text=" ";
            label_info.Text = "Evalúa y entrena el reconocimiento de señales, semáforos y marcas a la vista del conductor que guían el uso apropiado de las vialidades; por ejemplo, señales preventivas humanas, restrictivas e informativas. ";

        }

        protected void Image2_Click(object sender, ImageClickEventArgs e)
        {
            label_info.Text=" ";
            label_info.Text = "Evalúa y entrena las actividades típicas necesarias para conducir. Por ejemplo, componentes del tablero; aceleración/desaceleración; control y viraje el volante; tipos de vialidad; dinámica de cruceros, pasos peatonales y estacionamiento. Oportunos reflejos, atención y observación. ";
            


        }

        protected void Image3_Click(object sender, ImageClickEventArgs e)
        {
            label_info.Text = " ";
            label_info.Text = "Evalúa y entrena la adaptación de las conductas al volante de acuerdo a las condiciones climatológicas. Por ejemplo, disminución de velocidad con lluvia; conducir en la noche y conducir con el sol de frente.  ";
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            label_info.Text = " ";
            label_info.Text = " evalúa y entrena los elementos del sistema de protección en el vehículo. Por ejemplo, uso de cinturones de seguridad; uso de asientos; visibilidad (parabrisas, espejos, etc); condiciones óptimas del conductor e indicadores del tablero.";
        }

        protected void Image4_Click(object sender, ImageClickEventArgs e)
        {
            label_info.Text = " ";
            label_info.Text = "Evalúa y entrena el conjunto de acciones apropiadas ante un imprevisto. Por ejemplo, un camino en muy malas condiciones; agresividad de otro conductor; peatones imprudentes; fallas mecánicas y accidentes. ";
        }
    }
}