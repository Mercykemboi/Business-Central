page 50119 MemberSeries
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MemberNoSeries;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(MyId; Rec.MyId)
                {
                    ApplicationArea = All;

                }
                field(MemberNos; Rec.MemberNos)
                {
                    ApplicationArea = All;

                }
                field(Account; Rec.Account)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}