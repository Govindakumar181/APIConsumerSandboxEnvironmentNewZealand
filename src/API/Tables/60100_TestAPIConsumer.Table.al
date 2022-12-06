table 60100 APIConsumer
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }
        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Address; Text[150])
        {
            DataClassification = ToBeClassified;
        }
        field(4; WebID; Integer)
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
















table 60120 TESTAPITABLE
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }
        field(2; AccessToken; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; ExpiresIn; Text[20])
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


