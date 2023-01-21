table 50113 MemberApplicant
{
    DataClassification = ToBeClassified;


    fields
    {
        field(1; MemberNo; Code[100])
        {
            DataClassification = ToBeClassified;

        }
        field(2; MemberName; Text[100])
        {
            NotBlank = true;

        }
        field(3; IdNo; Code[100])
        {
            NotBlank = true;

        }
        field(4; Gender; Option)
        {
            OptionMembers = Male,Female;
            NotBlank = true;

        }

        field(5; Profile; Blob)
        {

            Subtype = Bitmap;

        }
        field(6; Signature; Blob)
        {

            Subtype = Bitmap;

        }
        field(7; FrontId; Blob)
        {

            Subtype = Bitmap;

        }
        field(8; BackId; Blob)
        {

            Subtype = Bitmap;

        }
        field(9; PhoneNo; Integer)
        {
            // trigger OnValidate()
            // begin
            //     if StrLen((Format(PhoneNo))) <12  an  StrLen((Format(PhoneNo))) > 13 then 
            // end;

        }

        field(10; Email; Code[100])
        {

            NotBlank = true;

        }
        field(11; DOB; Date)
        {
            trigger OnValidate()
            begin
                Age := Date2DMY(Today, 3) - Date2DMY(DOB, 3);
                if Date2DMY(Today, 3) - Date2DMY(DOB, 3) < 18 then begin
                    Error('Invalid dob');
                end;
            end;
        }
        field(12; Age; Integer)
        {

        }
        field(13; ApprovalStatus; Option)
        {

            OptionMembers = New,Pending,Approved,Rejected;
        }

        field(14; CreatedAt; Date)
        {

        }
        field(15; CreatedBy; Text[100])
        {

        }
        field(16; AccountNo; Code[100])
        {

        }
        field(17; AccountName; Text[100])
        {

        }
        field(18; Amount; Decimal)
        {

        }

    }

    keys
    {
        key(PrimaryKey; MemberNo)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        Member: Record MemberNoSeries;
        NoSeriesManagement: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        Member.Get();
        Member.TestField(MemberNos);
        Member.TestField(Account);
        MemberNo := NoSeriesManagement.GetNextNo(Member.MemberNos, Today, true);
        AccountNo := NoSeriesManagement.GetNextNo(Member.Account, Today, true);
        CreatedAt := Today;
        CreatedBy := UserId;

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