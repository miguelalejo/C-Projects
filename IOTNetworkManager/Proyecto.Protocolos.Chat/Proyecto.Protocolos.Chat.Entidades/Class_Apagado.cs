using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;

namespace Proyecto.Protocolos.Chat.Entidades
{
    public class Class_Apagado
    {
        string argumento = null;
        DateTime tmp;
        public Class_Apagado(string argumento, DateTime tmp)
        {
            this.argumento = argumento;
            this.tmp = tmp;
        }
        public void Shut_Down()
        {
            try
            {
                while (true)
                {
                    if (tmp.ToLongTimeString() == DateTime.Now.ToLongTimeString())
                    {
                        Process proceso = new Process();
                        proceso.StartInfo.UseShellExecute = false;
                        proceso.StartInfo.RedirectStandardOutput = true;
                        proceso.StartInfo.FileName = "restart.exe";
                        proceso.StartInfo.Arguments = this.argumento;
                        proceso.Start();
                        break;
                    }
                }
            }
            catch
            {
                throw;
            }
        }
        public static void Shutdown()
        {
            Process.Start("shutdown.exe", "-r -t 120");
        }
        public static void CancelShutdown()
        {
            Process.Start("shutdown.exe", "-a");
        }
        public static void ApagarMonitor()
        {
            Process.Start("nircmd.exe", "monitor off");
        }
        public static void EncenderMonitor()
        {
            Process.Start("nircmd.exe", "screensaver");
            Process.Start("nircmd.exe", "monitor on");
        }
    }
}
