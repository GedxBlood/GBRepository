﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Traffic
{
    public class OrganizationsLogic
    {
        public static List<Organization> ReadAllOrganizations()
        {
            List<Organization> AllOrganizations = new List<Organization>();
            using (var db= new trafficEntities())
            {
                var query = from o in db.Organization
                            orderby o.organizationID
                            select o;
                foreach (var org in query)
                {
                    AllOrganizations.Add(org);
                }
            }
            return (AllOrganizations);
        }
        public static void AddOrganization(long OrganizationID, long AddressID, string FullTitle, 
                                    string ShortTitle, string RegNumber, string INN, 
                                    string KPP, string UNP)
        {
            var organization = new Organization {addressID=AddressID,organizationID=OrganizationID,FullTitle=FullTitle,ShortTitle=ShortTitle,RegistrationNumber=RegNumber, INN=INN, KPP=KPP, UNP=UNP };
            using (var db = new trafficEntities())
            {
                db.Organization.Add(organization);
                db.SaveChanges();
            }
        }

        public static Organization SearchByID(long organizationID)
        {
            Organization org = new Organization();
            using (var db = new trafficEntities())
            {
                //finding organization
                var queryOrg = from o in db.Organization
                               where o.organizationID == organizationID
                               select o;
                foreach (var o in queryOrg)
                {
                    org = o;
                }
            }
            return org;
        }
        
    }
}
