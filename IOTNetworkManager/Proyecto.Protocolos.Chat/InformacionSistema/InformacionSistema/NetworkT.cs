using System;
using System.Collections.Generic;


namespace InformacionSistema
{
    class NetworkT
    {
        int hrNetworklfIndex;

        public NetworkT(int _hrNetworklfIndex)
        {
            this.hrNetworklfIndex = _hrNetworklfIndex;
        }

        public int HhrNetworklfIndex
        {
            set { this.hrNetworklfIndex = value; }
            get { return this.hrNetworklfIndex; }
        }
    }
}
