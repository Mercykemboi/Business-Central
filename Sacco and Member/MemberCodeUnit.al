codeunit 50125 MemberCodeUnit
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

        GenJournalLine: Record "Gen. Journal Line";

        LineNo: Integer;

    procedure ClearJournal(JournalTemplate: Code[100]; JournalBatching: code[100])
    begin
        GenJournalLine.Reset();
        GenJournalLine.SetRange("Journal Template Name", JournalTemplate);
        GenJournalLine.SetRange("Journal Batch Name", JournalBatching);
        GenJournalLine.DeleteAll();
    end;

    procedure CreateJournal(JournalTemplate: Code[10]; JournalBatching: code[10]; ExternalDocNo: Code[100]; PostingDate: Date; Description: Text[100]; DocNo: Code[100]; AccountType: Option; AccountNo: Code[100]; Amount: Decimal)
    begin

        GenJournalLine.Init();
        GenJournalLine."Journal Template Name" := JournalTemplate;
        GenJournalLine."Journal Batch Name" := JournalBatching;
        GenJournalLine."External Document No." := ExternalDocNo;
        GenJournalLine."Posting Date" := PostingDate;
        GenJournalLine.Description := Description;
        GenJournalLine."Document No." := DocNo;
        GenJournalLine."Account Type" := AccountType;
        GenJournalLine."Account No." := AccountNo;
        GenJournalLine.Amount := Amount;
        GenJournalLine."Line No." := GetLastLineNo(JournalTemplate, JournalBatching) + 10000;
        if GenJournalLine.Amount <> 0 then begin
            GenJournalLine.Insert();
            Message('hello');
        end;
    end;

    procedure PostJournal(JournalTemplate: Code[10]; JournalBatching: code[10])
    begin
        GenJournalLine.Reset();
        GenJournalLine.SetRange("Journal Template Name", JournalTemplate);
        GenJournalLine.SetRange("Journal Batch Name", JournalBatching);
        if GenJournalLine.FindSet() then begin
            Message('dfdfdfd');
            Codeunit.Run(Codeunit::"Gen. Jnl.-Post", GenJournalLine);
            Message('eeee');
        end;

    end;

    local procedure GetLastLineNo(JournalTemplate: Code[10]; JournalBatching: code[10]) LineNo: Integer
    begin
        GenJournalLine.Reset();
        GenJournalLine.SetRange("Journal Template Name", JournalTemplate);
        GenJournalLine.SetRange("Journal Batch Name", JournalBatching);
        if GenJournalLine.FindLast() then begin
            LineNo := GenJournalLine."Line No." + 10000;
        end;
        exit(LineNo);
    end;
}