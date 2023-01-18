page 50105 StudentList
{
    //Caption = 'PageName';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = StudentProfile;
    CardPageId = StudentCard;

    layout
    {
        area(Content)
        {
            repeater(Group)
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
                field(Gender; Rec.Gender)
                {

                }
                field(Hostel; Rec.Hostel)
                {

                }
                field(HostelName; Rec.HostelName)
                {

                }
                field(DOB; Rec.DOB)
                {

                }
                field(Age; Rec.Age)
                {

                }
                field(CreatedAt; Rec.CreatedAt)
                {

                }
                field(CreatedBy; Rec.CreatedBy)
                {

                }
                field(StudentImage; Rec.StudentImage)
                {

                }

            }
        }
        area(Factboxes)
        {


        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
