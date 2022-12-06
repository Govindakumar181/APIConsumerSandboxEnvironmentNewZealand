table 60101 Students
{
    DataClassification = ToBeClassified;
    Caption = 'Students';

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }

        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Phone No."; Text[80])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }

        field(4; Email; Text[80])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }
        field(5; Website; Text[80])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }

        field(6; Latitude; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(7; Longitude; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; City; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(9; WebID; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }

}