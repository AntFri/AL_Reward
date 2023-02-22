tableextension 50205 "Customer Ext" extends Customer
{
    fields
    {
        field(50207; "RecompensaAF ID"; Code[30])
        {
            // Set links to the "Reward ID" from the Reward table.
            TableRelation = RecompensaAntonioF."RecompensaAF ID";

            // Set whether to validate a table relationship.
            ValidateTableRelation = true;

            // "OnValidate" trigger executes when data is entered in a field.
            trigger OnValidate();
            begin

                // If the "Reward ID" changed and the new record is blocked, an error is thrown. 
                if (Rec."RecompensaAF ID" <> xRec."RecompensaAF ID") and
                    (Rec.Blocked <> Blocked::" ") then begin
                    Error('Cannot update the rewards status of a blocked customer.')
                end;
            end;
        }
    }
}