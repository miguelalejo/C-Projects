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
		DataTable data=new DataTable();
		String dsnName;
		public Mapping(String DSNName)
		{
			//
			// TODO: Add constructor logic here
			//
			dsnName=DSNName;
						
		}
		public OdbcDataReader GetDataBases()
		{
			OdbcConnection conn= new OdbcConnection("DSN="+this.dsnName);
			conn.Open();

			OdbcCommand comm= new OdbcCommand("SHOW Databases",conn);
			
			OdbcDataReader reader=comm.ExecuteReader(CommandBehavior.CloseConnection);
			return reader;
		}
		public OdbcDataReader GetTables()
		{
			OdbcConnection conn= new OdbcConnection("DSN="+this.dsnName);
			conn.Open();

			OdbcCommand comm= new OdbcCommand("SHOW Tables",conn);
			
			OdbcDataReader reader=comm.ExecuteReader(CommandBehavior.CloseConnection);
			return reader;
		}
		public OdbcDataReader GetFields(string TableName)
		{
			OdbcConnection conn= new OdbcConnection("DSN="+this.dsnName);
			conn.Open();

			OdbcCommand comm= new OdbcCommand("SHOW FIELDS FROM "+TableName,conn);
			
			OdbcDataReader reader=comm.ExecuteReader(CommandBehavior.CloseConnection);
						
			return reader;
		}
		public void CreateCs(String FileLocation,OdbcDataReader TableFieldReader, String Namespace, String ClassName)
		{
			fs = new FileStream(FileLocation+ClassName+".cs", FileMode.Create, FileAccess.Write);
			// Create a Char writer.
			w = new StreamWriter(fs);         
			// Set the file pointer to the end.
			//w.BaseStream.Seek(0, SeekOrigin.End);   

					
			GenerateDataTable(TableFieldReader);

			w.WriteLine("using System;");
			w.WriteLine("using System.Data;");
			w.WriteLine("using System.Data.Odbc;");
			w.WriteLine();

			w.WriteLine("namespace "+Namespace);
			w.WriteLine("{");
			w.WriteLine("\tpublic class "+ClassName);
			w.WriteLine("\t{");
			CreateInstanceVariables();
			w.WriteLine("\t\tpublic "+ClassName+"()");
			w.WriteLine("\t\t{");
			w.WriteLine("\r\n");
			w.WriteLine("\t\t}");
			w.WriteLine("");

			foreach(DataRow dr in data.Rows)
			{
				string st=FindDataType(dr["Type"].ToString());
				if(st.Trim().Length>0)
				{
					w.Write("\t\tpublic ");
					w.Write(st);
					w.WriteLine(" "+dr["Field"].ToString());
					w.WriteLine("\t\t{");
					w.WriteLine("\t\t\tget {return  _"+dr["Field"].ToString()+ ";}");
					w.WriteLine("\t\t\tset { _"+dr["Field"].ToString()+"=value; }");
					w.WriteLine("\t\t}");
				}
								
			}

			w.WriteLine("\t}");
			w.WriteLine("}");
			
			// Close the writer and underlying file.     
				w.Close(); 

		}
		private void GenerateDataTable(OdbcDataReader reader)
		{
			DataRow myDataRow;
			data.Columns.Clear();
			data.Columns.Add("Field",typeof(String));
			data.Columns.Add("Type",typeof(String));
				
			while(reader.Read())
			{
					myDataRow=data.NewRow();
					myDataRow["Field"]=reader["Field"].ToString();
					myDataRow["Type"]=reader["Type"].ToString();
					data.Rows.Add(myDataRow);
				
			}
			reader.Close();
		}
		private void CreateInstanceVariables()
		{
			foreach(DataRow dr in data.Rows)
			{
				string st=FindDataType(dr["Type"].ToString());
					if(st.Trim().Length>0)
					{
						w.Write("\t\tprivate ");
						w.Write(st);
						w.WriteLine(" _"+dr["Field"].ToString()+";");							
					}
			}
			w.WriteLine();
		}
		private String FindDataType(String Type)
		{
			if (Type.IndexOf("varchar")!=-1)
			{
				return "String";
			}
			else if(Type.IndexOf("datetime")!=-1)
			{
				return "DateTime";
			}
			else if(Type.IndexOf("date")!=-1)
			{
				return "DateTime";
			}
			else if(Type.IndexOf("decimal")!=-1)
			{
				return "Decimal";
			}
			else if(Type.IndexOf("tinyint(4)")!=-1)
			{
				return "boolean";
			}
			else if(Type.IndexOf("int")!=-1)
			{
				return "int";
			}
			else if(Type.IndexOf("mediumint")!=-1)
			{
				return "int";
			}
			else if(Type.IndexOf("timestamp")!=-1)
			{
				return "DateTime";
			}

			else if(Type.IndexOf("bigint")!=-1)
			{
				return "Int64";
			}
			else if(Type.IndexOf("float")!=-1)
			{
				return "float";
			}
		
			else if(Type.IndexOf("tinyblob")!=-1)
			{
				return "String";
			}
			else if(Type.IndexOf("tinytext")!=-1)
			{
				return "String";
			}
			else if(Type.IndexOf("text")!=-1)
			{
				return "String";
			}
			else if(Type.IndexOf("mediumblob")!=-1)
			{
				return "String";
			}
			else if(Type.IndexOf("mediumtext")!=-1)
			{
				return "String";
			}
			else if(Type.IndexOf("longblob")!=-1)
			{
				return "String";
			}
			else if(Type.IndexOf("longtext")!=-1)
			{
				return "String";
			}


				return "";
			
		}
	}
}
