using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using Proyecto.Protocolos.Chat.Entidades;

namespace Proyecto.Protocolos.Chat.AccesoDatos
{
	public class Basegrupo: BaseConector
	{

		public Basegrupo(MySqlConnection una_conexion):base(una_conexion)
		{
		}
        public Basegrupo()
            : base()
        {
        }

		public void Guardargrupo(grupo _grupo)
		{

			this.Comando ("Insert Into grupo(idGrupo,nombreGrupo,imagen,frase)values("+_grupo.idGrupo.ToString()+","+"'"+_grupo.nombreGrupo.ToString()+"'"+","+"'"+_grupo.imagen.ToString()+"'"+","+"'"+_grupo.frase.ToString()+"'"+")");
		}

		public void Modificargrupo(grupo _grupo)
		{

			this.Comando ("Update grupo Set idGrupo = "+_grupo.idGrupo.ToString()+",nombreGrupo = "+"'"+_grupo.nombreGrupo.ToString()+"'"+",imagen = "+"'"+_grupo.imagen.ToString()+"'"+",frase = "+"'"+_grupo.frase.ToString()+"'"+" where idGrupo = "+_grupo.idGrupo.ToString() );
		}

		public void Eliminargrupo( int idGrupo )
		{

			this.Comando ("Delete From grupo  where idGrupo = "+idGrupo.ToString() );
		}

		public int NumeroRegistrosgrupo ()
		{

			this.Adaptador ("Select Count(*) From grupo ");
			if (this.Tabla.Rows.Count > 0)
				return (int)this.Tabla.Rows[0].ItemArray[0];
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");		}

		public DataTable BuscarRegistrosgrupo_idGrupo (int idGrupo)
		{

			this.Adaptador ("Select idGrupo,nombreGrupo,imagen,frase From grupo  where idGrupo = "+idGrupo.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosgrupo_nombreGrupo (String nombreGrupo)
		{

			this.Adaptador ("Select idGrupo,nombreGrupo,imagen,frase From grupo  where nombreGrupo = "+"'"+nombreGrupo.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosgrupo_imagen (String imagen)
		{

			this.Adaptador ("Select idGrupo,nombreGrupo,imagen,frase From grupo  where imagen = "+"'"+imagen.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosgrupo_frase (String frase)
		{

			this.Adaptador ("Select idGrupo,nombreGrupo,imagen,frase From grupo  where frase = "+"'"+frase.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable Registrosgrupo ()
		{

			this.Adaptador ("Select idGrupo,nombreGrupo,imagen,frase From grupo");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");		}

		public grupo[]  BuscarRegistros_idGrupo (int idGrupo)
		{

			DataTable tabla = this.BuscarRegistrosgrupo_idGrupo (idGrupo);
			grupo[] lista = new grupo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=grupo.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public grupo[]  BuscarRegistros_nombreGrupo (String nombreGrupo)
		{

			DataTable tabla = this.BuscarRegistrosgrupo_nombreGrupo (nombreGrupo);
			grupo[] lista = new grupo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=grupo.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public grupo[]  BuscarRegistros_imagen (String imagen)
		{

			DataTable tabla = this.BuscarRegistrosgrupo_imagen (imagen);
			grupo[] lista = new grupo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=grupo.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public grupo[]  BuscarRegistros_frase (String frase)
		{

			DataTable tabla = this.BuscarRegistrosgrupo_frase (frase);
			grupo[] lista = new grupo[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=grupo.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

        public grupo[] BuscarRegistrosGrupo()
        {

            DataTable tabla = this.Registrosgrupo();
            grupo[] lista = new grupo[tabla.Rows.Count];

            int k = 0;
            foreach (DataRow dr in tabla.Rows)
            {
                object[] ItemArray = dr.ItemArray;

                lista[k] = grupo.ParseOjeto(ItemArray);
                k++;
            }
            return lista;
        }

	}
}
