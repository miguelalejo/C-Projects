using System;
using System.Collections.Generic;
using System.Text;
using System.Data.Odbc;
using System.Collections;
using System.Data;

namespace Camlibel.Mapping
{
    public class BaseConector
    {
        OdbcConnection conexion = new OdbcConnection();
        OdbcCommand comando = new OdbcCommand();
        OdbcDataAdapter adaptador = new OdbcDataAdapter();
        DataTable tabla = new DataTable();
        public OdbcConnection Conexion
        {
            get {
                return this.conexion;
            }
        }
        public DataTable Tabla
        {
            get 
            { 
                return this.tabla;
            }
            set 
            {
                this.tabla = value;
            }
        }
        public BaseConector(OdbcConnection una_conexion)
        {
            this.conexion = una_conexion;
        }
        public void Comando(string comando)
        {
            try
            {
                this.conexion.Open();
                this.comando = new OdbcCommand(comando, conexion);
                this.comando.CommandType = CommandType.Text;
                this.comando.ExecuteNonQuery();
                this.conexion.Close();
            }
            catch (OdbcException error)
            {
                this.conexion.Close();
                throw new Exception(error.Message);
            }
        }
        public void Adaptador(string adaptador)
        {
            try
            {
                this.tabla = new DataTable();
                this.adaptador = new OdbcDataAdapter(adaptador,conexion);
                this.adaptador.Fill(this.tabla);
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }
    }
}
