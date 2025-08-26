using {Equipment.System.App as service} from '../db/DataModel';

service AdminService {
    entity Equipments      as projection on service.Equipments;
    entity Employees       as projection on service.Employees;
    entity Tasks           as projection on service.Tasks;
    entity Issues          as projection on service.Issues;
    entity Locations       as projection on service.Locations;
    entity EquipmentStatus as projection on service.EquipmentStatus;
    entity IssueStatus     as projection on service.IssueStatus;
    entity TaskPriority    as projection on service.TaskPriority;
    entity IsssueSeverity  as projection on service.IsssueSeverity;
    entity Taskstatus      as projection on service.Taskstatus;
    entity Roles           as projection on service.Roles;
    entity EquipmentTypes  as projection on service.EquipmentTypes;
}

