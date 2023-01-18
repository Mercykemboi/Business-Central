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