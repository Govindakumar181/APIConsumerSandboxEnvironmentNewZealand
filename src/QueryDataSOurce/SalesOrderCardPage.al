page 60204 ZYSalesOrderCardPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ZYSalesOrderQueryTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(RowNo; Rec.RowNo)
                {
                    ApplicationArea = All;
                }
                field("SellToVendorNo."; Rec."BuyfromVendorNo.")
                {
                    ApplicationArea = All;
                }
                field("SellToVendor Name"; Rec."BuyfromVendorName")
                {
                    ApplicationArea = All;
                }
                field("Currency Code"; Rec."CurrencyCode")
                {
                    ApplicationArea = All;
                }
                field("Amount Including VAT"; Rec."AmountIncludingVAT")
                {
                    ApplicationArea = All;
                }
                field("Order Date"; Rec."OrderDate")
                {
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field(Inventory; Rec.Inventory)
                {
                    ApplicationArea = All;
                }
            }
        }
    }



    var
        myInt: Integer;
}