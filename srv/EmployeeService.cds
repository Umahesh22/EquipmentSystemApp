using {Equipment.System.App as service} from '../db/DataModel';

//Service Definition:
service EquipmentSystemSrv {
    entity Equipments      as projection on service.Equipments;
    entity EquipmentTypes  as projection on service.EquipmentTypes;
    entity Locations       as projection on service.Locations;
    entity EquipmentStatus as projection on service.EquipmentStatus;
    entity IssueStatus     as projection on service.IssueStatus;
    entity TaskPriority    as projection on service.TaskPriority;
    entity IsssueSeverity  as projection on service.IsssueSeverity;

}