page 50201 "Carta Recompensa AF"
{
    // The page will be of type "Card" and will render as a card.
    PageType = Card;

    // The page will be part of the "Tasks" group of search results.
    UsageCategory = Tasks;

    // The source table shows data from the "Reward" table.
    SourceTable = RecompensaAntonioF;

    // The layout describes the visual parts on the page.
    layout
    {
        area(content)
        {
            group(RecompensasAF)
            {
                field("RecompensaAF Id"; Rec."RecompensaAF ID")
                {
                    // ApplicationArea sets the application area that 
                    // applies to the page field and action controls. 
                    // Setting the property to All means that the control 
                    // will always appear in the user interface.
                    ApplicationArea = All;
                }

                field("DescripcionAF"; Rec."DescripcionAF")
                {
                    ApplicationArea = All;
                }

                field("Percentaje DescuentosAF"; Rec."Porcentaje DescuentoAF")
                {
                    ApplicationArea = All;
                }
                field("MinimumAF Purchase"; Rec."MinimumAF Purchase")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}