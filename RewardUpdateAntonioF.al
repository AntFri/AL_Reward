codeunit 50203 RecompensaUpdateAF
{
    // An upgrade codeunit includes AL methods for synchronizing changes to a table definition 
    // in an application with the business data table in SQL Server and migrating existing 
    // data.
    Subtype = Upgrade;

    // "OnUpgradePerCompany" trigger is used to perform the actual upgrade.
    trigger OnUpgradePerCompany();
    var
        Reward: Record RecompensaAntonioF;

        // "ModuleInfo" is the current executing module. 
        Module: ModuleInfo;
    begin
        // Get information about the current module.
        NavApp.GetCurrentModuleInfo(Module);

        // If the code needs to be upgraded, the BRONZE reward level will be changed into the
        // ALUMINUM reward level.
        if Module.DataVersion.Major = 1 then begin
            Reward.Get('ROT');
            Reward.Rename('BLAU');
            Reward.DescripcionAF := 'Blau Level';
            Reward.Modify();
        end;
    end;
}