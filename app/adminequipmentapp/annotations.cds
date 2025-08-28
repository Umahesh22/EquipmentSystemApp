using AdminService as service from '../../srv/AdminService';

annotate service.Equipments with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'Name',
        Value: name
    },
    {
        $Type: 'UI.DataField',
        Label: 'Type',
        Value: type_code
    },
    {
        $Type: 'UI.DataField',
        Label: 'Manufacturing',
        Value: manufacturing
    },
    {
        $Type: 'UI.DataField',
        Label: 'Description',
        Value: description
    },
     {
        $Type: 'UI.DataField',
        Label: 'Status',
        Value: status_equipmentCode
    }
]);
