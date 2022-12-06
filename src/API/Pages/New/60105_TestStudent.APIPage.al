page 60105 StudentAPIPage
{
    APIGroup = 'apiGroup18';
    APIPublisher = 'Govinda';
    APIVersion = 'v1.0';
    Caption = 'StudentAPIPage';
    DelayedInsert = true;
    EntityName = 'consumer';
    EntitySetName = 'students';
    PageType = API;
    SourceTable = Students;
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                }
                field(Name; Rec.Name)
                {
                }
                field(PhoneNo; Rec."Phone No.")
                {
                }
                field(Website; Rec.Website)
                {
                }
                field(Email; Rec.Email)
                {
                }
                field(City; Rec.City)
                {
                }
                field(Latitude; Rec.Latitude)
                {
                }
                field(Longitude; Rec.Longitude)
                {
                }
                field(SystemId; Rec.SystemId)
                {

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
