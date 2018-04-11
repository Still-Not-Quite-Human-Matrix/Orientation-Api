﻿using BangazonOrientation.Models;
using Dapper;
using System.Configuration;
using System.Data.SqlClient;

namespace BangazonOrientation.Services
{
    public class CustomersRepository
    {
        public bool Edit(CustomersDto customer)
        {
            using (var db = new SqlConnection(ConfigurationManager.ConnectionStrings["BangazonOrientation"].ConnectionString))
            {
                db.Open();
                var numberEdited = db.Execute(@"UPDATE [dbo].[Customer]
                                   SET [FirstName] = @FirstName
                                      ,[LastName] = @LastName
                                      ,[LastActiveDate] = @LastActiveDate
                                      ,[StreetAddress] = @StreetAddress
                                      ,[City] = @City
                                      ,[State] = @State
                                      ,[ZipCode] = @ZipCode
                                      ,[PhoneNumber] = @PhoneNumber", customer );
                return numberEdited == 1;
            }
        }
    }
}