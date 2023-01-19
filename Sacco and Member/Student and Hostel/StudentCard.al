page 50106 StudentCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentProfile;

    layout
    {
        area(Content)
        {
            group(StudentDetail)
            {
                field(StudentNo; Rec.StudentNo)
                {
                    ApplicationArea = All;

                }
                field(FirstName; Rec.FirstName)
                {

                }
                field(LastName; Rec.LastName)
                {

                }
                field(FullName; Rec.FullName)
                {

                }
                field(isFemale; Rec.isFemale)
                {

                }
                field(isMale; Rec.isMale)
                {

                }
                field(Gender; Rec.Gender)
                {


                }
                field(DOB; Rec.DOB)
                {


                }
                field(Age; Rec.Age)
                {

                }
                field(StudentImage; Rec.StudentImage)
                {

                }


            }
            group(HostelDetail)
            {
                field(Hostel; Rec.Hostel)
                {

                }
                field(HostelName; Rec.HostelName)
                {

                }

            }

            group(AuditTrail)
            {
                field(CreatedBy; Rec.CreatedBy)
                {

                }
                field(CreatedAt; Rec.CreatedAt)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Submit)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;


                trigger OnAction()
                begin
                    Message('sent successfuly');
                    CurrPage.Close();
                end;

            }

        }

    }

    var
        myInt: Integer;
        isMale1: boolean;
        isFemale1: Boolean;

    trigger OnOpenPage()
    begin
        isFemale1 := false;
        isMale1 := false;

    end;





}