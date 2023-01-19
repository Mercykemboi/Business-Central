page 50110 NoSeriesCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MyNoSeries; 

    
    layout
    {
        area(Content)
        {
            group(Series)
            {
                field(Id; Rec.Id)
                {
                    ApplicationArea = All;
                    
                }
                   field(StudentNo; Rec.StudentNo)
                {
                    ApplicationArea = All;
                    
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