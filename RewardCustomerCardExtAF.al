pageextension 50206 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        // The "addlast" construct adds the field control as the last control in the General 
        // group.
        addlast(General)
        {
            field("RecompensaAF ID"; Rec."RecompensaAF ID")
            {
                ApplicationArea = All;

                // Lookup property is used to provide a lookup window for 
                // a text box. It is set to true, because a lookup for 
                // the field is needed.
                Lookup = true;
            }
        }
    }

    actions
    {
        // The "addfirst" construct will add the action as the first action
        // in the Navigation group.
        addfirst(Navigation)
        {
            action("RecompensaAF")
            {
                ApplicationArea = All;

                // "RunObject" sets the "Reward List" page as the object 
                // that will run when the action is activated.
                RunObject = page "Lista Recompensa AF";
            }
        }
    }
}