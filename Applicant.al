table 50113 MemberApplicant
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;MemberNo; Code[100])
        {
            DataClassification = ToBeClassified;
            
        }
          field(2;MemberName; Text[100])
        {
            DataClassification = ToBeClassified;
            
        }
          field(3;IdNo; Code[100])
        {
            DataClassification = ToBeClassified;
            
        }
            field(4;Gender; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Male,Female;
            
        }
            field(5;Profile; Blob)
        {
            DataClassification = ToBeClassified;
            Subtype = Bitmap;
            
        }
            field(6;Signature; Blob)
        {
            DataClassification = ToBeClassified;
            Subtype = Bitmap;
            
        }
            field(7;FrontId; Blob)
        {
            DataClassification = ToBeClassified;
            Subtype = Bitmap;
            
        }
            field(8;BackId; Blob)
        {
            DataClassification = ToBeClassified;
            Subtype = Bitmap;
            
        }
            field(9;PhoneNo; Integer)
        {
            DataClassification = ToBeClassified;
            
        }

            field(10;Email; Code[100])
        {
            DataClassification = ToBeClassified;
            
        }






    }
    
    keys
    {
        key(PrimaryKey; MemberNo)
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