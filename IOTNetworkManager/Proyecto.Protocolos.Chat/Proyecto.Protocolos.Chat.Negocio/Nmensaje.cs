using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Proyecto.Protocolos.Chat.Entidades;
using Proyecto.Protocolos.Chat.AccesoDatos;

namespace Proyecto.Protocolos.Chat.Negocio
{
    public class Nmensaje
    {
        public static void Guardarmensaje(mensaje un_msj)
        {
            Basemensaje basem = new Basemensaje();
            basem.Guardarmensaje(un_msj);
            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }
        public static void Modificarmensaje(mensaje un_msj)
        {
             Basemensaje basem = new Basemensaje();
            basem.Modificarmensaje(un_msj);
            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }
        public static void Eliminarmensaje(mensaje un_msj)
        {
            Basemensaje basem = new Basemensaje();
            basem.Eliminarmensaje(un_msj.idMensaje);
            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }
        public static void Registrosmensaje()
        {
            Basemensaje basem = new Basemensaje();
            basem.Registrosmensaje();
            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }
        public static int NumeroRegistrosmensaje()
        {
            Basemensaje basem = new Basemensaje();
            return basem.NumeroRegistrosmensaje();
        }
        public static mensaje[] BuscarRegistrosmensaje()
        {
            Basemensaje basem = new Basemensaje();
            return basem.BuscarRegistrosmensaje();
        }
    }
}
