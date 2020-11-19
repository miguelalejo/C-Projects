using System;
using System.IO;
using System.Data;
using System.Data.Odbc;

namespace Camlibel.Mapping
{
    /// <summary>
    /// Summary description for Mapping.
    /// </summary>
    public class Mapping
    {
        StreamWriter w;
        FileStream fs;
        public DataTable data = new DataTable();
        String dsnName;
        public Mapping(String DSNName)
        {
            //
            // TODO: Add constructor logic here
            //
            dsnName = DSNName;

        }
        public OdbcDataReader GetDataBases()
        {
            OdbcConnection conn = new OdbcConnection("DSN=" + this.dsnName);
            conn.Open();

            OdbcCommand comm = new OdbcCommand("SHOW Databases", conn);

            OdbcDataReader reader = comm.ExecuteReader(CommandBehavior.CloseConnection);
            return reader;
        }
        public OdbcDataReader GetTables()
        {
            OdbcConnection conn = new OdbcConnection("DSN=" + this.dsnName);
            conn.Open();
            OdbcCommand comm = new OdbcCommand("SHOW Tables", conn);
            OdbcDataReader reader = comm.ExecuteReader(CommandBehavior.CloseConnection);
            return reader;
        }
        public OdbcDataReader GetFields(string TableName)
        {
            OdbcConnection conn = new OdbcConnection("DSN=" + this.dsnName);
            conn.Open();

            OdbcCommand comm = new OdbcCommand("SHOW FIELDS FROM " + TableName, conn);

            OdbcDataReader reader = comm.ExecuteReader(CommandBehavior.CloseConnection);

            return reader;
        }
        public void CreateCs(String FileLocation, OdbcDataReader TableFieldReader, String Namespace, String ClassName)
        {
            fs = new FileStream(FileLocation + ClassName + ".cs", FileMode.Create, FileAccess.Write);
            // Create a Char writer.
            w = new StreamWriter(fs);
            // Set the file pointer to the end.
            //w.BaseStream.Seek(0, SeekOrigin.End);   


            GenerateDataTable(TableFieldReader);

            w.WriteLine("using System;");
            w.WriteLine("using System.Data;");
            w.WriteLine("using System.Data.Odbc;");
            w.WriteLine();

            w.WriteLine("namespace " + Namespace);
            w.WriteLine("{");
            w.WriteLine("\tpublic class " + ClassName);
            w.WriteLine("\t{");
            CreateInstanceVariables();
            w.WriteLine("\t\tpublic " + ClassName + "()");
            w.WriteLine("\t\t{");
            w.WriteLine("\r\n");
            w.WriteLine("\t\t}");
            w.WriteLine("");

            foreach (DataRow dr in data.Rows)
            {
                string st = FindDataType(dr["Type"].ToString());
                if (st.Trim().Length > 0)
                {
                    w.Write("\t\tpublic ");
                    w.Write(st);
                    w.WriteLine(" " + dr["Field"].ToString());
                    w.WriteLine("\t\t{");
                    w.WriteLine("\t\t\tget {return  _" + dr["Field"].ToString() + ";}");
                    w.WriteLine("\t\t\tset { _" + dr["Field"].ToString() + "=value; }");
                    w.WriteLine("\t\t}");
                }

            }

            w.WriteLine("\t}");
            w.WriteLine("}");

            // Close the writer and underlying file.     
            w.Close();

        }
        public void CreateCsNueva(String FileLocation, DataTable tabla, String Namespace, String ClassName)
        {
            fs = new FileStream(FileLocation + ClassName + ".cs", FileMode.Create, FileAccess.Write);
            // Create a Char writer.
            w = new StreamWriter(fs);
            // Set the file pointer to the end.
            //w.BaseStream.Seek(0, SeekOrigin.End);   

            w.WriteLine("using System;");
            w.WriteLine("using System.Data;");
            w.WriteLine("using System.Data.Odbc;");
            w.WriteLine();

            w.WriteLine("namespace " + Namespace);
            w.WriteLine("{");
            w.WriteLine("\tpublic class " + ClassName);
            w.WriteLine("\t{");
            CrearVariablesInstancia(tabla);
            w.WriteLine("\t\tpublic " + ClassName + "()");
            w.WriteLine("\t\t{");
            w.WriteLine("\r\n");
            w.WriteLine("\t\t}");
            w.WriteLine("");

            CrearPropiedadesInstancia(tabla);
            this.CrearConstructorCompletoInstancia(tabla);
            this.CrearParseObjetoTabla(tabla);
            w.WriteLine("\t}");
            w.WriteLine("}");

            // Close the writer and underlying file.     
            w.Close();

        }
        private void GenerateDataTable(OdbcDataReader reader)
        {
            DataRow myDataRow;
            data.Columns.Clear();
            data.Columns.Add("Field", typeof(String));
            data.Columns.Add("Type", typeof(String));

            while (reader.Read())
            {
                myDataRow = data.NewRow();
                myDataRow["Field"] = reader["Field"].ToString();
                myDataRow["Type"] = reader["Type"].ToString();
                data.Rows.Add(myDataRow);

            }
            reader.Close();
        }
        private void CrearVariablesInstancia(DataTable tabla)
        {

            foreach (DataRow dr in tabla.Rows)
            {
                string st = FindDataType(dr["Type"].ToString());
                if (st.Trim().Length > 0)
                {
                    w.Write("\t\tprivate ");
                    if (dr.ItemArray[3].ToString() == "this")
                    {
                        w.Write(st);
                        w.WriteLine(" _" + dr["Field"].ToString() + ";");

                    }
                    else
                    {
                        w.Write(dr["Class"].ToString());
                        w.WriteLine(" _" + dr["Class"].ToString() + ";");
                    }

                }

            }
            w.WriteLine();
        }
        private void CrearPropiedadesInstancia(DataTable tabla)
        {
            foreach (DataRow dr in tabla.Rows)
            {
                string st = FindDataType(dr["Type"].ToString());
                if (st.Trim().Length > 0)
                {
                    w.Write("\t\tpublic ");

                    if (dr.ItemArray[3].ToString() == "this")
                    {
                        w.Write(st);

                    }
                    else
                    {
                        w.Write(dr["Class"].ToString());
                    }
                    if (dr.ItemArray[3].ToString() == "this")
                    {
                        w.WriteLine(" " + dr["Field"].ToString());
                        w.WriteLine("\t\t{");
                        w.WriteLine("\t\t\tget {return  _" + dr["Field"].ToString() + ";}");
                        w.WriteLine("\t\t\tset { _" + dr["Field"].ToString() + "=value; }");
                        w.WriteLine("\t\t}");
                    }
                    else
                    {
                        w.WriteLine(" " + dr["Class"].ToString());
                        w.WriteLine("\t\t{");
                        w.WriteLine("\t\t\tget {return  _" + dr["Class"].ToString() + ";}");
                        w.WriteLine("\t\t\tset { _" + dr["Class"].ToString() + "=value; }");
                        w.WriteLine("\t\t}");
                    }
                }

            }
        }
        private void CrearConstructorCompletoInstancia(DataTable tabla)
        {
            w.Write("\t\tpublic ");
            w.Write(tabla.TableName);
            w.Write("(");
            this.ParametrosConstructor(tabla);
            w.Write(")");
            w.WriteLine();
            w.WriteLine("\t\t{");            
            this.IniciarInstanicaParametrosConstructor(tabla);
            w.WriteLine("\t\t}");
            w.WriteLine();
            


        }
        private void CrearParseObjetoTabla(DataTable tabla)
        {
            w.Write("\t\tpublic static ");
            w.Write(tabla.TableName+" ParseOjeto");
            w.Write("(");
            this.ParametrosParseObjeto(tabla);
            w.Write(")");
            w.WriteLine();
            w.WriteLine("\t\t{");

            w.Write("\t\t\t return new " + tabla.TableName + "(");
            this.ParametrosReturnParseObjeto(tabla);
            w.Write(");");
            w.WriteLine();
            w.WriteLine("\t\t}");
            w.WriteLine();



        }
        public void ParametrosConstructor(DataTable tabla)
        {
            int k=0;
            foreach (DataRow dr in tabla.Rows)
            {
                if (k == tabla.Rows.Count - 1)
                {
                    if (dr.ItemArray[3].ToString() == "this")
                    {
                        w.Write(dr.ItemArray[4].ToString() + " un" + dr.ItemArray[0].ToString());
                    }
                    else
                    {
                        w.Write(dr.ItemArray[3].ToString() + " un" + dr.ItemArray[3].ToString());

                    }
                }
                else
                {
                    if (dr.ItemArray[3].ToString() == "this")
                    {
                        w.Write(dr.ItemArray[4].ToString() + " un" + dr.ItemArray[0].ToString() + ",");
                    }
                    else
                    {
                        w.Write(dr.ItemArray[3].ToString() + " un" + dr.ItemArray[3].ToString() + ",");

                    }

                } k++;
            }
        }
        public void IniciarInstanicaParametrosConstructor(DataTable tabla)
        {

            foreach (DataRow dr in tabla.Rows)
            {

                if (dr.ItemArray[3].ToString() == "this")
                {
                    w.WriteLine("\t\t\t this._"+dr.ItemArray[0].ToString()+" = un" + dr.ItemArray[0].ToString()+";");
                }
                else
                {
                    w.WriteLine("\t\t\t this._" + dr.ItemArray[3].ToString() + " = un" + dr.ItemArray[3].ToString() + ";");

                }


            }
        }
        public void ParametrosParseObjeto(DataTable tabla)
        {
            int k = 0;
            string caddato="";
            bool existe=false;
            string cad="";
            k=0;
            foreach (DataRow dr in tabla.Rows)
            {
                
                    if (dr.ItemArray[3].ToString() == "this")
                    {
                        caddato="object[]ItemArray ";
                       
                    }
                    else
                    {
                        existe = true;
                        if (k == 0)
                        {
                            cad +=  dr.ItemArray[3].ToString() + " un" + dr.ItemArray[3].ToString();
                            k++;
                        }
                        else
                        {
                            cad += "," + dr.ItemArray[3].ToString() + " un" + dr.ItemArray[3].ToString();
                        }                           
                        
                    }               
            }
            if (existe)
                w.Write(caddato + "," + cad);
            else
            {
                w.Write(caddato);
            }
            
        }
        public void ParametrosReturnParseObjeto(DataTable tabla)
        {
            int k = 0;
                      
            string cadreturn = "";
            string cad = "";
            k = 0;
            foreach (DataRow dr in tabla.Rows)
            {

                if (dr.ItemArray[3].ToString()=="this")
                {
                    if (dr.ItemArray[4].ToString() != "String" && dr.ItemArray[4].ToString() != "string")
                    {
                        cad="(" + dr.ItemArray[4] + ")ItemArray[" + k.ToString() + "]";
                    }
                    else
                    {
                        cad = ("ItemArray[" + k.ToString() + "].ToString()");
                    }
                    
                }
                else
                {
                    cad = "un" + dr.ItemArray[3].ToString();

                }
                if (k == 0)
                {
                    cadreturn += cad;
                   
                }
                else
                {
                    cadreturn +=","+cad;
                }
                k++;
            }
            w.Write(cadreturn);

        }
        public void CrearClaseReferenciaBase(String FileLocation,string espaciondenombres,string tipoconexion)
        {

            fs = new FileStream(FileLocation + "BaseConector" + ".cs", FileMode.Create, FileAccess.Write);
            // Create a Char writer.
            w = new StreamWriter(fs);
            // Set the file pointer to the end.
            w.WriteLine("using System;");
            w.WriteLine("using System.Collections.Generic;");
            w.WriteLine("using System.Text;");
            if (tipoconexion == "Sql" | tipoconexion == "Oracle")
            {
                w.WriteLine("using System.Data." + tipoconexion + "Client;");
            }
            else
            {
                w.WriteLine("using System.Data." + tipoconexion + ";");
            }
            w.WriteLine("using System.Collections;");
            w.WriteLine("using System.Data;");
            w.WriteLine("namespace " + espaciondenombres);
            w.WriteLine("{");
            w.WriteLine("\t public class BaseConector");
            w.WriteLine("\t {");
            w.WriteLine("\t\t " + tipoconexion + "Connection conexion = new " + tipoconexion + "Connection();");
            w.WriteLine("\t\t " + tipoconexion + "Command comando = new " + tipoconexion + "Command();");
            w.WriteLine("\t\t " + tipoconexion + "DataAdapter adaptador = new " + tipoconexion + "DataAdapter();");
            w.WriteLine("\t\t DataTable tabla = new DataTable();");
            w.WriteLine("\t\t public " + tipoconexion + "Connection Conexion");
            w.WriteLine("\t\t {");
            w.WriteLine("\t\t\t get {");
            w.WriteLine("\t\t\t return this.conexion;");
            w.WriteLine("\t\t\t }");
            w.WriteLine("\t\t }");
            w.WriteLine("\t\t public DataTable Tabla");
            w.WriteLine("\t\t {");
            w.WriteLine("\t\t\t get ");
            w.WriteLine("\t\t\t{");
            w.WriteLine("\t\t\t\t return this.tabla;");
            w.WriteLine("\t\t\t }");
            w.WriteLine("\t\t\t set");
            w.WriteLine("\t\t\t {");
            w.WriteLine("\t\t\t\t this.tabla = value;");
            w.WriteLine("\t\t\t }");
            w.WriteLine("\t\t }");
            w.WriteLine("\t\t public BaseConector(" + tipoconexion + "Connection una_conexion)");
            w.WriteLine("\t\t {");
            w.WriteLine("\t\t\t this.conexion = una_conexion;");
            w.WriteLine("\t\t }");
            w.WriteLine("\t\t public void Comando(string comando)");
            w.WriteLine("\t\t {");
            w.WriteLine("\t\t\t try");
            w.WriteLine("\t\t\t {");
            w.WriteLine("\t\t\t\t this.conexion.Open();");
            w.WriteLine("\t\t\t\t this.comando = new " + tipoconexion + "Command(comando, conexion);");
            w.WriteLine("\t\t\t\t this.comando.CommandType = CommandType.Text;");
            w.WriteLine("\t\t\t\t this.comando.ExecuteNonQuery();");
            w.WriteLine("\t\t\t\t this.conexion.Close();");
            w.WriteLine("\t\t\t }");
            w.WriteLine("\t\t\t catch (" + tipoconexion + "Exception error)");
            w.WriteLine("\t\t\t {");
            w.WriteLine("\t\t\t\t this.conexion.Close();");
            w.WriteLine("\t\t\t\t throw new Exception(error.Message);");
            w.WriteLine("\t\t\t }");
            w.WriteLine("\t\t }");
            w.WriteLine("\t\t public void Adaptador(string adaptador)");
            w.WriteLine("\t\t {");
            w.WriteLine("\t\t\t try");
            w.WriteLine("\t\t\t {");
            w.WriteLine("\t\t\t\t this.tabla = new DataTable();");
            w.WriteLine("\t\t\t\t this.adaptador = new " + tipoconexion + "DataAdapter(adaptador,conexion);");
            w.WriteLine("\t\t\t\t this.adaptador.Fill(this.tabla);");
            w.WriteLine("\t\t\t }");
            w.WriteLine("\t\t\t catch (Exception error)");
            w.WriteLine("\t\t\t {");
            w.WriteLine("\t\t\t\t throw new Exception(error.Message);");
            w.WriteLine("\t\t\t }");
            w.WriteLine("\t\t }");
            w.WriteLine("\t}");
            w.WriteLine("}");
            w.Close();
        }
        public void CreateProcedimientosBase(String FileLocation, DataTable tabla, String Namespace, String ClassName, string tipoconexion)
        {
          //  string ruta=FileLocation + Namespace+"ProcedimientosAlmacenados.sql";
           // if(!File.Exists(ruta))
           // {
            fs = new FileStream(FileLocation + Namespace+"ProcedimientosAlmacenados.sql", FileMode.Append, FileAccess.Write);
           // }
            // Create a Char writer.
            w = new StreamWriter(fs);
            ProcedALmacenadoGuardar(tabla);
            ProcedALmacenadoModificar(tabla);
            ProcedALmacenadoEliminar(tabla);
            w.WriteLine("\n");
            w.Close();

        }
        private void CrearBaseInstancia(DataTable tabla)
        {

            foreach (DataRow dr in tabla.Rows)
            {

                if (dr.ItemArray[3].ToString() != "this")
                {
                    w.Write("\t\tprivate ");
                    w.Write("Base" + dr.ItemArray[3].ToString());
                    w.WriteLine(" base" + dr.ItemArray[3].ToString() + ";");
                }


            }

        }
        private void CrearPropiedadesBaseInstancia(DataTable tabla)
        {
            foreach (DataRow dr in tabla.Rows)
            {



                if (dr.ItemArray[3].ToString() != "this")
                {
                    w.Write("\t\tpublic ");
                    w.Write("Base" + dr.ItemArray[3].ToString());
                    w.WriteLine(" " + "Base" + dr.ItemArray[3].ToString());
                    w.WriteLine("\t\t{");
                    w.WriteLine("\t\t\tget {return  base" + dr.ItemArray[3].ToString() + ";}");
                    w.WriteLine("\t\t\tset { base" + dr.ItemArray[3].ToString() + "=value; }");
                    w.WriteLine("\t\t}");
                    w.WriteLine();
                }

            }

        }
        
        private void CreateInstanceVariables()
        {
            foreach (DataRow dr in data.Rows)
            {
                string st = FindDataType(dr["Type"].ToString());
                if (st.Trim().Length > 0)
                {
                    w.Write("\t\tprivate ");
                    w.Write(st);
                    w.WriteLine(" _" + dr["Field"].ToString() + ";");
                }
            }
            w.WriteLine();
        }
        private void CrearConstructorBase(DataTable tabla, string tipoconexion)
        {
            w.Write("\t\tpublic ");
            w.Write("Base" + tabla.TableName);
            w.WriteLine("(" + tipoconexion + "Connection una_conexion):base(una_conexion)");
            w.WriteLine("\t\t{");
            foreach (DataRow dr in tabla.Rows)
            {
                if (dr.ItemArray[3].ToString() != "this")
                {
                    w.Write("\t\t\t");
                    w.Write("this.base" + dr.ItemArray[3].ToString());
                    w.WriteLine("= new Base" + dr.ItemArray[3].ToString() + "(una_conexion);");
                }
            }
            w.WriteLine("\t\t}");
            w.WriteLine();

        }
        private void CrearMetodoGuradar(DataTable tabla)
        {
            w.Write("\t\tpublic void Guardar" + tabla.TableName);
            w.WriteLine("(" + tabla.TableName + " _" + tabla.TableName + ")");
            w.WriteLine("\t\t{");
            w.WriteLine();
            w.Write("\t\t\t");
            w.Write("this.Comando (\"Insert Into " + tabla.TableName + "(");
            LineaCamposAlmacena(tabla);
            w.Write(")values(\"+");
            LineaCamposObjetoAlmacena(tabla,"_"+tabla.TableName);
            w.WriteLine("+\")\");");
            w.WriteLine("\t\t}");
            w.WriteLine();
        }
        private void ProcedALmacenadoGuardar(DataTable tabla)
        {
            w.WriteLine("DELIMITER $$");
            w.WriteLine("DROP PROCEDURE IF EXISTS Guardar"+tabla.TableName+"$$");
            w.Write("\nCREATE DEFINER=`root`@`localhost` PROCEDURE Guardar" + tabla.TableName);
            w.Write("( ");
            LineaCamposAlmacenaProduceIN(tabla);
            w.Write(" )");
            w.WriteLine("\n\tBEGIN");
            w.Write("\n\t\tInsert Into " + tabla.TableName + "(");
            LineaCamposAlmacena(tabla);
            w.Write(")values( ");
            LineaCamposAlmacenaProduce(tabla);
            w.WriteLine(" );");
            w.WriteLine("\tEND $$");
            w.Write("DELIMITER ;");
            w.WriteLine();
        }
        private void ProcedALmacenadoModificar(DataTable tabla)
        {
            w.WriteLine("DELIMITER $$");
            w.WriteLine("DROP PROCEDURE IF EXISTS Modificar" + tabla.TableName + "$$");
            w.Write("\nCREATE DEFINER=`root`@`localhost` PROCEDURE Modificar" + tabla.TableName);
            w.Write("( ");
            LineaCamposAlmacenaProduceIN(tabla);
            w.Write(" )");
            w.WriteLine("\n\tBEGIN");
            w.Write("\n\t\tUpdate " + tabla.TableName + " Set ");
            this.LineaCamposProcedureModifica(tabla);
            w.WriteLine("\n\t\t where " + this.LlavePrimaria(tabla)["Field"] + " = _" + this.LlavePrimaria(tabla)["Field"] + " ;");
            w.WriteLine("\tEND $$");
            w.Write("DELIMITER ;");
            w.WriteLine();

   
        }
        private void ProcedALmacenadoEliminar(DataTable tabla)
        {
            w.WriteLine("DELIMITER $$");
            w.WriteLine("DROP PROCEDURE IF EXISTS Eliminar" + tabla.TableName + "$$");
            w.Write("\nCREATE DEFINER=`root`@`localhost` PROCEDURE Eliminar" + tabla.TableName);
            w.Write("( in _"+ this.LlavePrimaria(tabla)["Field"] +" "+ this.LlavePrimaria(tabla)["Type"]+" )");
            w.WriteLine();
            w.WriteLine("\tBEGIN");
            w.Write("\n\t\tDelete From " + tabla.TableName);
            w.Write(" where " + this.LlavePrimaria(tabla)["Field"] + " = _" + this.LlavePrimaria(tabla)["Field"] + ";");
            w.WriteLine();
            w.WriteLine("\tEND $$");
            w.WriteLine("DELIMITER ;");
            w.WriteLine();
        }
        private void CrearMetodoModificar(DataTable tabla)
        {
            w.Write("\t\tpublic void Modificar" + tabla.TableName);
            w.WriteLine("(" + tabla.TableName + " _" + tabla.TableName + ")");
            w.WriteLine("\t\t{");
            w.WriteLine();
            w.Write("\t\t\t");
            w.Write("this.Comando (\"Update "+tabla.TableName+" Set ");
            LineaCamposObjetoModifica(tabla, "_" + tabla.TableName);
            w.WriteLine("+\"where " + this.LlavePrimaria(tabla)["Field"] + " = \"+" + this.ObjetoLlavePrimaria(tabla, "_" + tabla.TableName) + ".ToString() );");
            w.WriteLine("\t\t}");
            w.WriteLine();
        }
        private void CrearMetodoEliminar(DataTable tabla)
        {
            w.Write("\t\tpublic void Eliminar" + tabla.TableName);
            w.WriteLine("( "+this.LlavePrimaria(tabla)["DataType"]+" " + this.LlavePrimaria(tabla)["Field"] + " )");
            w.WriteLine("\t\t{");
            w.WriteLine();
            w.Write("\t\t\t");
            w.Write("this.Comando (\"Delete From " + tabla.TableName + " ");
            w.WriteLine(" where " + this.LlavePrimaria(tabla)["Field"] + " = \"+" + this.LlavePrimaria(tabla)["Field"] + ".ToString() );");
            w.WriteLine("\t\t}");
            w.WriteLine();
        }
        private void CrearMetodoNumeroRegistros(DataTable tabla)
        {
            w.WriteLine("\t\tpublic int NumeroRegistros" + tabla.TableName + " ()");
            w.WriteLine("\t\t{");
            w.WriteLine();
            w.Write("\t\t\t");
            w.WriteLine("this.Adaptador (\"Select Count(*) From " + tabla.TableName + " \");");
            w.Write("\t\t\t");
            w.WriteLine("if (this.Tabla.Rows.Count > 0)");
            w.Write("\t\t\t\t");
            w.WriteLine("return (int)this.Tabla.Rows[0].ItemArray[0];");
            w.Write("\t\t\t");
            w.WriteLine("else");
            w.Write("\t\t\t\t");
            w.Write("throw new Exception(\"No se ha podido encontrar ningun registro asociado a la busqueda\");");
            w.WriteLine("\t\t}");
            w.WriteLine();
        }
        private void CrearMetodoBurcarRegistros(DataTable tabla, DataRow fila)
        {
            w.WriteLine("\t\tpublic DataTable BuscarRegistros" + tabla.TableName+"_"+fila.ItemArray[0].ToString() + " ("+fila.ItemArray[4].ToString()+" " +fila.ItemArray[0].ToString()+")");
            w.WriteLine("\t\t{");
            w.WriteLine();
            w.Write("\t\t\t");
            w.Write("this.Adaptador (\"Select ");
            LineaCamposAlmacena(tabla);
             w.Write(" From " + tabla.TableName + " ");
            w.WriteLine(" where " + fila.ItemArray[0].ToString() + " = \"+"  +this.TextoCampo(fila,fila.ItemArray[0].ToString()+".ToString() ")+");");
            w.Write("\t\t\t");
            w.WriteLine("if (this.Tabla.Rows.Count > 0)");
            w.Write("\t\t\t\t");
            w.WriteLine("return this.Tabla;");
            w.Write("\t\t\t");
            w.WriteLine("else");
            w.Write("\t\t\t\t");
            w.WriteLine("throw new Exception(\"No se ha podido encontrar ningun registro asociado a la busqueda\");");
            w.WriteLine("\t\t}");
            w.WriteLine();
        }
        private void CrearMetodoBuscarRegistrosPorCampo(DataTable tabla)
        {
            foreach (DataRow dr in tabla.Rows)
            {
                this.CrearMetodoBurcarRegistros(tabla,dr);
            }
         
        }
        private void CrearTodosRegistrosTabla(DataTable tabla)
        {
            w.WriteLine("\t\tpublic DataTable Registros" + tabla.TableName + " ()");
            w.WriteLine("\t\t{");
            w.WriteLine();
            w.Write("\t\t\t");
            w.Write("this.Adaptador (\"Select ");
            LineaCamposAlmacena(tabla);
            w.Write(" From " + tabla.TableName + "\");");
            w.WriteLine();
            w.Write("\t\t\t");
            w.WriteLine("if (this.Tabla.Rows.Count > 0)");
            w.Write("\t\t\t\t");
            w.WriteLine("return this.Tabla;");
            w.Write("\t\t\t");
            w.WriteLine("else");
            w.Write("\t\t\t\t");
            w.Write("throw new Exception(\"No se ha podido encontrar ningun registro asociado a la busqueda\");");
            w.WriteLine("\t\t}");
            w.WriteLine();
        }

        private void LineaCamposAlmacena(DataTable tabla)
        {
            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                DataRow dr = tabla.Rows[i];
                if (i == tabla.Rows.Count - 1)
                {
                    string st = dr.ItemArray[0].ToString();
                    w.Write(st);
                }
                else
                {
                    string st = dr.ItemArray[0].ToString();
                    w.Write(st + ",");
                }
            }
        }
        private void LineaCamposAlmacenaProduceIN(DataTable tabla)
        {
            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                DataRow dr = tabla.Rows[i];
                if (i == tabla.Rows.Count - 1)
                {
                    string st = "in _"+dr.ItemArray[0].ToString()+" "+dr.ItemArray[1].ToString();
                    w.Write(st);
                }
                else
                {
                    string st = "in _"+dr.ItemArray[0].ToString()+" "+dr.ItemArray[1].ToString();
                    w.Write(st + ",");
                }
            }
        }
        private void LineaCamposAlmacenaProduce(DataTable tabla)
        {
            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                DataRow dr = tabla.Rows[i];
                if (i == tabla.Rows.Count - 1)
                {
                    string st = "_" + dr.ItemArray[0].ToString();
                    w.Write(st);
                }
                else
                {
                    string st = "_" + dr.ItemArray[0].ToString();
                    w.Write(st + ",");
                }
            }
        }
        private void LineaCamposObjetoAlmacena(DataTable tabla, string objeto)
        {
            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                DataRow dr = tabla.Rows[i];
                if (i == tabla.Rows.Count - 1)
                {
                    if (dr.ItemArray[3].ToString() == "this")
                    {
                        string st = TextoCampo(dr, objeto + "." + dr.ItemArray[0].ToString() + ".ToString()");
                        w.Write(st);
                    }
                    else
                    {
                        string st = TextoCampo(dr, objeto + "." + dr.ItemArray[3].ToString() + "." + dr.ItemArray[0].ToString() + ".ToString()");
                        w.Write(st);
                    }

                }
                else
                {
                    if (dr.ItemArray[3].ToString() == "this")
                    {
                        string st = TextoCampo(dr, objeto + "." + dr.ItemArray[0].ToString() + ".ToString()");
                        w.Write(st + "+\",\"+");
                    }
                    else
                    {
                        string st = TextoCampo(dr, objeto + "." + dr.ItemArray[3].ToString() + "." + dr.ItemArray[0].ToString() + ".ToString()");
                        w.Write(st + "+\",\"+");
                    }
                }
            }
        }
        
        private void LineaCamposObjetoModifica(DataTable tabla, string objeto)
        {
            
            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                DataRow dr = tabla.Rows[i];
                if (i == tabla.Rows.Count - 1)
                {
                    if (dr.ItemArray[3].ToString() == "this")
                    {
                        string st = TextoCampo(dr, objeto + "." + dr.ItemArray[0].ToString() + ".ToString()");
                        w.Write(dr.ItemArray[0].ToString()+" = \"+"+st);
                    }
                    else
                    {
                        string st = TextoCampo(dr, objeto + "." + dr.ItemArray[3].ToString() + "." + dr.ItemArray[0].ToString() + ".ToString()");
                        w.Write(dr.ItemArray[0].ToString()+" = \"+" + st);
                    }
                }
                else
                {
                    if (dr.ItemArray[3].ToString() == "this")
                    {
                        string st = TextoCampo(dr, objeto + "." + dr.ItemArray[0].ToString() + ".ToString()");
                        w.Write(dr.ItemArray[0].ToString()+" = \"+" + st + "+\",");
                    }
                    else
                    {
                        string st = TextoCampo(dr, objeto + "." + dr.ItemArray[3].ToString() + "." + dr.ItemArray[0].ToString() + ".ToString()");
                        w.Write(dr.ItemArray[0].ToString() + " = \"+" + st + "+\",");
                    }
                }
            }
        }
        private void LineaCamposProcedureModifica(DataTable tabla)
        {

            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                DataRow dr = tabla.Rows[i];
                if (i == tabla.Rows.Count - 1)
                {
                    string st = "_" + dr.ItemArray[0].ToString();
                    w.Write(dr.ItemArray[0].ToString()+" = "+st);
                }
                else
                {
                    string st = "_" + dr.ItemArray[0].ToString();
                    w.Write(dr.ItemArray[0].ToString()+" = "+st + ",");
                }
            }
        }
        private string ObjetoLlavePrimaria(DataTable tabla,string objeto)
        {
            foreach (DataRow dr in tabla.Rows)
            {
                if (dr.ItemArray[2].ToString() == "PRI")
                {
                    return objeto + "." + dr.ItemArray[0].ToString();
                }
            }
          return "";
        }
         private DataRow LlavePrimaria(DataTable tabla)
        {
            foreach (DataRow dr in tabla.Rows)
            {
                if (dr.ItemArray[2].ToString() == "PRI")
                {
                    return dr;
                }
            }
          return null;
        }
         private void CrearMetodoBuscarRegistrosPasoObjetos(DataTable tabla)
         {
             foreach (DataRow dr in tabla.Rows)
             {
                 this.CrearMetodoBuscarRegistroPasoObjeto(tabla, dr);
             }
         }
         public void CrearMetodoBuscarRegParametrosParseObjeto(DataTable tabla)
         {
             int k = 0;
             bool existe=false;
             string caddato = "";
             string cad = "";
             k = 0;
             foreach (DataRow dr in tabla.Rows)
             {

                 if (dr.ItemArray[3].ToString() == "this")
                 {
                     caddato = "ItemArray";

                 }
                 else
                 {  existe=true;
                     if (k == 0)
                     {
                         cad += "un" + dr.ItemArray[3].ToString();
                         k++;
                     }
                     else
                     {
                         cad += ",un" + dr.ItemArray[3].ToString();
                     }

                 }
             }
             if (existe) 
                w.Write(caddato+"," + cad);
             else
                 w.Write(caddato);


         }
         private void CrearMetodoBuscarrelacionesObjeto(DataTable tabla)
         {
             w.WriteLine();
             int k=0;             
             foreach (DataRow dr in tabla.Rows)
             {
                 if (dr.ItemArray[3].ToString() != "this")
                 {
                     w.Write("\t\t\t\t"+dr.ItemArray[3].ToString() + " un" + dr.ItemArray[3].ToString() + " = ");
                     w.Write("base" + dr.ItemArray[3].ToString()+".");
                     w.Write("BuscarRegistros_" + dr.ItemArray[0].ToString() + " (");
                     if (dr.ItemArray[4].ToString() != "String" && dr.ItemArray[4].ToString() != "string")
                     {
                         w.Write( "(" + dr.ItemArray[4] + ")dr.ItemArray[" + k.ToString() + "]");
                     }
                     else
                     {
                         w.Write("ItemArray[" + k.ToString() + "].ToString()");
                     }
                     w.Write(")[0];");
                     w.WriteLine();
                     
                 }
                 
             }
         }
         private void CrearMetodoBuscarRegistroPasoObjeto(DataTable tabla, DataRow fila)
         {
             w.WriteLine("\t\tpublic " + tabla.TableName + "[]  BuscarRegistros_" + fila.ItemArray[0].ToString() + " (" + fila.ItemArray[4].ToString() + " " + fila.ItemArray[0].ToString() + ")");
             w.WriteLine("\t\t{");
             w.WriteLine();
             w.Write("\t\t\t");
             w.WriteLine("DataTable tabla = this.BuscarRegistros" + tabla.TableName + "_" + fila.ItemArray[0].ToString() + " (" + fila.ItemArray[0].ToString() + ");");
             w.WriteLine("\t\t\t"+tabla.TableName + "[] lista = new " + tabla.TableName + "[tabla.Rows.Count];");
             w.WriteLine();
             w.WriteLine("\t\t\tint k=0;");
             w.Write("\t\t\t");
             w.WriteLine("foreach (DataRow dr in tabla.Rows)");
             w.WriteLine("\t\t\t{");
             w.WriteLine("\t\t\t\t object[]ItemArray =dr.ItemArray;");
             this.CrearMetodoBuscarrelacionesObjeto(tabla);
             
             w.Write("\t\t\t\t lista[k]=" + tabla.TableName + ".ParseOjeto(");
             this.CrearMetodoBuscarRegParametrosParseObjeto(tabla);
             w.Write(");");
             w.WriteLine();
             w.WriteLine("\t\t\t\tk++;");
             w.WriteLine("\t\t\t}");
             w.WriteLine("\t\t\treturn lista;");
             w.WriteLine("\t\t}");
             w.WriteLine();
         }
        
        private string TextoCampo(DataRow fila, string texto)
        {
            if ("String" == fila.ItemArray[4].ToString())
            {
                return "\"'\"+" + texto + "+\"'\"";
            }
            else if ("DateTime" == fila.ItemArray[4].ToString())
            {
                return "\"'\"+" + texto + "+\"'\"";
            }
            else
            {
                return texto;
            }



        }

        private String FindDataType(String Type)
        {
            if (Type.IndexOf("varchar") != -1)
            {
                return "String";
            }
            else if (Type.IndexOf("datetime") != -1)
            {
                return "DateTime";
            }
            else if (Type.IndexOf("date") != -1)
            {
                return "DateTime";
            }
            else if (Type.IndexOf("decimal") != -1)
            {
                return "Decimal";
            }
            else if (Type.IndexOf("tinyint(4)") != -1)
            {
                return "boolean";
            }
            else if (Type.IndexOf("int") != -1)
            {
                return "int";
            }
            else if (Type.IndexOf("mediumint") != -1)
            {
                return "int";
            }
            else if (Type.IndexOf("timestamp") != -1)
            {
                return "DateTime";
            }
            else if (Type.IndexOf("time") != -1)
            {
                return "DateTime";
            }

            else if (Type.IndexOf("bigint") != -1)
            {
                return "Int64";
            }
            else if (Type.IndexOf("float") != -1)
            {
                return "float";
            }

            else if (Type.IndexOf("tinyblob") != -1)
            {
                return "String";
            }
            else if (Type.IndexOf("char") != -1)
            {
                return "String";
            }
            else if (Type.IndexOf("tinytext") != -1)
            {
                return "String";
            }
            else if (Type.IndexOf("text") != -1)
            {
                return "String";
            }
            else if (Type.IndexOf("mediumblob") != -1)
            {
                return "String";
            }
            else if (Type.IndexOf("mediumtext") != -1)
            {
                return "String";
            }
            else if (Type.IndexOf("longblob") != -1)
            {
                return "String";
            }
            else if (Type.IndexOf("longtext") != -1)
            {
                return "String";
            }


            return "";

        }
        public void CreateBaseCsNueva(String FileLocation, DataTable tabla, String Namespace, String ClassName,string tipoconexion)
        {
            fs = new FileStream(FileLocation + "Base" + ClassName + ".cs", FileMode.Create, FileAccess.Write);
            // Create a Char writer.
            w = new StreamWriter(fs);
            // Set the file pointer to the end.
            //w.BaseStream.Seek(0, SeekOrigin.End);   
            w.WriteLine("using System;");
            w.WriteLine("using System.Data;");
            if (tipoconexion == "Sql" | tipoconexion == "Oracle" )
            {
                w.WriteLine("using System.Data." + tipoconexion + "Client;");
            }
            if (tipoconexion == "MySql")
            {
                w.WriteLine("using "+tipoconexion+".Data.MySqlClient;");
            }
            else
            {
                w.WriteLine("using System.Data." + tipoconexion + ";");
            }
            w.WriteLine("using System.Collections.Generic;");
            w.WriteLine("using System.Text;");
            w.WriteLine("using System.Collections;");
            w.WriteLine();
            w.WriteLine("namespace " + Namespace);
            w.WriteLine("{");
            w.WriteLine("\tpublic class Base" + ClassName + ": BaseConector");
            w.WriteLine("\t{");
            this.CrearBaseInstancia(tabla);
            w.WriteLine("");
            this.CrearPropiedadesBaseInstancia(tabla);
            this.CrearConstructorBase(tabla, tipoconexion);
            this.CrearMetodoGuradar(tabla);
            this.CrearMetodoModificar(tabla);
            this.CrearMetodoEliminar(tabla);
            this.CrearMetodoNumeroRegistros(tabla);
            this.CrearMetodoBuscarRegistrosPorCampo(tabla);
            this.CrearTodosRegistrosTabla(tabla);
            this.CrearMetodoBuscarRegistrosPasoObjetos(tabla);
            w.WriteLine("\t}");
            w.WriteLine("}");

            // Close the writer and underlying file.     
            w.Close();

        }
        public void BusquedaLLavesForaneas()
        {

        }

        private void GenerateDataTableComp(OdbcDataReader reader)
        {
            DataRow myDataRow;
            data.Rows.Clear();
            data.Columns.Clear();
            data.Columns.Add("Field", typeof(String));
            data.Columns.Add("Type", typeof(String));
            data.Columns.Add("Key", typeof(String));
            while (reader.Read())
            {
                myDataRow = data.NewRow();
                myDataRow["Field"] = reader["Field"].ToString();
                myDataRow["Type"] = reader["Type"].ToString();
                myDataRow["Key"] = reader["key"].ToString();
                data.Rows.Add(myDataRow);

            }
            reader.Close();

        }
        public void CreateCCCs(OdbcDataReader TableFieldReader, String Namespace, String ClassName)
        {
            GenerateDataTableComp(TableFieldReader);
        }
        public int NumeroTablas(String DNS)
        {
            int i = 0;
            Mapping map = new Mapping(DNS);
            OdbcDataReader reader = map.GetTables();
            while (reader.Read())
            { i++; }
            reader.Close();
            return i;
        }

        public DataTable[] TablaCampos(String DNS)
        {
            Mapping map = new Mapping(DNS);
            DataTable[] tablas = new DataTable[this.NumeroTablas(DNS)];
            OdbcDataReader reader = map.GetTables();
            int k = 0;
            while (reader.Read())
            {
                DataTable tabla = new DataTable(reader.GetString(0));
                DataRow myDataRow;
                tabla.Rows.Clear();
                tabla.Columns.Clear();
                tabla.Columns.Add("Field", typeof(String));
                tabla.Columns.Add("Type", typeof(String));
                tabla.Columns.Add("Key", typeof(String));
                tabla.Columns.Add("Class", typeof(String));
                tabla.Columns.Add("DataType", typeof(String));
                map.GenerateDataTableComp(map.GetFields(reader.GetString(0)));
                for (int i = 0; i < map.data.Columns["Key"].Table.Rows.Count; i++)
                {
                    string valREF = map.data.Rows[i].ItemArray[2].ToString();
                    if (valREF == "MUL")
                    {
                        Mapping mapTemp = new Mapping(DNS);
                        OdbcDataReader readerTemp = mapTemp.GetTables();
                        bool lee = true;
                        while (readerTemp.Read() && lee)
                        {
                            mapTemp.GenerateDataTableComp(mapTemp.GetFields(readerTemp.GetString(0)));
                            for (int j = 0; j < mapTemp.data.Columns["Key"].Table.Rows.Count; j++)
                            {
                                string valREFTemp = mapTemp.data.Rows[j].ItemArray[2].ToString();
                                if (valREFTemp == "PRI")
                                {
                                    string fieldREF = map.data.Rows[i].ItemArray[0].ToString();
                                    string feildREFTemp = mapTemp.data.Rows[j].ItemArray[0].ToString();
                                    if (fieldREF == feildREFTemp)
                                    {
                                        myDataRow = tabla.NewRow();
                                        myDataRow["Field"] = map.data.Rows[i]["Field"];
                                        myDataRow["Type"] = map.data.Rows[i]["Type"];
                                        myDataRow["Key"] = map.data.Rows[i]["key"];
                                        myDataRow["Class"] = readerTemp.GetString(0);
                                        myDataRow["DataType"] = FindDataType(map.data.Rows[i].ItemArray[1].ToString());
                                        tabla.Rows.Add(myDataRow);
                                        lee = false;
                                        break;

                                    }
                                }
                            }
                        }
                        readerTemp.Close();
                    }
                    else
                    {
                        myDataRow = tabla.NewRow();
                        myDataRow["Field"] = map.data.Rows[i]["Field"];
                        myDataRow["Type"] = map.data.Rows[i]["Type"];
                        myDataRow["Key"] = map.data.Rows[i]["key"];
                        myDataRow["Class"] = "this";
                        myDataRow["DataType"] = FindDataType(map.data.Rows[i].ItemArray[1].ToString());
                        tabla.Rows.Add(myDataRow);
                    }
                }
                tablas[k] = tabla;
                k++;
            }
            reader.Close();
            return tablas;

        }
       
    }
}
