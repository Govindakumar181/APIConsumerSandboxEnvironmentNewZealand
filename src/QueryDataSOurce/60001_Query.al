query 60201 "ZYSalesOrderQuery"
{
    Caption = 'Sales Order Query';
    OrderBy = Descending(SelltoCustomerNo);
    elements
    {
        dataitem(Sales_Header; "Sales Header")
        {
            column(SelltoCustomerNo; "Sell-to Customer No.")
            {
            }
            column(SelltoCustomerName; "Sell-to Customer Name")
            {
            }
            column(Order_Date; "Order Date")
            {
            }
            column(Currency_Code; "Currency Code")
            {
            }
            column(Amount_Including_VAT; "Amount Including VAT")
            {
            }
            dataitem(Sales_Line; "Sales Line")
            {
                DataItemLink = "Document Type" = Sales_Header."Document Type", "Document No." = Sales_Header."No.";
                column(No_; "No.")
                {
                }
                column(Description; Description)
                {
                }
                column(Quantity; Quantity)
                {
                }
                column(Amount; Amount)
                {
                }
                dataitem(Item; Item)
                {
                    DataItemLink = "No." = Sales_Line."No.";
                    column(Inventory; Inventory)
                    {
                    }
                }
            }
        }
    }
}