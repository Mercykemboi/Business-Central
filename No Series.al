table 50109 MyNoSeries
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; StudentNo; code[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";

        }
    }

    keys
    {
        key(PrimaryKey; Id)
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