using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;

namespace Proyecto.Protocolos.Chat.Entidades
{
    public class GetMacAddressFromIPAddress
    {


        public GetMacAddressFromIPAddress()
        {

        }

        public string GetMacAddress(string IPAddress)
        {

            string strMacAddress = string.Empty;

            try
            {

                string strTempMacAddress = string.Empty;

                ProcessStartInfo objProcessStartInfo = new ProcessStartInfo();

                Process objProcess = new Process();

                objProcessStartInfo.FileName = "nbtstat";

                objProcessStartInfo.RedirectStandardInput = false;

                objProcessStartInfo.RedirectStandardOutput = true;

                objProcessStartInfo.Arguments = "-A " + IPAddress;

                objProcessStartInfo.UseShellExecute = false;

                objProcess = Process.Start(objProcessStartInfo);
                
                int Counter = -1;

                while (Counter <= -1)
                {

                    Counter = strTempMacAddress.Trim().ToLower().IndexOf("mac", 0);

                    if (Counter > -1)
                    {

                        break;

                    }

                    strTempMacAddress = objProcess.StandardOutput.ReadLine();

                }

                objProcess.WaitForExit();

                strMacAddress = strTempMacAddress.Trim();

            }

            catch (Exception Ex)
            {

                return Ex.Message;


            }
            string[]val= strMacAddress.Split('=');
            return val[1].Trim().TrimEnd();

        }
        [System.Runtime.InteropServices.DllImport("Iphlpapi.dll", EntryPoint = "SendARP")]
        internal extern static Int32 SendArp(Int32 destIpAddress, Int32 srcIpAddress, byte[] macAddress, ref Int32 macAddressLength);


        public static System.Net.NetworkInformation.PhysicalAddress GetMacFromIP(System.Net.IPAddress IP)
        {
            if (IP.AddressFamily != System.Net.Sockets.AddressFamily.InterNetwork)
                throw new ArgumentException("supports just IPv4 addresses");

            Int32 addrInt = IpToInt(IP);
            Int32 srcAddrInt = IpToInt(IP);
            byte[] mac = new byte[6]; // 48 bit    

            int length = mac.Length;
            int reply = SendArp(addrInt, srcAddrInt, mac, ref length);

            byte[] emptyMac = new byte[12];

            if (reply != 0)
            {
                return new System.Net.NetworkInformation.PhysicalAddress(emptyMac);
            }
            return new System.Net.NetworkInformation.PhysicalAddress(mac);
        }

        private static Int32 IpToInt(System.Net.IPAddress IP)
        {
            byte[] bytes = IP.GetAddressBytes();
            return BitConverter.ToInt32(bytes, 0);
        }


    }
}