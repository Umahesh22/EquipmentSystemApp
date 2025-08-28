namespace Equipment.System.App;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Equipments : cuid, managed {
    name          : String(50)  @title: '{i18n>name}';
    type          : Association to EquipmentTypes;
    Location      : Association to Locations;
    status        : Association to EquipmentStatus;
    description   : String(200) @title: '{i18n>description}';
    manufacturing : String(100);
    tasks         : Composition of many Tasks
                        on tasks.equipment = $self;
    issues        : Composition of many Issues
                        on issues.equipment = $self;
}

entity Issues : cuid, managed {
    description : String(250);
    reportedby  : Association to Employees;
    equipment   : Association to Equipments;
    IssueStatus : Association to IssueStatus;
}

entity Tasks : cuid, managed {
    description : String(200);
    dueDate     : Date;
    priority    : Association to TaskPriority;
    status      : Association to Taskstatus;
    assignedTo  : Association to Employees;
    equipment   : Association to Equipments;
}

entity Employees : cuid, managed {
    name     : String(50);
    username : String(50);
    email    : String(50);
    role     : Association to Roles;
}

entity EquipmentTypes {
    key code : String(2);
        name : String(50);
}

entity Locations {
    key locationid : String(3);
        name       : String(50);
}

entity EquipmentStatus {
    key equipmentCode : String(3);
        name          : String(50);
}

entity Taskstatus {
    key code : String(2);
        name : String(25);
}

entity IssueStatus {
    key statusCode : String(3);
        name       : String(25);
}

entity TaskPriority {
    key code : String(2);
        name : String(25);
}

entity IsssueSeverity {
    key id   : String(2);
        desc : String(25);
}

entity Roles {
    key code : String(2);
        type : String(15);
}

entity demo {
    key id    : Int16;
        types : String;
}
