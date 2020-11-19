using System;

namespace Camlibel.HelpDesk
{
	public class Assets
	{
		private String _AssetID;
		private String _ParentAssetID;
		private String _Name;
		private String _AssetTypeID;
		private String _Version;
		private String _ModelNumber;
		private String _SerialNumber;
		private DateTime _AcquisitionDate;
		private DateTime _DateInstalled;
		private DateTime _WarrantyExpireDate;
		private Decimal _Cost;
		private String _CurrencyTypeID;
		private String _PhysicalLocation;
		private boolean _Active;
		private String _AssetOwners;
		private String _CompanyID;
		private String _VendorID;
		private String _Description;
		private String _CPUType;
		private int _NumberOfCPUs;
		private String _Memory;
		private String _DiskCapacity;
		private int _NumberOfNICs;
		private String _NetworkAddresses;
		private String _DocumentID;
		private String _ConfigurationDetails;
		private String _ConfigurationFilesURL;

		public Assets()
		{


		}

		public String AssetID
		{
			get {return  _AssetID;}
			set { _AssetID=value; }
		}
		public String ParentAssetID
		{
			get {return  _ParentAssetID;}
			set { _ParentAssetID=value; }
		}
		public String Name
		{
			get {return  _Name;}
			set { _Name=value; }
		}
		public String AssetTypeID
		{
			get {return  _AssetTypeID;}
			set { _AssetTypeID=value; }
		}
		public String Version
		{
			get {return  _Version;}
			set { _Version=value; }
		}
		public String ModelNumber
		{
			get {return  _ModelNumber;}
			set { _ModelNumber=value; }
		}
		public String SerialNumber
		{
			get {return  _SerialNumber;}
			set { _SerialNumber=value; }
		}
		public DateTime AcquisitionDate
		{
			get {return  _AcquisitionDate;}
			set { _AcquisitionDate=value; }
		}
		public DateTime DateInstalled
		{
			get {return  _DateInstalled;}
			set { _DateInstalled=value; }
		}
		public DateTime WarrantyExpireDate
		{
			get {return  _WarrantyExpireDate;}
			set { _WarrantyExpireDate=value; }
		}
		public Decimal Cost
		{
			get {return  _Cost;}
			set { _Cost=value; }
		}
		public String CurrencyTypeID
		{
			get {return  _CurrencyTypeID;}
			set { _CurrencyTypeID=value; }
		}
		public String PhysicalLocation
		{
			get {return  _PhysicalLocation;}
			set { _PhysicalLocation=value; }
		}
		public boolean Active
		{
			get {return  _Active;}
			set { _Active=value; }
		}
		public String AssetOwners
		{
			get {return  _AssetOwners;}
			set { _AssetOwners=value; }
		}
		public String CompanyID
		{
			get {return  _CompanyID;}
			set { _CompanyID=value; }
		}
		public String VendorID
		{
			get {return  _VendorID;}
			set { _VendorID=value; }
		}
		public String Description
		{
			get {return  _Description;}
			set { _Description=value; }
		}
		public String CPUType
		{
			get {return  _CPUType;}
			set { _CPUType=value; }
		}
		public int NumberOfCPUs
		{
			get {return  _NumberOfCPUs;}
			set { _NumberOfCPUs=value; }
		}
		public String Memory
		{
			get {return  _Memory;}
			set { _Memory=value; }
		}
		public String DiskCapacity
		{
			get {return  _DiskCapacity;}
			set { _DiskCapacity=value; }
		}
		public int NumberOfNICs
		{
			get {return  _NumberOfNICs;}
			set { _NumberOfNICs=value; }
		}
		public String NetworkAddresses
		{
			get {return  _NetworkAddresses;}
			set { _NetworkAddresses=value; }
		}
		public String DocumentID
		{
			get {return  _DocumentID;}
			set { _DocumentID=value; }
		}
		public String ConfigurationDetails
		{
			get {return  _ConfigurationDetails;}
			set { _ConfigurationDetails=value; }
		}
		public String ConfigurationFilesURL
		{
			get {return  _ConfigurationFilesURL;}
			set { _ConfigurationFilesURL=value; }
		}
	}
}
