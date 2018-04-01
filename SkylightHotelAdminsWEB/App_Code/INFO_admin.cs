using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace INFO
{
    public static class admin
    {
        static string User;
        public static string username
        {
            get { return User; }
            set { User = value; }
        }

        static string Pass;
        public static string password
        {
            get { return Pass; }
            set { Pass = value; }
        }

        static string lastN;
        public static string lastname
        {
            get { return lastN; }
            set { lastN = value; }
        }

        static string firstN;
        public static string firstname
        {
            get { return firstN; }
            set { firstN = value; }
        }

        static string em;
        public static string email
        {
            get { return em; }
            set { em = value; }
        }
    }
}
