using AdminService as service from '../../srv/AdminService';

annotate service.Equipments with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'Names',
        Value: name
    },
    {
        $Type : 'UI.DataField',
        Value : type.name,
        Label : 'Equipment Type',
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
    },
],
    UI.SelectionFields : [
        type_code,
        status_equipmentCode,
    ],);
annotate service.Equipments with {
    type @(
        Common.Label : 'Equipment Type',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'EquipmentTypes',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : type_code,
                    ValueListProperty : 'code',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.EquipmentTypes with {
    code @Common.Text : name
};

// annotate service.Equipments with {
//     status @(
//         Common.Label : 'Status',
//         Common.ValueList : {
//             $Type : 'Common.ValueListType',
//             CollectionPath : 'EquipmentStatus',
//             Parameters : [
//                 {
//                     $Type : 'Common.ValueListParameterInOut',
//                     LocalDataProperty : status_equipmentCode,
//                     ValueListProperty : 'equipmentCode',
//                 },
//             ],
//         },
//         Common.ValueListWithFixedValues : false,
//     )
// };

annotate service.EquipmentStatus with {
    equipmentCode @Common.Text : name
};

