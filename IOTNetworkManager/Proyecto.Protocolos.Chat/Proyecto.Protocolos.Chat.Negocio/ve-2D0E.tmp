using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Proyecto.Protocolos.Chat.Entidades;
using Proyecto.Protocolos.Chat.AccesoDatos;

namespace Proyecto.Protocolos.Chat.Negocio
{
    public class Nequipo_has_mensaje
    {
        public static void Guardarequipo_has_mensaje(equipo_has_mensaje un_equipo_has_mensaje)
        {
            Baseequipo_has_mensaje basehasmen = new Baseequipo_has_mensaje();
            basehasmen.Guardarequipo_has_mensaje(un_equipo_has_mensaje);
            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }
        public static void Modificarequipo_has_mensaje(equipo_has_mensaje un_equipo_has_mensaje)
        {
            Baseequipo_has_mensaje basehasmen = new Baseequipo_has_mensaje();
            basehasmen.Modificarequipo_has_mensaje(un_equipo_has_mensaje);
            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }
        public static void Eliminarequipo_has_mensaje(equipo_has_mensaje un_equipo_has_mensaje)
        {
            Baseequipo_has_mensaje basehasmen = new Baseequipo_has_mensaje();
            basehasmen.Eliminarequipo_has_mensaje(un_equipo_has_mensaje.idequipo_has_mensaje);
            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }
        public static void Registrosequipo_has_mensaje()
        {
            Baseequipo_has_mensaje basehasmen = new Baseequipo_has_mensaje();
            basehasmen.Registrosequipo_has_mensaje();
            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }
        public static equipo_has_mensaje[] BuscarRegistrosequipo_has_mensaje_idequipo_has_mensaje(int idequipo_has_mensaje)
        {
            Baseequipo_has_mensaje basehasmen = new Baseequipo_has_mensaje();
            return basehasmen.BuscarRegistros_idequipo_has_mensaje(idequipo_has_mensaje);
        }
        public static equipo_has_mensaje[] QuitarListaequipos(equipo_has_mensaje[] listaequiposchat, equipo_has_mensaje unequipomensaje)
        {
            if (listaequiposchat != null)
            {
                if (listaequiposchat.Length > 1)
                {
                    if (existe(listaequiposchat, unequipomensaje.equipo))
                    {
                        equipo_has_mensaje[] tempus = new equipo_has_mensaje[listaequiposchat.Length - 1];
                        for (int i = 0, k = 0; i < listaequiposchat.Length; i++)
                        {
                            if (listaequiposchat[i].equipo.idEquipo != unequipomensaje.equipo.idEquipo)
                            {

                                tempus[k] = listaequiposchat[i];
                                k++;
                            }
                        }
                        listaequiposchat = tempus;
                        return listaequiposchat;
                    }
                    else
                        return null;
                }
                else
                    return null;
            }
            else
                return null;

        }
        public static bool existe(equipo_has_mensaje[] listaequiposchat,equipo unequipo)
        {
            for (int i = 0; i < listaequiposchat.Length; i++)
            {
                if (listaequiposchat[i].equipo.idEquipo == unequipo.idEquipo)
                {
                    return true;         
                }
            }
            return false;
        }
        public static equipo_has_mensaje[] LlenarListaequipos(equipo_has_mensaje[] listaequiposchat, equipo_has_mensaje unequipomensaje)
        {

            if (listaequiposchat != null && listaequiposchat.Length > 0)
            {
                bool llenar = true;
                for (int i = 0; i < listaequiposchat.Length; i++)
                {
                    if (listaequiposchat[i].equipo.idEquipo == unequipomensaje.equipo.idEquipo)
                    {
                        llenar = false;
                        listaequiposchat[i] = unequipomensaje;
                        //throw new Exception("Error el usuario ya esta conectado");
                    }
                }
                if (llenar)
                {
                    equipo_has_mensaje[] tempus = new equipo_has_mensaje[listaequiposchat.Length + 1];
                    listaequiposchat.CopyTo(tempus, 0);
                    tempus[listaequiposchat.Length] = unequipomensaje;
                    listaequiposchat = tempus;
                }
            }
            else
            {
                listaequiposchat = new equipo_has_mensaje[1];
                listaequiposchat[0] = unequipomensaje;

            }
            return listaequiposchat;
        }
        public static equipo_has_mensaje[] BuscarRegistros_idMensaje(int idMensaje)
        {
            Baseequipo_has_mensaje basehasmen = new Baseequipo_has_mensaje();
            return basehasmen.BuscarRegistros_idMensaje(idMensaje);
        }
        public static mensaje[] BuscarRegistros_Mensaje(equipo_has_mensaje[]lista)
        {
            mensaje[] temp = new mensaje[lista.Length]; 
            for (int i = 0; i < lista.Length; i++)
            {
                temp[i] = lista[i].mensaje;
            }
            return temp;
        }
        public static mensaje[] BuscarRegistroListaMensaje(equipo_has_mensaje[] lista, int idSala)
        {
            mensaje[] temp = new mensaje[NuemroBuscarRegistroLista(lista,idSala)];
            for (int i = 0,k=0; i < lista.Length; i++)
            { 
                if (lista[i].equipo.sala.idSala == idSala)
                {temp[k] = lista[i].mensaje;
                }
            }
            return temp;
        }
        public static int NuemroBuscarRegistroLista(equipo_has_mensaje[] lista,int idSala)
        {
            int suma = 0;
            for (int i = 0; i < lista.Length; i++)
            {
                if (lista[i].equipo.sala.idSala == idSala)
                    suma++;
            }
            return suma;
        }
        public static equipo_has_mensaje[] BuscarRegistrosequipo_has_mensaje()
        {
            Baseequipo_has_mensaje basehasmen = new Baseequipo_has_mensaje();
            return basehasmen.BuscarRegistrosequipo_has_mensaje();
        }
        
    }
}
