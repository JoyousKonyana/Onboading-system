using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BMW_ONBOARDING_SYSTEM.ViewModel
{
    public class CheckInEquipmentViewModel
    {
        public int EquipmentId { get; set; }
        public int OnboarderId { get; set; }
      

        public DateTime EquipmentCheckInDate { get; set; }

        public string EquipmentCheckInCondition { get; set; }
    }
}
