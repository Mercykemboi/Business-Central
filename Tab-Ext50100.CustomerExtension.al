tableextension 50100 CustomerExtension extends Customer
{
    fields
    {
        field(50100; SaccoType; Option)
        {
            OptionMembers = SaccoA,SaccoB,SaccoC;
            DataClassification = ToBeClassified;
        }
    }
}
