table 50112 SaccoTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; SaccoId; Code[100])
        {
            DataClassification = ToBeClassified;


        }
        field(2; SaccoName; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; AccountNo; Code[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Bank Account";

        }
        field(4; AccountName; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(5; ApplicantFee; Decimal)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PrimaryKey; SaccoId)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}