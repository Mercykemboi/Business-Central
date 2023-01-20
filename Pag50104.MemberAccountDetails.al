page 50104 "Member Account Details"
{
    Caption = 'Member Account Details';
    PageType = List;
    SourceTable = Vendor;
    UsageCategory = Administration;
    SourceTableView = where(SaccoAccount=const(A));

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Balance; Rec.Balance)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Balance field.';
                }
                field("Balance (LCY)"; Rec."Balance (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total value of your completed purchases from the vendor in the current fiscal year. It is calculated from amounts excluding VAT on all completed purchase invoices and credit memos.';
                }
                field("Balance Due"; Rec."Balance Due")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Balance Due field.';
                }
                field("Balance Due (LCY)"; Rec."Balance Due (LCY)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the total value of your unpaid purchases from the vendor in the current fiscal year. It is calculated from amounts excluding VAT on all open purchase invoices and credit memos.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor''s name. You can enter a maximum of 30 characters, both numbers and letters.';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
                }
                field(SaccoAccount; Rec.SaccoAccount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SaccoAccount field.';
                }
                field("Vendor Posting Group"; Rec."Vendor Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the vendor''s market type to link business transactions made for the vendor with the appropriate account in the general ledger.';
                }
            }
        }
    }
}
