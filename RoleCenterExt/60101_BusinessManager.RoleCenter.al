pageextension 60101 BusinessManageExtension extends "Business Manager Role Center"
{
    layout
    {

    }

    actions
    {
        addafter(Action41)
        {
            group(API)
            {
                Caption = 'API Management';
                action(ActionTestAPI)
                {
                    ApplicationArea = Suite;
                    Caption = 'Test Page';

                    RunObject = Page "Student Page";
                }
                action(ActionTestAPIPage)
                {
                    ApplicationArea = Suite;
                    Caption = 'Test API Page';

                    RunObject = Page StudentAPIPage;
                }
                action(ActionAPIConsumer)
                {
                    ApplicationArea = Suite;
                    Caption = 'Consumer';

                    RunObject = Page ConsumerPage;
                }
                action(ActionAPIPage)
                {
                    ApplicationArea = Suite;
                    Caption = 'Consumer API Page';

                    RunObject = Page ConsumerAPIPage;
                }

                action(ActionCreatePO)
                {
                    ApplicationArea = Suite;
                    Caption = 'Create PO From API';

                    RunObject = Page PurchaseOrderDialog;
                }

                action(ActionQuerySales)
                {
                    ApplicationArea = Suite;
                    Caption = 'Sales Order Query';

                    // RunObject = query ZYSalesOrderQuery;
                }

                action(ActionPageSales)
                {
                    ApplicationArea = Suite;
                    Caption = 'Sales Order Page';

                    RunObject = page ZYSalesOrderQueryPage;
                }


                action(ActionPageSales1)
                {
                    ApplicationArea = Suite;
                    Caption = 'TEST API Page';

                    RunObject = page TESTAPI;
                }


                action(ActionPageExcelImport)
                {
                    ApplicationArea = Suite;
                    Caption = 'Excel Import';

                    RunObject = page SampleDataPage;
                }


            }
        }
    }

}