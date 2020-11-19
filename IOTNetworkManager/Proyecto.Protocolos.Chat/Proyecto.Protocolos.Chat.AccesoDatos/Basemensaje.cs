using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using Proyecto.Protocolos.Chat.Entidades;

namespace Proyecto.Protocolos.Chat.AccesoDatos
{
	public class Basemensaje: BaseConector
	{

		public Basemensaje(MySqlConnection una_conexion):base(una_conexion)
		{
		}
        public Basemensaje()
            : base()
        {
        }

		public void Guardarmensaje(mensaje _mensaje)
		{

			this.Comando ("Insert Into mensaje(ipOrigen,ipDestino,fechaEnvio,horaEnvio,valor,metodo,cabecera,rtf,privado)values("+"'"+_mensaje.ipOrigen.ToString()+"'"+","+"'"+_mensaje.ipDestino.ToString()+"'"+","+"'"+_mensaje.fechaEnvio.ToString()+"'"+","+"'"+_mensaje.horaEnvio.ToString()+"'"+","+"'"+_mensaje.valor.ToString()+"'"+","+"'"+_mensaje.metodo.ToString()+"'"+","+"'"+_mensaje.cabecera.ToString()+"'"+","+"'"+_mensaje.rtf.ToString()+"'"+","+_mensaje.privado.ToString()+")");
		}

		public void Modificarmensaje(mensaje _mensaje)
		{

			this.Comando ("Update mensaje Set idMensaje = "+_mensaje.idMensaje.ToString()+",ipOrigen = "+"'"+_mensaje.ipOrigen.ToString()+"'"+",ipDestino = "+"'"+_mensaje.ipDestino.ToString()+"'"+",fechaEnvio = "+"'"+_mensaje.fechaEnvio.ToString()+"'"+",horaEnvio = "+"'"+_mensaje.horaEnvio.ToString()+"'"+",valor = "+"'"+_mensaje.valor.ToString()+"'"+",metodo = "+"'"+_mensaje.metodo.ToString()+"'"+",cabecera = "+"'"+_mensaje.cabecera.ToString()+"'"+",rtf = "+"'"+_mensaje.rtf.ToString()+"'"+",privado = "+_mensaje.privado.ToString()+" where idMensaje = "+_mensaje.idMensaje.ToString() );
		}

		public void Eliminarmensaje( int idMensaje )
		{

			this.Comando ("Delete From mensaje  where idMensaje = "+idMensaje.ToString() );
		}

		public int NumeroRegistrosmensaje ()
		{

			this.Adaptador ("Select Count(*) From mensaje ");
			if (this.Tabla.Rows.Count > 0)
				return int.Parse(this.Tabla.Rows[0].ItemArray[0].ToString());
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");		}

		public DataTable BuscarRegistrosmensaje_idMensaje (int idMensaje)
		{

			this.Adaptador ("Select idMensaje,ipOrigen,ipDestino,fechaEnvio,horaEnvio,valor,metodo,cabecera,rtf,privado From mensaje  where idMensaje = "+idMensaje.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosmensaje_ipOrigen (String ipOrigen)
		{

			this.Adaptador ("Select idMensaje,ipOrigen,ipDestino,fechaEnvio,horaEnvio,valor,metodo,cabecera,rtf,privado From mensaje  where ipOrigen = "+"'"+ipOrigen.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosmensaje_ipDestino (String ipDestino)
		{

			this.Adaptador ("Select idMensaje,ipOrigen,ipDestino,fechaEnvio,horaEnvio,valor,metodo,cabecera,rtf,privado From mensaje  where ipDestino = "+"'"+ipDestino.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosmensaje_fechaEnvio (DateTime fechaEnvio)
		{

			this.Adaptador ("Select idMensaje,ipOrigen,ipDestino,fechaEnvio,horaEnvio,valor,metodo,cabecera,rtf,privado From mensaje  where fechaEnvio = "+"'"+fechaEnvio.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosmensaje_horaEnvio (DateTime horaEnvio)
		{

			this.Adaptador ("Select idMensaje,ipOrigen,ipDestino,fechaEnvio,horaEnvio,valor,metodo,cabecera,rtf,privado From mensaje  where horaEnvio = "+"'"+horaEnvio.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosmensaje_valor (String valor)
		{

			this.Adaptador ("Select idMensaje,ipOrigen,ipDestino,fechaEnvio,horaEnvio,valor,metodo,cabecera,rtf,privado From mensaje  where valor = "+"'"+valor.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosmensaje_metodo (String metodo)
		{

			this.Adaptador ("Select idMensaje,ipOrigen,ipDestino,fechaEnvio,horaEnvio,valor,metodo,cabecera,rtf,privado From mensaje  where metodo = "+"'"+metodo.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosmensaje_cabecera (String cabecera)
		{

			this.Adaptador ("Select idMensaje,ipOrigen,ipDestino,fechaEnvio,horaEnvio,valor,metodo,cabecera,rtf,privado From mensaje  where cabecera = "+"'"+cabecera.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosmensaje_rtf (String rtf)
		{

			this.Adaptador ("Select idMensaje,ipOrigen,ipDestino,fechaEnvio,horaEnvio,valor,metodo,cabecera,rtf,privado From mensaje  where rtf = "+"'"+rtf.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosmensaje_privado (int privado)
		{

			this.Adaptador ("Select idMensaje,ipOrigen,ipDestino,fechaEnvio,horaEnvio,valor,metodo,cabecera,rtf,privado From mensaje  where privado = "+privado.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable Registrosmensaje ()
		{

			this.Adaptador ("Select idMensaje,ipOrigen,ipDestino,fechaEnvio,horaEnvio,valor,metodo,cabecera,rtf,privado From mensaje");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");		}

		public mensaje[]  BuscarRegistros_idMensaje (int idMensaje)
		{

			DataTable tabla = this.BuscarRegistrosmensaje_idMensaje (idMensaje);
			mensaje[] lista = new mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=mensaje.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public mensaje[]  BuscarRegistros_ipOrigen (String ipOrigen)
		{

			DataTable tabla = this.BuscarRegistrosmensaje_ipOrigen (ipOrigen);
			mensaje[] lista = new mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=mensaje.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public mensaje[]  BuscarRegistros_ipDestino (String ipDestino)
		{

			DataTable tabla = this.BuscarRegistrosmensaje_ipDestino (ipDestino);
			mensaje[] lista = new mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=mensaje.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public mensaje[]  BuscarRegistros_fechaEnvio (DateTime fechaEnvio)
		{

			DataTable tabla = this.BuscarRegistrosmensaje_fechaEnvio (fechaEnvio);
			mensaje[] lista = new mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=mensaje.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public mensaje[]  BuscarRegistros_horaEnvio (DateTime horaEnvio)
		{

			DataTable tabla = this.BuscarRegistrosmensaje_horaEnvio (horaEnvio);
			mensaje[] lista = new mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=mensaje.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public mensaje[]  BuscarRegistros_valor (String valor)
		{

			DataTable tabla = this.BuscarRegistrosmensaje_valor (valor);
			mensaje[] lista = new mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=mensaje.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public mensaje[]  BuscarRegistros_metodo (String metodo)
		{

			DataTable tabla = this.BuscarRegistrosmensaje_metodo (metodo);
			mensaje[] lista = new mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=mensaje.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public mensaje[]  BuscarRegistros_cabecera (String cabecera)
		{

			DataTable tabla = this.BuscarRegistrosmensaje_cabecera (cabecera);
			mensaje[] lista = new mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=mensaje.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public mensaje[]  BuscarRegistros_rtf (String rtf)
		{

			DataTable tabla = this.BuscarRegistrosmensaje_rtf (rtf);
			mensaje[] lista = new mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=mensaje.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public mensaje[]  BuscarRegistros_privado (int privado)
		{

			DataTable tabla = this.BuscarRegistrosmensaje_privado (privado);
			mensaje[] lista = new mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=mensaje.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}
        public mensaje[] BuscarRegistrosmensaje()
		{

			DataTable tabla = this.Registrosmensaje();
			mensaje[] lista = new mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=mensaje.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

	}
}
