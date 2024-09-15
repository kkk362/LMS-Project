using System.ComponentModel.DataAnnotations;

namespace LeaveManager.Models
{
    /**
 * Employee class to store employee personal details.
 * @author hexware
 * dto
 */

    public class Employee
    {
        /**
   * empId to store employee id.
   */
        [Key]
        public int EmpId { get; set; }

        public string Name { get; set; }
    }
}
