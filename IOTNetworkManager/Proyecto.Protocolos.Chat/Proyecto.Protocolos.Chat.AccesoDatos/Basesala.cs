using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using Proyecto.Protocolos.Chat.Entidades;

namespace Proyecto.Protocolos.Chat.AccesoDatos
{
	public class Basesala: BaseConector
	{
		private Basegrupo basegrupo;

		public Basegrupo Basegrupo
		{
			get {return  basegrupo;}
			set { basegrupo=value; }
		}

		public Basesala(MySqlConnection una_conexion):base(una_conexion)
		{
			this.basegrupo= new Basegrupo(una_conexion);
		}
        public Basesala()
            : base()
        {
            this.basegrupo = new Basegrupo();
        }

		public void Guardarsala(sala _sala)
		{

			this.Comando ("Insert Into sala(idSala,idGrupo,nombreSala,puerto,fechaInicio,horaInicio,horaCierre,activa,numeroequipos)values("+_sala.idSala.ToString()+","+_sala.grupo.idGrupo.ToString()+","+"'"+_sala.nombreSala.ToString()+"'"+","+_sala.puerto.ToString()+","+"'"+_sala.fechaInicio.ToString()+"'"+","+"'"+_sala.horaInicio.ToString()+"'"+","+"'"+_sala.horaCierre.ToString()+"'"+","+_sala.activa.ToString()+","+_sala.numeroequipos.ToString()+")");
		}

        public void Modificarsala_Activo(int unidsala, bool activo)
		{
            int val = 0;
            if (activo)
                val = 1;
			this.Comando ("Update sala Set activa="+ val.ToString()+" where idSala = "+unidsala.ToString() );
		}

        public void Modificarsala(sala _sala)
		{

			this.Comando ("Update sala Set idSala = "+_sala.idSala.ToString()+",idGrupo = "+_sala.grupo.idGrupo.ToString()+",nombreSala = "+"'"+_sala.nombreSala.ToString()+"'"+",puerto = "+_sala.puerto.ToString()+",fechaInicio = "+"'"+_sala.fechaInicio.ToString()+"'"+",horaInicio = "+"'"+_sala.horaInicio.ToString()+"'"+",horaCierre = "+"'"+_sala.horaCierre.ToString()+"'"+",activa = "+_sala.activa.ToString()+",numeroequipos = "+_sala.numeroequipos.ToString()+" where idSala = "+_sala.idSala.ToString() );
		}
        public  void Modificarsala_Nroequipos(int nroequipos, int unidsala)
        {
            this.Comando("Update sala Set numeroequipos=" + nroequipos.ToString() + " where idSala = " + unidsala.ToString());
        }
		public void Eliminarsala( int idSala )
		{

			this.Comando ("Delete From sala  where idSala = "+idSala.ToString() );
		}

		public int NumeroRegistrossala ()
		{

			this.Adaptador ("Select Count(*) From sala ");
			if (this.Tabla.Rows.Count > 0)
				return (int)this.Tabla.Rows[0].ItemArray[0];
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");		}

		public DataTable BuscarRegistrossala_idSala (int idSala)
		{

			this.Adaptador ("Select idSala,idGrupo,nombreSala,puerto,fechaInicio,horaInicio,horaCierre,activa,numeroequipos From sala  where idSala = "+idSala.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrossala_idGrupo (int idGrupo)
		{

			this.Adaptador ("Select idSala,idGrupo,nombreSala,puerto,fechaInicio,horaInicio,horaCierre,activa,numeroequipos From sala  where idGrupo = "+idGrupo.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrossala_nombreSala (String nombreSala)
		{

			this.Adaptador ("Select idSala,idGrupo,nombreSala,puerto,fechaInicio,horaInicio,horaCierre,activa,numeroequipos From sala  where nombreSala = "+"'"+nombreSala.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrossala_puerto (int puerto)
		{

			this.Adaptador ("Select idSala,idGrupo,nombreSala,puerto,fechaInicio,horaInicio,horaCierre,activa,numeroequipos From sala  where puerto = "+puerto.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrossala_fechaInicio (DateTime fechaInicio)
		{

			this.Adaptador ("Select idSala,idGrupo,nombreSala,puerto,fechaInicio,horaInicio,horaCierre,activa,numeroequipos From sala  where fechaInicio = "+"'"+fechaInicio.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrossala_horaInicio (DateTime horaInicio)
		{

			this.Adaptador ("Select idSala,idGrupo,nombreSala,puerto,fechaInicio,horaInicio,horaCierre,activa,numeroequipos From sala  where horaInicio = "+"'"+horaInicio.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrossala_horaCierre (DateTime horaCierre)
		{

			this.Adaptador ("Select idSala,idGrupo,nombreSala,puerto,fechaInicio,horaInicio,horaCierre,activa,numeroequipos From sala  where horaCierre = "+"'"+horaCierre.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrossala_activa (int activa)
		{

			this.Adaptador ("Select idSala,idGrupo,nombreSala,puerto,fechaInicio,horaInicio,horaCierre,activa,numeroequipos From sala  where activa = "+activa.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrossala_numeroequipos (int numeroequipos)
		{

			this.Adaptador ("Select idSala,idGrupo,nombreSala,puerto,fechaInicio,horaInicio,horaCierre,activa,numeroequipos From sala  where numeroequipos = "+numeroequipos.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable Registrossala ()
		{

			this.Adaptador ("Select idSala,idGrupo,nombreSala,puerto,fechaInicio,horaInicio,horaCierre,activa,numeroequipos From sala");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");		}

		public sala[]  BuscarRegistros_idSala (int idSala)
		{

			DataTable tabla = this.BuscarRegistrossala_idSala (idSala);
			sala[] lista = new sala[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				grupo ungrupo = basegrupo.BuscarRegistros_idGrupo (int.Parse(dr.ItemArray[1].ToString()))[0];
				 lista[k]=sala.ParseOjeto(ItemArray,ungrupo);
				k++;
			}
			return lista;
		}

		public sala[]  BuscarRegistros_idGrupo (int idGrupo)
		{

			DataTable tabla = this.BuscarRegistrossala_idGrupo (idGrupo);
			sala[] lista = new sala[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				grupo ungrupo = basegrupo.BuscarRegistros_idGrupo (int.Parse(dr.ItemArray[1].ToString()))[0];
				 lista[k]=sala.ParseOjeto(ItemArray,ungrupo);
				k++;
			}
			return lista;
		}

		public sala[]  BuscarRegistros_nombreSala (String nombreSala)
		{

			DataTable tabla = this.BuscarRegistrossala_nombreSala (nombreSala);
			sala[] lista = new sala[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				grupo ungrupo = basegrupo.BuscarRegistros_idGrupo ((int)dr.ItemArray[1])[0];
				 lista[k]=sala.ParseOjeto(ItemArray,ungrupo);
				k++;
			}
			return lista;
		}

		public sala[]  BuscarRegistros_puerto (int puerto)
		{

			DataTable tabla = this.BuscarRegistrossala_puerto (puerto);
			sala[] lista = new sala[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				grupo ungrupo = basegrupo.BuscarRegistros_idGrupo ((int)dr.ItemArray[1])[0];
				 lista[k]=sala.ParseOjeto(ItemArray,ungrupo);
				k++;
			}
			return lista;
		}

		public sala[]  BuscarRegistros_fechaInicio (DateTime fechaInicio)
		{

			DataTable tabla = this.BuscarRegistrossala_fechaInicio (fechaInicio);
			sala[] lista = new sala[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				grupo ungrupo = basegrupo.BuscarRegistros_idGrupo ((int)dr.ItemArray[1])[0];
				 lista[k]=sala.ParseOjeto(ItemArray,ungrupo);
				k++;
			}
			return lista;
		}

		public sala[]  BuscarRegistros_horaInicio (DateTime horaInicio)
		{

			DataTable tabla = this.BuscarRegistrossala_horaInicio (horaInicio);
			sala[] lista = new sala[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				grupo ungrupo = basegrupo.BuscarRegistros_idGrupo ((int)dr.ItemArray[1])[0];
				 lista[k]=sala.ParseOjeto(ItemArray,ungrupo);
				k++;
			}
			return lista;
		}

		public sala[]  BuscarRegistros_horaCierre (DateTime horaCierre)
		{

			DataTable tabla = this.BuscarRegistrossala_horaCierre (horaCierre);
			sala[] lista = new sala[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				grupo ungrupo = basegrupo.BuscarRegistros_idGrupo ((int)dr.ItemArray[1])[0];
				 lista[k]=sala.ParseOjeto(ItemArray,ungrupo);
				k++;
			}
			return lista;
		}

		public sala[]  BuscarRegistros_activa (int activa)
		{

			DataTable tabla = this.BuscarRegistrossala_activa (activa);
			sala[] lista = new sala[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				grupo ungrupo = basegrupo.BuscarRegistros_idGrupo ((int)dr.ItemArray[1])[0];
				 lista[k]=sala.ParseOjeto(ItemArray,ungrupo);
				k++;
			}
			return lista;
		}

		public sala[]  BuscarRegistros_numeroequipos (int numeroequipos)
		{

			DataTable tabla = this.BuscarRegistrossala_numeroequipos (numeroequipos);
			sala[] lista = new sala[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				grupo ungrupo = basegrupo.BuscarRegistros_idGrupo ((int)dr.ItemArray[1])[0];
				 lista[k]=sala.ParseOjeto(ItemArray,ungrupo);
				k++;
			}
			return lista;
		}
        public sala[] BuscarRegistrossala()
		{

            DataTable tabla = this.Registrossala();
			sala[] lista = new sala[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				grupo ungrupo = basegrupo.BuscarRegistros_idGrupo (int.Parse(dr.ItemArray[1].ToString()))[0];
				 lista[k]=sala.ParseOjeto(ItemArray,ungrupo);
				k++;
			}
			return lista;
		}

	}
}
