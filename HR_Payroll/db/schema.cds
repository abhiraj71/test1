namespace my.hr_Payroll;

using { User } from '@sap/cds/common';

entity Hr_Payroll{

  key ID : Integer;
  NAME  :  String(20);

  key Employee_ID  : String(30);
  Wage_Type: String(20);
  Start_DATE:String(20);
  End_Date:String(20);
  Salary:Integer;
  Currency:String(4);
  
  
}