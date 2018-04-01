using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace INFO    
{
    public static class customer
    {
        private static string _name;
        public static string name
        {
            get { return _name; }
            set { _name = value; }
        }
        
        private static string _email;
        public static string email
        {
            get { return _email; }
            set { _email = value; }
        }

        private static string _contact;
        public static string contact
        {
            get { return _contact; }
            set { _contact = value; }
        }

        private static string _fromDate;
        public static string fromDate
        {
            get { return _fromDate; }
            set { _fromDate = value; }
        }

        private static string _toDate;
        public static string toDate
        {
            get { return _toDate; }
            set { _toDate = value; }
        }

        private static string _guestCount;
        public static string guestCount
        {
            get { return _guestCount; }
            set { _guestCount = value; }
        }

        private static string _emailCode;
        public static string emailCode
        {
            get { return _emailCode; }
            set { _emailCode = value; }
        }

        private static string _roomType;
        public static string roomType
        {
            get { return _roomType; }
            set { _roomType = value; }
        }

	    private static string _total;
        public static string total
        {
            get { return _total; }
            set { _total = value; }
        }

        private static string _timeArrival;
        public static string timeArrival
        {
            get { return _timeArrival; }
            set { _timeArrival = value; }
        }

    }
}
