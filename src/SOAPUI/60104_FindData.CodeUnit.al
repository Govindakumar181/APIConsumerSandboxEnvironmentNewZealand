codeunit 60104 FindRecordsCodeUnit
{

    procedure FindCustomer(var CustNo: Code[20]) ReturnValue: Text[100]
    var
        customer: Record Customer;
    begin
        if customer.Get(CustNo) then begin
            ReturnValue := StrSubstNo('The customer name of %1 is %2', CustNo, customer.Name);
        end
        else
            ReturnValue := StrSubstNo('The %1 do not exist', CustNo);
    end;
}