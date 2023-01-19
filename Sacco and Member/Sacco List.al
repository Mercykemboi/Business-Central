page 50114 SaccoList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = SaccoTable;

    layout
    {
        area(Content)
        {
            repeater(SaccoList)
            {
                field(SaccoId; Rec.SaccoId)
                {
                    ApplicationArea = All;

                }
                field(SaccoName; Rec.SaccoName)
                {
                    ApplicationArea = All;

                }
                field(AccountNo; Rec.AccountNo)
                {
                    ApplicationArea = All;

                }
                field(AccountName; Rec.AccountName)
                {
                    ApplicationArea = All;

                }
                field(ApplicantFee; Rec.ApplicantFee)
                {
                    ApplicationArea = All;

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