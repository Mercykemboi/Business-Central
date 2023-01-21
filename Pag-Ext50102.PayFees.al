pageextension 50102 PayFees extends "Vendor Card"
{


    layout
    {

        // addlast(General){
        //     field(){

        //     }
        // }   

    }
    actions
    {

        addlast(creation)
        {
            group(ActionGroup)
            {
                action(PayFee)
                {
                    Caption = 'PayFee';
                    Promoted = true;
                    Image = Payment;
                    PromotedCategory = Process;

                    trigger OnAction()
                    begin

                        sacco.Get();
                        if Confirm('Do you want to pay Applicant Fee') then begin
                            Message('cdccdcc');
                            MemberCodeUnit.ClearJournal('General', 'Cash');

                            MemberCodeUnit.CreateJournal('General', 'Cash', vend."No.", Today, vend.Name, vend."No.", GenJournalLine."Account Type"::Vendor, vend."No.", -sacco.ApplicantFee);
                            MemberCodeUnit.CreateJournal('General', 'Cash', vend."No.", Today, vend.Name, vend."No.", GenJournalLine."Account Type"::"Bank Account", sacco.AccountNo, sacco.ApplicantFee);

                            MemberCodeUnit.PostJournal('General', 'Cash');
                            Message('frtrtrtr');

                        end;
                        CurrPage.Close();
                    end;
                }
            }

        }
    }

    var
        myInt: Integer;
        sacco: Record SaccoTable;

        MemberCodeUnit: Codeunit MemberCodeUnit;

        GenJournalLine: Record "Gen. Journal Line";

        vend: Record Vendor;




}
