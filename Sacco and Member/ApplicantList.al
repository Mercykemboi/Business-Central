page 50117 ApplicantList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = MemberApplicant;
    CardPageId = ApplicantCard;

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
                field(AccountNo;Rec.AccountNo){

                }
                field(AccountName;Rec.AccountName){

                }
                field(Amount; Rec.Amount)
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