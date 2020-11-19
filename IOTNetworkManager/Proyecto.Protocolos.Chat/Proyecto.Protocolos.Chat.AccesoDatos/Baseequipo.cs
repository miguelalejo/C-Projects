using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using Proyecto.Protocolos.Chat.Entidades;

namespace Proyecto.Protocolos.Chat.AccesoDatos
{
	public class Baseequipo: BaseConector
	{
		private Baseperfil baseperfil;
		private Basesala basesala;

		public Baseperfil Baseperfil
		{
			get {return  baseperfil;}
			set { baseperfil=value; }
		}

		public Basesala Basesala
		{
			get {return  basesala;}
			set { basesala=value; }
		}

		public Baseequipo(MySqlConnection una_conexion):base(una_conexion)
		{
			this.baseperfil= new Baseperfil(una_conexion);
			this.basesala= new Basesala(una_conexion);
		}
        public Baseequipo()
            : base()
        {
            this.baseperfil = new Baseperfil();
            this.basesala = new Basesala();
        }

		public void Guardarequipo(equipo _equipo)
		{

			this.Comando ("Insert into equipo(idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat)values("+_equipo.idEquipo.ToString()+","+_equipo.perfil.idPerfil.ToString()+","+_equipo.sala.idSala.ToString()+","+"'"+_equipo.Mac.ToString()+"'"+","+"'"+_equipo.NombreNick.ToString()+"'"+","+"'"+_equipo.Contraseña.ToString()+"'"+","+"'"+_equipo.LLaveNick.ToString()+"'"+","+"'"+_equipo.LlaveContraseña.ToString()+"'"+","+_equipo.LLavePublica.ToString()+","+_equipo.VecesIngreso.ToString()+","+_equipo.Activo.ToString()+","+"'"+_equipo.Dominio.ToString()+"'"+","+_equipo.VecesIngresoChat.ToString()+")");
		}

		public void Modificarequipo(equipo _equipo)
		{

			this.Comando ("Update equipo Set idEquipo = "+_equipo.idEquipo.ToString()+",idPerfil = "+_equipo.perfil.idPerfil.ToString()+",idSala = "+_equipo.sala.idSala.ToString()+",Mac = "+"'"+_equipo.Mac.ToString()+"'"+",NombreNick = "+"'"+_equipo.NombreNick.ToString()+"'"+",Contraseña = "+"'"+_equipo.Contraseña.ToString()+"'"+",LLaveNick = "+"'"+_equipo.LLaveNick.ToString()+"'"+",LlaveContraseña = "+"'"+_equipo.LlaveContraseña.ToString()+"'"+",LLavePublica = "+_equipo.LLavePublica.ToString()+",VecesIngreso = "+_equipo.VecesIngreso.ToString()+",Activo = "+_equipo.Activo.ToString()+",Dominio = "+"'"+_equipo.Dominio.ToString()+"'"+",VecesIngresoChat = "+_equipo.VecesIngresoChat.ToString()+" where idEquipo = "+_equipo.idEquipo.ToString() );
		}
        public void Modificarequipo_Estado(bool estado,int unidequipo)
		{
            int val = 0;
            if (estado)
                val = 1;

            this.Comando("Update equipo Set Activo = " + val.ToString() + " where idEquipo = " + unidequipo.ToString());
		}
        public void ModificarTodosequipo_Estado()
        {
            int val=0;
            this.Comando("Update equipo Set Activo = " + val.ToString());
        }
        public void Modificarequipo_IPequipo(string unaip, int unidequipo)
        {
           this.Comando("Update equipo Set Ipequipo = '" + unaip+"'"+ " where idEquipo = " + unidequipo.ToString());
        }
        public void Modificarequipo_VecesIngresoSala(int vecesing, int unidequipo)
        {
            this.Comando("Update equipo Set VecesIngreso = " + vecesing.ToString() + " where idEquipo = " + unidequipo.ToString());
        }
        

		public void Eliminarequipo( int idEquipo )
		{

			this.Comando ("Delete From equipo  where idEquipo = "+idEquipo.ToString() );
		}

		public int NumeroRegistrosequipo ()
		{

			this.Adaptador ("Select Count(*) From equipo ");
			if (this.Tabla.Rows.Count > 0)
				return (int)this.Tabla.Rows[0].ItemArray[0];
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");		}

		public DataTable BuscarRegistrosequipo_idEquipo (int idEquipo)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where idEquipo = "+idEquipo.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_idPerfil (int idPerfil)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where idPerfil = "+idPerfil.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_idSala (int idSala)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where idSala = "+idSala.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_Mac (String Mac)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where Mac = "+"'"+Mac.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_NombreNick (String NombreNick)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where NombreNick = "+"'"+NombreNick.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_Contraseña (String Contraseña)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where Contraseña = "+"'"+Contraseña.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_LLaveNick (String LLaveNick)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where LLaveNick = "+"'"+LLaveNick.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_LlaveContraseña (String LlaveContraseña)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where LlaveContraseña = "+"'"+LlaveContraseña.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_LLavePublica (int LLavePublica)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where LLavePublica = "+LLavePublica.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_VecesIngreso (int VecesIngreso)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where VecesIngreso = "+VecesIngreso.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_Activo (bool Activo)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where Activo = "+Activo.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_Dominio (String Dominio)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where Dominio = "+"'"+Dominio.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_VecesIngresoChat (int VecesIngresoChat)
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo  where VecesIngresoChat = "+VecesIngresoChat.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable Registrosequipo ()
		{

			this.Adaptador ("Select idEquipo,idPerfil,idSala,Mac,NombreNick,Contraseña,LLaveNick,LlaveContraseña,LLavePublica,VecesIngreso,Activo,Dominio,VecesIngresoChat From equipo");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");		}

		public equipo[]  BuscarRegistros_idEquipo (int idEquipo)
		{

			DataTable tabla = this.BuscarRegistrosequipo_idEquipo (idEquipo);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil ((int)dr.ItemArray[1])[0];
				sala unsala = basesala.BuscarRegistros_idSala ((int)dr.ItemArray[2])[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}

		public equipo[]  BuscarRegistros_idPerfil (int idPerfil)
		{

			DataTable tabla = this.BuscarRegistrosequipo_idPerfil (idPerfil);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil ((int)dr.ItemArray[1])[0];
				sala unsala = basesala.BuscarRegistros_idSala ((int)dr.ItemArray[2])[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}

		public equipo[]  BuscarRegistros_idSala (int idSala)
		{

			DataTable tabla = this.BuscarRegistrosequipo_idSala (idSala);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil ((int)dr.ItemArray[1])[0];
				sala unsala = basesala.BuscarRegistros_idSala ((int)dr.ItemArray[2])[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}

		public equipo[]  BuscarRegistros_Mac (String Mac)
		{

			DataTable tabla = this.BuscarRegistrosequipo_Mac (Mac);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil ((int)dr.ItemArray[1])[0];
				sala unsala = basesala.BuscarRegistros_idSala ((int)dr.ItemArray[2])[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}

		public equipo[]  BuscarRegistros_NombreNick (String NombreNick)
		{

			DataTable tabla = this.BuscarRegistrosequipo_NombreNick (NombreNick);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;
                perfil unperfil = baseperfil.BuscarRegistros_idPerfil (int.Parse(dr.ItemArray[1].ToString()))[0];
                sala unsala = basesala.BuscarRegistros_idSala (int.Parse(dr.ItemArray[2].ToString()))[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}

		public equipo[]  BuscarRegistros_Contraseña (String Contraseña)
		{

			DataTable tabla = this.BuscarRegistrosequipo_Contraseña (Contraseña);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil ((int)dr.ItemArray[1])[0];
				sala unsala = basesala.BuscarRegistros_idSala ((int)dr.ItemArray[2])[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}

		public equipo[]  BuscarRegistros_LLaveNick (String LLaveNick)
		{

			DataTable tabla = this.BuscarRegistrosequipo_LLaveNick (LLaveNick);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil ((int)dr.ItemArray[1])[0];
				sala unsala = basesala.BuscarRegistros_idSala ((int)dr.ItemArray[2])[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}

		public equipo[]  BuscarRegistros_LlaveContraseña (String LlaveContraseña)
		{

			DataTable tabla = this.BuscarRegistrosequipo_LlaveContraseña (LlaveContraseña);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil ((int)dr.ItemArray[1])[0];
				sala unsala = basesala.BuscarRegistros_idSala ((int)dr.ItemArray[2])[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}

		public equipo[]  BuscarRegistros_LLavePublica (int LLavePublica)
		{

			DataTable tabla = this.BuscarRegistrosequipo_LLavePublica (LLavePublica);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil ((int)dr.ItemArray[1])[0];
				sala unsala = basesala.BuscarRegistros_idSala ((int)dr.ItemArray[2])[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}

		public equipo[]  BuscarRegistros_VecesIngreso (int VecesIngreso)
		{

			DataTable tabla = this.BuscarRegistrosequipo_VecesIngreso (VecesIngreso);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil ((int)dr.ItemArray[1])[0];
				sala unsala = basesala.BuscarRegistros_idSala ((int)dr.ItemArray[2])[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}

		public equipo[]  BuscarRegistros_Activo (bool Activo)
		{

			DataTable tabla = this.BuscarRegistrosequipo_Activo (Activo);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil ((int)dr.ItemArray[1])[0];
				sala unsala = basesala.BuscarRegistros_idSala ((int)dr.ItemArray[2])[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}

		public equipo[]  BuscarRegistros_Dominio (String Dominio)
		{

			DataTable tabla = this.BuscarRegistrosequipo_Dominio (Dominio);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil ((int)dr.ItemArray[1])[0];
				sala unsala = basesala.BuscarRegistros_idSala ((int)dr.ItemArray[2])[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}

		public equipo[]  BuscarRegistros_VecesIngresoChat (int VecesIngresoChat)
		{

			DataTable tabla = this.BuscarRegistrosequipo_VecesIngresoChat (VecesIngresoChat);
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil ((int)dr.ItemArray[1])[0];
				sala unsala = basesala.BuscarRegistros_idSala ((int)dr.ItemArray[2])[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}
        public equipo[] BuscarRegistrosequipo()
		{

            DataTable tabla = this.Registrosequipo();
			equipo[] lista = new equipo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				perfil unperfil = baseperfil.BuscarRegistros_idPerfil (int.Parse(dr.ItemArray[1].ToString()))[0];
				sala unsala = basesala.BuscarRegistros_idSala (int.Parse(dr.ItemArray[2].ToString()))[0];
				 lista[k]=equipo.ParseOjeto(ItemArray,unperfil,unsala);
				k++;
			}
			return lista;
		}
        

	}
}
