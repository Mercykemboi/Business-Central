table 50102 Hostel
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = ToBeClassified;
            //AutoIncrement = true;

        }
        field(2; Name; text[100])
        {

        }
        field(3; Units; Integer)
        {


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