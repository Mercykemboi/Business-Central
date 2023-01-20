page 50123 ApplicantRoleCenter
{
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {

        }
    }

    actions
    {
        area(Creation)
        {
          
            action(Cards)
            {
                RunObject = Page ApplicantCard;
                Caption = 'Applicant card';
            }
              action(Lists)
            {
                RunObject = Page ApplicantList;
                Caption = 'Applicant List';
            }
              action(List1)
            {
                RunObject = Page PendingList;
                Caption = 'Pending List';
            }
            action(ListApprove)
            {
                RunObject = Page ApprovalList;
                Caption = 'Approval List';
            }
        }
        // area(Sections)
        // {
        //     group(SectionsGroupName)
        //     {
        //         action(SectionsAction)
        //         {
        //             RunObject = Page ;
        //         }
        //     }
        // }
        area(Embedding)
        {
            action(EmbeddingAction)
            {
                RunObject = page SaccoList;
                Caption = 'Sacco';
            }

        }
    }
}