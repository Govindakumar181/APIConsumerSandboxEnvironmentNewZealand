page 60206 ZYSalesOrderQueryPage
{
    Caption = 'ZYSalesOrderQuery';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = ZYSalesOrderQueryTable;
    CardPageId = ZYSalesOrderCardPage;
    layout
    {
        area(Content)
        {
            repeater(Group)
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
    // trigger OnOpenPage()
    // var
    //     ZYSalesOrderQuery: Query "ZYSalesOrderQuery";
    // begin
    //     if ZYSalesOrderQuery.Open() then begin
    //         while ZYSalesOrderQuery.Read() do begin
    //             Rec.Init();
    //             Rec.RowNo := Rec.RowNo + 1;
    //             Rec."Buy-fromVendorNo." := ZYSalesOrderQuery.SelltoCustomerNo;
    //             Rec."Buy-fromVendorName" := ZYSalesOrderQuery.SelltoCustomerName;
    //             Rec."CurrencyCode" := ZYSalesOrderQuery.Currency_Code;
    //             Rec."AmountIncludingVAT" := ZYSalesOrderQuery.Amount_Including_VAT;
    //             Rec."OrderDate" := ZYSalesOrderQuery.Order_Date;
    //             Rec."No." := ZYSalesOrderQuery.No_;
    //             Rec.Description := ZYSalesOrderQuery.Description;
    //             Rec.Quantity := ZYSalesOrderQuery.Quantity;
    //             Rec.Amount := ZYSalesOrderQuery.Amount;
    //             Rec.Inventory := ZYSalesOrderQuery.Inventory;
    //             Rec.Insert();
    //         end;
    //         ZYSalesOrderQuery.Close();
    //     end;
    // end;
}