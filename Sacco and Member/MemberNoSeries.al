table 50118 MemberNoSeries
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;MyId; Code[100])
        {
            DataClassification = ToBeClassified;
            
        }
          field(2;MemberNos; Code[100])
        {
           TableRelation = "No. Series";
            
        }
    }
    
    keys
    {
        key(PK; MyId)
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}