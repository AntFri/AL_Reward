codeunit 50204 RecompensaCodeAF
{
    // Set the codeunit to be an install codeunit. 
    Subtype = Install;

    // This trigger includes code for company-related operations. 
    trigger OnInstallAppPerCompany();
    var
        Reward: Record RecompensaAntonioF;
    begin
        // If the "Reward" table is empty, insert the default rewards.
        if Reward.IsEmpty() then begin
            InsertDefaultRewards();
        end;
    end;

    // Insert the GOLD, SILVER, BRONZE reward levels
    procedure InsertDefaultRewards();
    begin
        InsertRewardLevel('GELB', 'Gelb Level', 20);
        InsertRewardLevel('GRÜN', 'Grün Level', 10);
        InsertRewardLevel('ROT', 'Rot Level', 5);
    end;

    // Create and insert a reward level in the "Reward" table.
    procedure InsertRewardLevel(ID: Code[30]; Description: Text[250]; Discount: Decimal);
    var
        Reward: Record RecompensaAntonioF;
    begin
        Reward.Init();
        Reward."RecompensaAF ID" := ID;
        Reward.DescripcionAF := Description;
        Reward."Porcentaje DescuentoAF" := Discount;
        Reward.Insert();
    end;

}