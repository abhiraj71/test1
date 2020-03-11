namespace sap.capire.employee;
using { my.employee as my } from '../db/schema';

service employeeService{
event employeeUpdated : {name:String};
entity employee as projection on my.Employee;

}