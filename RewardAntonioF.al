table 50200 "RecompensaAntonioF"
{
    DataClassification = ToBeClassified;

    fields
    {
        // The "Reward ID" field represents the unique identifier 
        // of the reward and can contain up to 30 Code characters. 
        field(1; "RecompensaAF ID"; Code[30])
        {
            DataClassification = ToBeClassified;
        }

        // The "Description" field can contain a string 
        // with up to 250 characters.
        field(2; DescripcionAF; Text[250])
        {
            // This property specified that 
            // this field cannot be left empty.
            NotBlank = true;
        }

        // The "Discount Percentage" field is a Decimal numeric value
        // that represents the discount that will 
        // be applied for this reward.
        field(3; "Porcentaje DescuentoAF"; Decimal)
        {
            // The "MinValue" property sets the minimum value for the "Discount Percentage" 
            // field.
            MinValue = 0;

            // The "MaxValue" property sets the maximum value for the "Discount Percentage"
            // field.
            MaxValue = 100;

            // The "DecimalPlaces" property is set to 2 to display discount values with  
            // exactly 2 decimals.
            DecimalPlaces = 2;
        }
        field(4; "MinimumAf Purchase"; Decimal)
        {
            MinValue = 0;
            DecimalPlaces = 2;
        }
    }

    keys
    {
        key(PK; "RecompensaAF ID")
        {
            Clustered = true;
        }
    }
}