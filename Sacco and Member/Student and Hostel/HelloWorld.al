// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50101 CustomerList2Ext extends "customer list"
{
    trigger OnOpenPage();
    begin
        Message('App published: Hello world');
    end;
}
report 50107 StudentReport
{
    DefaultLayout = RDLC;
    RDLCLayout = 'MyReport.rdl';
    // = 'SReport.docx';
    dataset
    {
        dataitem(StudentProfile; StudentProfile)
        {
             column(StudentNo; StudentNo)
            {

            }
            column(FirstName; FirstName)
            {

            }
             column(LastName; LastName)
            {

            }
             column(FullName; FullName)
            {

            }
             column(Gender; Gender)
            {

            }
             column(DOB; DOB)
            {

            }
             column(Age; Age)
            {

            }
             column(StudentImage; StudentImage)
            {

            }
             column(CreatedAt; CreatedAt)
            {

            }
             column(CreatedBy; CreatedBy)
            {

            }
             column(Hostel; Hostel)
            {

            }
             column(HostelName; HostelName)
            {

            }
        }
    } 
}