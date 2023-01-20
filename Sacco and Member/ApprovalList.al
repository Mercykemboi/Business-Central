page 50121 ApprovalList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = MemberApplicant;
    CardPageId = ApplicantCard;
    SourceTableView = where(ApprovalStatus=filter(Approved));

    layout
    {
        area(Content)
        {
            repeater(ApplicantDetails)
            {
                field(MemberNo; Rec.MemberNo)
                {
                    ApplicationArea = All;

                }
                field(MemberName; Rec.MemberName)
                {
                    ApplicationArea = All;

                }
                field(IdNo; Rec.IdNo)
                {
                    ApplicationArea = All;

                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;

                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;

                }
                field(PhoneNo; Rec.PhoneNo)
                {
                    ApplicationArea = All;

                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;

                }
                field(Profile; Rec.Profile)
                {
                    ApplicationArea = All;

                }
                field(Signature; Rec.Signature)
                {
                    ApplicationArea = All;

                }
                field(CreatedAt;Rec.CreatedAt){

                }
                field(CreatedBy;Rec.CreatedBy){

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