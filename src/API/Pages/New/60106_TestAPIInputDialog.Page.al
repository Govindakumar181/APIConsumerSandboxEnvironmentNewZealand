page 60106 GetInput
{
    PageType = StandardDialog;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(values; values)
                {
                    ApplicationArea = All;
                    Caption = 'Enter the no. of records you want';

                }
            }
        }
    }

    var
        values: Integer;


    procedure ExecuteOKCode()
    var
        getData: Codeunit GetResponseFromAPI;
        http_Cleint: HttpClient;
        http_ResponseMsg: HttpResponseMessage;
        response: Text;
    begin
        if (http_Cleint.Get('https://jsonplaceholder.typicode.com/users', http_ResponseMsg)) then begin
            http_ResponseMsg.Content.ReadAs(response);
            Message(response);
            //getData.GetResultfromResponseConsumerData(response, values);
            Message('OK Pal');
        end
    end;

    procedure ExecuteCancelCode();
    begin
        Message('Cancel');
    end;
}