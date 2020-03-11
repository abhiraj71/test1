using { my.hr_Payroll as my } from '../db/schema';


service hr_PayrollService{

entity hr_Payroll as projection on my.Hr_Payroll;

}
// using { sap.capire.employee.employeeService } from 'employee';

using { sap.capire.employee.employeeService as external} from 'employee';
extend service hr_PayrollService {
  @readonly entity Employee @(cds.persistence.skip) as projection on external.employee;
}