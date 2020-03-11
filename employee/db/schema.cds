namespace my.employee;


using { User } from '@sap/cds/common';
type updatedName : String(111);


entity Employee {

  key ID :String(36);
  Name  : updatedName;
  key Enterprise_ID  : String(30);
  Career_Level : String(12);
  Role : String(111);
  
}   