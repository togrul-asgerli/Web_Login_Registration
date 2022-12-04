using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_App
{
    public class Connection
    {
        public static string GetConnect
        {
            get { return "Data Source=DESKTOP-SQ9BA76\\SQLEXPRESS;Integrated Security=True; Database=Northwind;"; }
        }
    }
}