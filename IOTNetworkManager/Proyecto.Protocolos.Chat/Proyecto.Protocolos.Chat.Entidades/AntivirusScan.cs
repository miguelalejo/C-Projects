using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;

namespace Proyecto.Protocolos.Chat.Entidades
{
    public class AntivirusScan
    {
        public static void Escanear()
        {
            Process.Start("miscan");
        }
        public static void CancelarEscanear()
        {
            Process.Start("killnod");
        }
    }
}
