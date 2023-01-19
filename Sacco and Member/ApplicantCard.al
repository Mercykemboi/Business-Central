page 50115 ApplicantCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = MemberApplicant;

    layout
    {
        area(Content)
        {
            group(MemberDetails)
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
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;

                }
                field(DOB; Rec.DOB)
                {
                    ApplicationArea = All;

                }
                field(Age; Rec.Age)
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

            }
            group(SignatureDetails)

            {
                field(Signature; Rec.Signature)
                {
                    ApplicationArea = All;

                }
            }

            group(IdDetails)
            {
                field(FrontId; Rec.FrontId)
                {
                    ApplicationArea = All;

                }
                field(BackId; Rec.BackId)
                {
                    ApplicationArea = All;

                }
                field(ApprovalStatus; Rec.ApprovalStatus)
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
            action(SendForApproval)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;


                trigger OnAction()
                begin
                    if Confirm('Sent For approval') then begin
                    Rec.ApprovalStatus := rec.ApprovalStatus::Pending;
                    Rec.Modify();
                    Message('Sent Success')
                    end;
                    CurrPage.Close();
                end;
            }
            action(Approval)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                  if Confirm('approved') then begin
                    Rec.ApprovalStatus := Rec.ApprovalStatus::Approved;
                    Rec.Modify();
                    Message('Success');
                  end;
                  CurrPage.Close();
                end;
            }
             action(Reject)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;


                trigger OnAction()
                begin
                    if Confirm('Reject') then begin
                    Rec.ApprovalStatus := rec.ApprovalStatus::Rejected;
                    Rec.Modify();
                    Message('Sent Success')
                    end;
                end;
            }
        }

    }

    var
        myInt: Integer;
        Approve : Boolean;
        pending :Boolean;



}