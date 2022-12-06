page 60102 "Student Page"
{
    ApplicationArea = All;
    Caption = 'Student Page';
    PageType = List;
    SourceTable = Students;
    UsageCategory = Lists;
    CardPageId = "Student Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    Style = Ambiguous;
                    StyleExpr = StyleName;
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    Style = Unfavorable;
                    ApplicationArea = All;
                }
                field(Website; Rec.Website)
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    Style = Favorable;
                    ApplicationArea = All;
                }
                field(Latitude; Rec.Latitude)
                {
                    ApplicationArea = All;
                }
                field(Longitude; Rec.Longitude)
                {
                    Style = StrongAccent;
                    ApplicationArea = All;
                }

                field(Longitude2; Rec.Longitude)
                {
                    ApplicationArea = All;
                }
                field(Longitude1; Rec.Longitude)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                Caption = 'Get API records';

                trigger OnAction()
                var
                    response: Text;
                    httpClients: HttpClient;
                    httpResponse: HttpResponseMessage;
                    getAPIResponse: Codeunit GetResponseFromAPI;
                begin
                    if (httpClients.Get('https://jsonplaceholder.typicode.com/users', httpResponse)) then begin
                        httpResponse.Content.ReadAs(response);
                        getAPIResponse.GetResultfromResponseStudentData(response);
                        //Message(response);
                    end;
                    // if (httpClients.Get('http://localhost:7248/Development/api/KSP/apiGroup9/v1.0/consumer/', httpResponse)) then begin
                    //     httpResponse.Content.ReadAs(response);
                    //     //getAPIResponse.ReadResultfromResponse(response);
                    //     Message(response);
                    // end;
                end;
            }

        }

    }

    var
        StyleName: Boolean;


    trigger OnOpenPage()
    begin
        StyleName := false;
    end;

    procedure Emphasize() ReturnValue: Boolean;
    begin
        StyleName := true;
    end;

}
