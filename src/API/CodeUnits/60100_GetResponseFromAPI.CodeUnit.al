codeunit 60100 GetResponseFromAPI
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    procedure GetResultfromResponseStudentData(response: Text)

    var
        json_array: JsonArray;
        json_object: JsonObject;
        json_value: JsonValue;
        i: Integer;
        recStudent: Record Students;
        studID: Integer;
        json_token: JsonToken;
        valuejToken: JsonToken;
    begin
        recStudent.Reset();
        if (recStudent.FindLast()) then
            studID := recStudent.ID + 1
        else
            studID := 1;


        if (json_token.ReadFrom(response)) then begin

            if (json_token.IsArray) then begin

                json_array := json_token.AsArray();

                for i := 0 to json_array.Count - 1 do begin

                    json_array.Get(i, json_token);

                    if (json_token.IsObject) then begin
                        json_object := json_token.AsObject();

                        recStudent.Reset();
                        recStudent.Init();
                        recStudent.ID := studID;

                        // if json_object.Get('name', valuejToken) then begin
                        //     if valuejToken.IsValue then begin
                        //         Message(valuejToken.AsValue().AsText());
                        //     end;
                        // end;
                        // if json_object.Get('name', valuejToken) then begin
                        //     if valuejToken.IsValue then begin
                        //         recStudent.WebID := valuejToken.AsValue().AsInteger();
                        //         // Message(valuejToken.AsValue().AsText());
                        //     end;
                        // end;

                        // if json_object.Get('id', valuejToken) then begin
                        //     if valuejToken.IsValue then begin
                        //         recStudent.WebID := valuejToken.AsValue().AsInteger();
                        //         // Message(valuejToken.AsValue().AsText());
                        //     end;
                        // end;



                        if GetResultJsonValue(json_object, 'name', json_value) then begin
                            recStudent.Name := json_value.AsText();
                        end;
                        if GetResultJsonValue(json_object, 'email', json_value) then begin
                            recStudent.Email := json_value.AsText();
                        end;
                        if GetResultJsonValue(json_object, 'phone', json_value) then begin
                            recStudent."Phone No." := json_value.AsText();
                        end;
                        if GetResultJsonValue(json_object, 'website', json_value) then begin
                            recStudent.Website := json_value.AsText();
                        end;

                        if json_object.Get('address', json_token) then begin
                            if json_token.IsObject then begin
                                json_object := json_token.AsObject();

                                if GetResultJsonValue(json_object, 'city', json_value) then begin
                                    recStudent.City := json_value.AsText();
                                end;

                                if json_object.Get('geo', json_token) then begin
                                    if json_token.IsObject then begin
                                        json_object := json_token.AsObject();

                                        if GetResultJsonValue(json_object, 'lat', json_value) then begin
                                            recStudent.Latitude := json_value.AsDecimal();
                                        end;

                                        if GetResultJsonValue(json_object, 'lng', json_value) then begin
                                            recStudent.Longitude := json_value.AsDecimal();
                                        end;

                                    end;
                                end;

                            end;
                        end;
                        recStudent.Insert();
                        studID += 1;
                    end;
                end;
            end;
        end;
    end;


    local procedure GetResultJsonValue(jObj: JsonObject; keyName: Text; var jValue: JsonValue): Boolean
    var
        json_Token: JsonToken;
    begin
        if not jObj.Get(keyName, json_Token) then exit;
        jValue := json_Token.AsValue();
        exit(true);
    end;




    procedure GetResultfromResponseConsumerData(response: Text)

    var
        json_array: JsonArray;
        json_object: JsonObject;
        json_value: JsonValue;
        i: Integer;
        recConsumer: Record APIConsumer;
        consumerID: Integer;
        json_token: JsonToken;
        valuejToken: JsonToken;
    begin

        recConsumer.Reset();

        if (recConsumer.FindLast()) then
            consumerID := recConsumer.ID + 1
        else
            consumerID := 1;


        if json_token.ReadFrom(response) then begin

            if (json_token.IsArray()) then begin
                json_array := json_token.AsArray();

                for i := 0 to json_array.Count() - 1 do begin

                    json_array.Get(i, json_token);

                    if (json_token.IsObject()) then begin
                        json_object := json_token.AsObject();

                        recConsumer.Reset();
                        recConsumer.Init();
                        recConsumer.ID := consumerID;

                        if (json_object.Get('id', valuejToken)) then begin
                            if (valuejToken.IsValue()) then begin
                                // Message(valuejToken.AsValue().AsText());
                                recConsumer.WebID := valuejToken.AsValue().AsInteger();
                            end;
                        end;

                        if GetResultJsonValue(json_object, 'name', json_value) then begin
                            //Message(json_value.AsText());
                            recConsumer.Name := json_value.AsText();
                        end;
                        if GetResultJsonValue(json_object, 'username', json_value) then begin
                            recConsumer.Address := json_value.AsText();
                        end;

                        if (json_object.Get('address', json_token)) then begin
                            if (json_token.IsObject()) then begin
                                json_object := json_token.AsObject();

                                if GetResultJsonValue(json_object, 'city', json_value) then begin
                                    recConsumer.Address := json_value.AsText();
                                end;

                            end;
                        end;

                        recConsumer.Insert();
                        consumerID += 1;

                    end;
                end;
            end;
        end;
    end;

















    procedure GetAPIToken(response: Text)

    var
        json_array: JsonArray;
        json_object: JsonObject;
        json_value: JsonValue;
        i: Integer;
        recConsumer: Record TESTAPITABLE;
        consumerID: Integer;
        json_token: JsonToken;
        valuejToken: JsonToken;
    begin

        recConsumer.Reset();

        if (recConsumer.FindLast()) then
            consumerID := recConsumer.ID + 1
        else
            consumerID := 1;


        if json_token.ReadFrom(response) then begin
            if (json_token.IsObject()) then begin

                json_object := json_token.AsObject();

                recConsumer.Reset();
                recConsumer.Init();
                recConsumer.ID := consumerID;

                if GetResultJsonValue(json_object, 'access_token', json_value) then begin
                    recConsumer.AccessToken := json_value.AsText();
                end;

                if GetResultJsonValue(json_object, 'expires_in', json_value) then begin
                    recConsumer.ExpiresIn := json_value.AsText();
                end;

                recConsumer.Insert();
                consumerID += 1;

            end;
        end;
    end;

}