using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Sockets;
using Proyecto.Protocolos.Chat.Entidades;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;

namespace Proyecto.Protocolos.Chat.Entidades
{
    public class ProtocoloCliente
    {   
        TcpClient cliente;
        NetworkStream stream;
        public TcpClient Cliente
        {
            get {
                return this.cliente;
            }
            set {
                this.cliente = value;
            }
        }
        public NetworkStream Stream
        {
            get {
                return this.stream;
            }
            set {
                this.stream = value;
            }
        }
        public ProtocoloCliente()
        {
            this.stream = null;
        }
        public bool EnviarMensaje(equipo_has_mensaje  un_equipomensaje,string ipservidor)
        {
            cliente = new System.Net.Sockets.TcpClient();
            cliente.Connect(ipservidor, (int)un_equipomensaje.equipo.sala.puerto);
            stream = cliente.GetStream();
            if (stream.CanWrite && stream != null)
            {
                IFormatter formatter = new BinaryFormatter();
                formatter.Serialize(stream, un_equipomensaje);
                
                byte[] buff = new byte[un_equipomensaje.mensaje.valor.Length];
                buff = System.Text.Encoding.ASCII.GetBytes(un_equipomensaje.mensaje.valor);
                stream.Write(buff, 0, (int)buff.Length);
               
                return true;
            }
            return false;
        }
        
        public equipo_has_mensaje Escuchar()
        {
            if (stream != null)
            {
                if (stream.CanRead && stream.DataAvailable)
                {
                    IFormatter formatter = new BinaryFormatter();
                    //Usuario chat desde el servidor
                    equipo_has_mensaje usuariochatServidor = (equipo_has_mensaje)formatter.Deserialize(stream);
                    return usuariochatServidor;

                }
                else
                    return null;
            }
            else
                return null;
        }
        public void Cerrar()
        {
            if (this.cliente != null)
            {
                this.cliente.Close();
                if(this.stream!=null)
                    this.stream.Close();
            } 
        }
    }
}
