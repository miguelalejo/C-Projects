using System;
using System.Collections.Generic;
using System.Text;
using MySql.Data.MySqlClient;
using System.Collections;
using System.Data;
namespace Proyecto.Protocolos.Chat.AccesoDatos
{
	 public class BaseConector
	 {
         MySqlConnection conexion = new MySqlConnection(Properties.Settings.Default.CadenaConexion);
         MySqlCommand comando = new MySqlCommand();
         MySqlDataAdapter adaptador = new MySqlDataAdapter();
         DataTable tabla = new DataTable();
         public  MySqlConnection Conexion
		 {
			 get {
			 return conexion;
			 }
		 }
         public  DataTable Tabla
		 {
			 get 
			{
				 return tabla;
			 }
			 set
			 {
				 tabla = value;
			 }
		 }
		 public BaseConector(MySqlConnection una_conexion)
		 {
             conexion = new MySqlConnection(Properties.Settings.Default.CadenaConexion);
		 }
         public BaseConector()
         {
             conexion = new MySqlConnection(Properties.Settings.Default.CadenaConexion);
         }
		 public void Comando(string un_comando)
		 {
			 try
			 {
				 conexion.Open();
				 comando = new MySqlCommand(un_comando, conexion);
				comando.CommandType = CommandType.Text;
				  comando.ExecuteNonQuery();
				 conexion.Close();
			 }
			 catch (MySqlException error)
			 {
				conexion.Close();
				 throw new Exception(error.Message);
			 }
		 }
         public void Adaptador(string un_adaptador)
		 {
			try
			 {
				 tabla = new DataTable();
				adaptador = new MySqlDataAdapter(un_adaptador,conexion);
				adaptador.Fill(tabla);
			 }
			 catch (Exception error)
			 {
				 throw new Exception(error.Message);
			 }
		 }
	}
}
