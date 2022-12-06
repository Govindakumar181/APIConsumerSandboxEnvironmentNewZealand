page 60101 ConsumerAPIPage
{
    APIGroup = 'apiGroup9';
    APIPublisher = 'KSP';
    APIVersion = 'v1.0';
    Caption = 'ConsumerAPIPage';
    DelayedInsert = true;
    EntityName = 'consumer';
    EntitySetName = 'consumer';
    PageType = API;
    SourceTable = APIConsumer;
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.ID)
                {
                    Caption = 'ID';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(address; Rec.Address)
                {
                    Caption = 'Address';
                }
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
            }
        }
    }

    // http://localhost:7248/Development/api/v2.0/
    // http://localhost:7248/Development/api/APIPublisher/APIGroup/APIVersion/EntitySetName/

    // actions
    // {
    //     area(Navigation)
    //     {
    //         group(MyButton)
    //         {
    //             action(newAction)
    //             {
    //                 Caption = 'My New Action';
    //                 trigger OnAction()
    //                 var
    //                     Testfile: File;
    //                     varName: Text;
    //                 begin
    //                     Testfile.Open('C:\Users\Govinda\Downloads\Untitled.png');
    //                     // TestFile.Open('C:\Users\Govinda\Downloads\Untitled');
    //                     varName := TestFile.Name;
    //                     // Testfile.Read();
    //                     Message('The name of the file is: %1', varName);
    //                 end;
    //             }

    //         }
    //     }
    // }



}
