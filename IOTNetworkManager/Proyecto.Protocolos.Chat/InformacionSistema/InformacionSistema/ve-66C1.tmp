using System;
using System.Collections.Generic;
using System.Text;
using ASOCKETLib;

namespace InformacionSistema
{
    public class ClassConexionSnmp
    { 
        public SnmpManager objSnmpManager = new SnmpManager();
        public SocketConstants objConstants = new SocketConstants();
        public bool bOpened = false;
        string ipagente = "127.0.0.1";
        string logfile = "";
        string rutaMibFile=@"c:\windows\system32\hostmib.mib"; 
        //"c:\windows\system32\hostmib.mib"
        string comunidad = "public";
        int port = 161;
        string result = "";
        public ClassConexionSnmp()
        {
            ipagente = System.Environment.MachineName;
            logfile = System.IO.Path.GetTempPath() + "SnmpLog.txt";           
        }
        public ClassConexionSnmp(string unipagente)
        {
            ipagente = System.Environment.MachineName;
            logfile = System.IO.Path.GetTempPath() + "SnmpLog.txt";
            this.ipagente = unipagente;
        }
        public void SnmpForm_Load(object sender, EventArgs e)
        {
           
        }

        public void Open()
        {
            objSnmpManager = new SnmpManager();
            objSnmpManager.ProtocolVersion = 2;
            objSnmpManager.LoadMibFile(rutaMibFile);
            objSnmpManager.LogFile = logfile;

            objSnmpManager.Initialize();

            objSnmpManager.Open(ipagente, comunidad, port);

            if(GetResult() == 0 )
            {
                bOpened = true;                
            }           
        }

        public void Close()
        {
            objSnmpManager.Close();
            if (GetResult() == 0)
            {
                bOpened = false;                
            }

            
        }

   
        
        public SnmpObject Get(string unoid)
        {
            
            
            SnmpObject objSnmpObject;
            //f.ShowDialog();

            objSnmpObject = (SnmpObject)objSnmpManager.Get(unoid);
            
            if (GetResult() == 0)
            {
                return objSnmpObject;
            }
            return null;	
        }

        public SnmpObject GetNext()
        {
            SnmpObject objSnmpObject;
            
            objSnmpObject = (SnmpObject)objSnmpManager.GetNext();
            objSnmpObject.NodeID.ToString(); 

            if (GetResult() == 0)
            {
                return objSnmpObject;
            }
            return null;
            
        }
        public SnmpObject GetNext(string OID)
        {
            SnmpObject objSnmpObject=(SnmpObject)objSnmpManager.Get(OID);

            objSnmpObject = (SnmpObject)objSnmpManager.GetNext();
            objSnmpObject.NodeID.ToString();

            if (GetResult() == 0)
            {
                return objSnmpObject;
            }
            return null;

        }

        public void Set(string unvalue,string unoid,string untype)
        {
            

            SnmpObject objSnmpObject = new SnmpObject();

            objSnmpObject.Clear();
            objSnmpObject.Value = unvalue;
            objSnmpObject.OID = unoid;
            objSnmpObject.Type = GetTypeAsLong(untype);

            object obj = objSnmpObject;

            objSnmpManager.Set(ref obj);

            GetResult();

            
        }

        public void ctlView()
        {
            if (System.IO.File.Exists(logfile.ToString()))
            {
                System.Diagnostics.Process.Start(logfile);
            }
        }

        public int GetResult()
        {
            result = objSnmpManager.LastError + ": " + objSnmpManager.GetErrorDescription(objSnmpManager.LastError);
            return objSnmpManager.LastError;
        }

        

        public string GetValueType(int lType)
        {
            string strType = "";

            if (lType == objConstants.asSNMP_TYPE_BITS) strType = "ASN_BITS";
            if (lType == objConstants.asSNMP_TYPE_COUNTER32) strType = "ASN_COUNTER32";
            if (lType == objConstants.asSNMP_TYPE_COUNTER64) strType = "ASN_COUNTER64";
            if (lType == objConstants.asSNMP_TYPE_TIMETICKS) strType = "ASN_TIMETICKS";
            if (lType == objConstants.asSNMP_TYPE_OCTETSTRING) strType = "ASN_OCTETSTRING";
            if (lType == objConstants.asSNMP_TYPE_GAUGE32) strType = "ASN_GAUGE32";
            if (lType == objConstants.asSNMP_TYPE_IPADDRESS) strType = "ASN_IPADDRESS";
            if (lType == objConstants.asSNMP_TYPE_OPAQUE) strType = "ASN_OPAQUE";
            if (lType == objConstants.asSNMP_TYPE_UNSIGNED32) strType = "ASN_UNSIGNED32";
            if (lType == objConstants.asSNMP_TYPE_OBJECTIDENTIFIER) strType = "ASN_OBJECTIDENTIFIER";
            if (lType == objConstants.asSNMP_TYPE_NULL) strType = "ASN_NULL";
            if (lType == objConstants.asSNMP_TYPE_INTEGER) strType = "ASN_INTEGER";
            if (lType == objConstants.asSNMP_TYPE_INTEGER32) strType = "ASN_INTEGER32";
            if (lType == objConstants.asSNMP_TYPE_SEQUENCE) strType = "ASN_SEQUENCE";

            return strType;
        }

        public int GetTypeAsLong(string strType)
        {
            int lType = 0;

            switch (strType)
            {
                case "ASN_INTEGER": lType = objConstants.asSNMP_TYPE_INTEGER; break;
                case "ASN_BUTS": lType = objConstants.asSNMP_TYPE_BITS; break;
                case "ASN_OCTETSTRING": lType = objConstants.asSNMP_TYPE_OCTETSTRING; break;
                case "ASN_NULL": lType = objConstants.asSNMP_TYPE_NULL; break;
                case "ASN_OBJECTIDENTIFIER": lType = objConstants.asSNMP_TYPE_OBJECTIDENTIFIER; break;
                case "ASN_INTEGER32": lType = objConstants.asSNMP_TYPE_INTEGER32; break;
                case "ASN_SEQUENCE": lType = objConstants.asSNMP_TYPE_SEQUENCE; break;
                case "ASN_IPADDRESS": lType = objConstants.asSNMP_TYPE_IPADDRESS; break;
                case "ASN_COUNTER32": lType = objConstants.asSNMP_TYPE_COUNTER32; break;
                case "ASN_GAUGE32": lType = objConstants.asSNMP_TYPE_GAUGE32; break;
                case "ASN_TIMETICKS": lType = objConstants.asSNMP_TYPE_TIMETICKS; break;
                case "ASN_OPAQUE": lType = objConstants.asSNMP_TYPE_OPAQUE; break;
                case "ASN_COUNTER64": lType = objConstants.asSNMP_TYPE_COUNTER64; break;
                case "ASN_UNSIGNED32": lType = objConstants.asSNMP_TYPE_UNSIGNED32; break;
            }

            return lType;
        }

        
    }
}