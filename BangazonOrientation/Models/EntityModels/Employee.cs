﻿using System;

namespace BangazonOrientation.Models.EntityModels
{
    public class Employee
    {
        public virtual int Id { get; set; }
        public virtual string FirstName { get; set; }
        public virtual string LastName { get; set; }
        public virtual DateTime StartDate { get; set; }
        public virtual int DepartmentID { get; set; }
        public virtual string DepartmentName { get; set; }
    }
}