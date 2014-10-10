using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Traffic
{
    public class MaintenanceClass
    {
        public long maintenanceID;
        public long transportID;
        public DateTime dateFrom;
        public DateTime dateUntil;
        public bool service;
        public bool repair;
        public decimal cost;
        public MaintenanceClass(long MaintenanceID)
        {
            maintenanceID = MaintenanceID;
            Maintenance _maintenance=MaintenanceLogic.SearchByID(maintenanceID);
            transportID = _maintenance.transportID;
            dateFrom = _maintenance.dateFrom;
            dateUntil = _maintenance.dateUntil;
            cost = (decimal)_maintenance.cost;
            TypeCost TC = TypeCostLogic.SearchByID(_maintenance.typeCostID);
            service = (bool)TC.service;
            repair = (bool)TC.repair;
        }
        public static List<MaintenanceClass> ReadAllMaintenanceClasses()
        {
            List<MaintenanceClass> AllMaintenanceClasses = new List<MaintenanceClass>();
            List<Maintenance> AllMaintenances = MaintenanceLogic.ReadAllMaintenances();
            foreach (var m in AllMaintenances)
            {
                MaintenanceClass MC = new MaintenanceClass(m.maintenanceID);
                AllMaintenanceClasses.Add(MC);
            }
            return AllMaintenanceClasses;
        }
        public static void AddMaintenanceClass(long transportID,DateTime dateFrom,DateTime dateUntil,long typeCostID,decimal cost)
        {
            MaintenanceLogic.AddMaintenance(transportID,dateFrom,dateUntil,typeCostID,cost);
        }
    }
}
