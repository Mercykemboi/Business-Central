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
            group(AuditTrail)
            {

                field(CreatedAt; Rec.CreatedAt)
                {

                }
                field(CreatedBy; Rec.CreatedBy)
                {

                }
            }

            group(AccountDetails){

                field(AccountNo;Rec.AccountNo){

                }
                field(AccountName;Rec.AccountName){

                }
                field(Amount;Rec.Amount){
                    
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
                Visible = send;


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
                Visible = Approve;

                trigger OnAction()
                begin
                    //if Rec.CreatedAt := 
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
                Visible = reject;


                trigger OnAction()
                begin
                    if Confirm('Reject') then begin
                        Rec.ApprovalStatus := rec.ApprovalStatus::Rejected;
                        Rec.Modify();
                        Message('Sent Success')
                    end;
                end;
            }
            action(OpenAccount)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Visible = open;


                trigger OnAction()
                begin
                    if Confirm('Do You want to open a member account') then begin
                        vendor.Init();
                        vendor."No." := Rec.AccountNo;
                        vendor.Name := Rec.MemberName;
                        vendor."Balance (LCY)" := Rec.Amount;
                        vendor.Balance := Rec.Amount;
                        vendor."Search Name" := Rec.MemberName;
                        vendor."Our Account No." := Rec.AccountNo;
                        vendor.SaccoAccount := vendor.SaccoAccount::A;
                    end;
                    if Confirm('Do you want to open an Account') then begin
                        customer.Init();
                        customer."No." := Rec.MemberNo;
                        customer.Name := Rec.MemberName;
                        customer.SaccoType := customer.SaccoType::SaccoA;
                        customer.Insert();
                    end;
                end;
            }
        }

    }

    var
        myInt: Integer;
        Approve: Boolean;
        pending: Boolean;
        reject: Boolean;
        open: Boolean;

        send: Boolean;

        customer: Record Customer;

        vendor: Record Vendor;


    local procedure Visibility()
    begin
        Approve := false;
        pending := false;
        reject := false;
        send := false;
        open := false;


        if Rec.ApprovalStatus = Rec.ApprovalStatus::New then begin
            send := true;
        end;

        if Rec.ApprovalStatus = Rec.ApprovalStatus::Pending then begin
            Approve := true;
            reject := true;
        end;
        if Rec.ApprovalStatus = Rec.ApprovalStatus::Approved then begin
            open := true;
        end;
    end;

    trigger OnOpenPage()
    begin
        Visibility();

    end;




}