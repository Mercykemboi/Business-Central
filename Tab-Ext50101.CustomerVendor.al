tableextension 50101 CustomerVendor extends Vendor
{
    fields
    {
        field(50100; "SaccoAccount"; Option)
        {
            //Caption = '';
            DataClassification = ToBeClassified;
            OptionMembers = ,A,B,C;
        }
    }
}
