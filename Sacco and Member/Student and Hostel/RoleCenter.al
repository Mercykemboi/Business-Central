page 50111 StudentProfileRoleCenter
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
            action(ActionBarAction)
            {
                RunObject = Page StudentList;
                Caption = 'StudentList';
            }
        }
        area(Sections)
        {
            group(SectionsGroupName)
            {
                action(SectionsAction)
                {
                    RunObject = Page StudentList;
                    Caption = 'Student List1';
                }
            }
        }
        area(Embedding)
        {
            action(EmbeddingAction)
            {
                RunObject = Page StudentList;
                Caption = 'StudentList 3';
            }
        }
    }
}