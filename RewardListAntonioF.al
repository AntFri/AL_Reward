page 50202 "Lista Recompensa AF"
{
    // Specify that this page will be a list page.
    PageType = List;

    // The page will be part of the "Lists" group of search results.
    UsageCategory = Lists;

    // The data of this page is taken from the "Reward" table.
    SourceTable = RecompensaAntonioF;

    // The "CardPageId" is set to the Reward Card previously created.
    // This will allow users to open records from the list in the "Reward Card" page.
    CardPageId = "Carta Recompensa AF";

    layout
    {
        area(content)
        {
            repeater(RecompensasAF)
            {
                field("RecompensaAF ID"; Rec."RecompensaAF ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the level of reward that the customer has at this point.';
                }

                field("DescripcionAF"; Rec."DescripcionAF")
                {
                    ApplicationArea = All;
                }

                field("Porcentaje DescuentoAF"; Rec."Porcentaje DescuentoAF")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}