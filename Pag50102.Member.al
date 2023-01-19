page 50102 Member
{
    Caption = 'Member';
    PageType = Card;
    SourceTable = MemberApplicant;
    
    layout
    {
        area(content)
        {
            group(MemberDetails)
            {
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age field.';
                }
                field(DOB; Rec.DOB)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the DOB field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field(MemberName; Rec.MemberName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the MemberName field.';
                }
                field(MemberNo; Rec.MemberNo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the MemberNo field.';
                }
                field(PhoneNo; Rec.PhoneNo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PhoneNo field.';
                }
                field("Profile"; Rec."Profile")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Profile field.';
                }
                field(IdNo; Rec.IdNo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the IdNo field.';
                }
                field(ApprovalStatus; Rec.ApprovalStatus)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ApprovalStatus field.';
                }
            }
            group(SignatureDetails)
            {
                field(Signature; Rec.Signature)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Signature field.';
                }
            }
            group(IdDetails)
            {
                field(BackId; Rec.BackId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BackId field.';
                }
                field(FrontId; Rec.FrontId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FrontId field.';
                }
            }
        }

      
    }
     actions
    {
        area(Processing)
        {
            action(SendForApproval)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;


                trigger OnAction()
                begin
                    if Confirm('Sent For approval') then begin
                    
                    end;
                end;
            }
            action(Approved)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
}
