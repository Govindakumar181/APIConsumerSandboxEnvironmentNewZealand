page 60100 ConsumerPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = APIConsumer;
    Caption = 'Consumer Page';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                }
                field(WebID; Rec.WebID)
                {
                    ApplicationArea = All;
                    Caption = 'Web ID';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(GetAPIData)
            {
                Caption = 'Get Data';
                ApplicationArea = All;

                trigger OnAction()
                var
                    http_Cleint: HttpClient;
                    http_ResponseMsg: HttpResponseMessage;
                    response: Text;
                    getValuesFromAPI: Codeunit GetResponseFromAPI;
                begin
                    if (http_Cleint.Get('https://jsonplaceholder.typicode.com/users', http_ResponseMsg)) then begin
                        http_ResponseMsg.Content.ReadAs(response);
                        // getValuesFromAPI.GetResultfromResponseConsumerData(response);
                        Message(response);
                    end;

                end;

            }

        }
    }
}








page 60120 TESTAPI
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = TESTAPITABLE;
    Caption = 'TEST API PAGE';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                }
                field(AccessToken; Rec.AccessToken)
                {
                    ApplicationArea = All;
                    Caption = 'Access Token';
                }
                field(ExpiresIn; Rec.ExpiresIn)
                {
                    ApplicationArea = All;
                    Caption = 'Expires In';
                }
            }


        }
    }


    actions
    {
        area(Processing)
        {
            action(GetAPIData)
            {
                Caption = 'Get Data';
                ApplicationArea = All;

                trigger OnAction()

                var
                    http_Cleint: HttpClient;
                    http_ResponseMsg: HttpResponseMessage;
                    response: Text;
                    getValuesFromAPI: Codeunit GetResponseFromAPI;
                    basicAuth: HttpHeaders;

                begin

                    basicAuth := http_Cleint.DefaultRequestHeaders;

                    basicAuth.Add('Username', 'Azs2KejU1ARvIL5JdJsARbV2gDrWmpOB');
                    basicAuth.Add('Password', 'hipGvFJbOxri330c');
                    basicAuth.Add('Authorization', 'Basic QXpzMktlalUxQVJ2SUw1SmRKc0FSYlYyZ0RyV21wT0I6aGlwR3ZGSmJPeHJpMzMwYw==');

                    // if (http_Cleint.Get('https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials', http_ResponseMsg)) then begin
                    //     http_ResponseMsg.Content.ReadAs(response);
                    //     Message(response);
                    // end;

                    if (http_Cleint.Get('https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials', http_ResponseMsg)) then begin
                        http_ResponseMsg.Content.ReadAs(response);
                        //Message(response);
                        getValuesFromAPI.GetAPIToken(response);
                    end;

                end;
            }
        }
    }
}

