using System;
using System.Collections.Generic;
using System.Windows.Forms;

namespace Proyecto.Protocolos.Chat.UI.WinFormCliente
{
    static class Program
    {
        /// <summary>
        /// Punto de entrada principal para la aplicación.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            FormLogin formalogin = new FormLogin();
            //FormPropiedades propiedades = new FormPropiedades();
            //Application.Run(propiedades);
            Application.Run(formalogin);
                
           
            
        }
    }
}
