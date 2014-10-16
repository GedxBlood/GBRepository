using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TrafficBusinessLogic;
namespace Traffic
{
    public class InternationalCardClass
    {
        public long RegistrationID;
        public long TransportID;
        public string ApprovalCert;
        public DateTime DateFrom;
        public DateTime DateUntil;
        public string Model;
        public string RegNumber;
        public string OrgName;
        public InternationalCardClass()
        {

        }
        public InternationalCardClass(long registrationID, long transportID,string approvalCert, 
                                       DateTime dateFrom, DateTime dateUntil, long organizationID)
        {
            TransportID = transportID;
            Transport tr = new Transport();
            Organization org=new Organization();
            using (var db = new trafficEntities()) 
            {   
                //finding transport TODO - swap on methods
                var query = from t in db.Transport
                            where t.transportID == TransportID
                            select t;
                foreach (var t in query)
                {
                    tr = t;
                }

                //finding organization TODO - swap on methods
                var queryOrg = from o in db.Organization
                              where o.organizationID == organizationID
                            select o;
                foreach (var o in queryOrg)
                {
                    org=o;
                }
            }
            ApprovalCert = approvalCert;
            RegistrationID = registrationID;
            DateFrom = dateFrom;
            DateUntil = dateUntil;
            Model = tr.model;
            RegNumber = tr.registrationNumber;
            OrgName = org.ShortTitle;
            using (var db = new trafficEntities())
            {
                InternationalCard IC = new InternationalCard() 
                {
                    registrationID=RegistrationID, 
                    approvalCert=ApprovalCert,
                    transportID=transportID,
                    organizationID=organizationID, 
                    dateFromApproval=dateFrom,
                    dateUntil=DateUntil
                };
                db.InternationalCard.Add(IC);
                db.SaveChanges();
            }
        }
        public static InternationalCardClass SearchByTransportID(long transportID)
        {
            InternationalCardClass returnParam = new InternationalCardClass();
            returnParam.TransportID = transportID;
            Transport tr = new Transport();
            Organization org = new Organization();
            InternationalCard IC = new InternationalCard();
            using (var db = new trafficEntities())
            {
                //finding transport TODO - swap on methods
                var query = from t in db.Transport
                            where t.transportID == returnParam.TransportID
                            select t;
                foreach (var t in query)
                {
                    tr = t;
                }
                //finding IC TODO - swap on methods
                var queryIC = from i in db.InternationalCard
                              where i.transportID == returnParam.TransportID
                            select i;
                foreach (var i in queryIC)
                {
                    IC=i;
                }
                //finding organization TODO - swap on methods
                var queryOrg = from o in db.Organization
                               where o.organizationID == IC.organizationID
                               select o;
                foreach (var o in queryOrg)
                {
                    org = o;
                }
            }
            returnParam.RegistrationID = IC.registrationID;
            returnParam.DateFrom = IC.dateFromApproval;
            returnParam.DateUntil = IC.dateUntil;
            returnParam.Model = tr.model;
            returnParam.RegNumber = tr.registrationNumber;
            returnParam.OrgName = org.ShortTitle;
            return returnParam;
        }

    }
}
