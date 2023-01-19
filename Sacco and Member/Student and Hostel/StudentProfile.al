table 50104 StudentProfile
{
    DataClassification = ToBeClassified;


    fields
    {
        field(1; StudentNo; Code[100])
        {
            DataClassification = ToBeClassified;
            //AutoIncrement = true;

        }
        field(2; FirstName; Text[100])
        {

        }
        field(3; LastName; Text[100])
        {
            trigger OnValidate()
            begin
                FullName := FirstName + '' + LastName;
            end;
        }
        field(4; FullName; Text[100])
        {

        }
        field(5; Gender; Option)
        {
            OptionMembers = Male,Female;
            trigger OnValidate()
            begin
                if Gender = Gender::Female then begin
                    isFemale1 := true;
                    isMale1 := false;
                end;
                if Gender = Gender::Male then begin
                    isMale1 := true;
                    isFemale1 := false;
                end;
            end;
        }
        field(6; Hostel; Integer)
        {
            TableRelation = Hostel.Id;
            trigger OnValidate()
            begin
                Hostel1.Reset();
                Hostel1.SetRange(Id, Hostel);
                if Hostel1.FindFirst() then begin
                    HostelName := Hostel1.Name;
                end;

            end;

        }
        field(7; HostelName; text[100])

        {

        }
        field(8; DOB; Date)
        {
            trigger OnValidate()
            begin
                Age := Date2DMY(Today, 3) - Date2DMY(DOB, 3);
                if Date2DMY(Today, 3) - Date2DMY(DOB, 3) < 18 then begin
                    Error('Invalid dob');
                end;

            end;
        }
        field(9; Age; Integer)
        {

        }
        field(10; CreatedBy; Text[100])
        {

        }
        field(11; CreatedAt; Date)
        {

        }
        field(12; isFemale; Boolean)
        {

        }
        field(13; isMale; Boolean)
        {

        }
        field(14; StudentImage; Blob)
        {
            Subtype = Bitmap;
        }

    }
    keys
    {
        key(PRIMARYKEY; StudentNo)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        Hostel1: Record Hostel;
        isMale1: Boolean;
        isFemale1: Boolean;

        NoSeriesManagement: Codeunit NoSeriesManagement;
        NoSeries: Record "No. Series";
        MySeries: Record MyNoSeries;

    trigger OnInsert()
    begin
        CreatedAt := Today;
        CreatedBy := UserId;
        MySeries.Get();
        MySeries.TestField(StudentNo);
        StudentNo := NoSeriesManagement.GetNextNo(MySeries.StudentNo, Today, true);

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