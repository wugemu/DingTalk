.class public Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "AddMembersActivity.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private g:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

.field private h:Ldq;

.field private i:Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->j:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->g:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->b:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 205
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "choose_user_identities"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 208
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 209
    const-string/jumbo v2, "activity_identify"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->finish()V

    .line 212
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->i:Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->d:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->g:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->b()V

    .line 201
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    sget v3, Lezg$j;->activity_add_member:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "isReturnWithFinish"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->d:Z

    .line 111
    const-string/jumbo v3, "activity_identify"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->c:Ljava/lang/String;

    .line 112
    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->e:Ljava/lang/String;

    .line 113
    const-string/jumbo v3, "seleced_members"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 114
    .local v2, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 115
    iput-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a:Ljava/util/List;

    .line 119
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a:Ljava/util/List;

    invoke-static {v3}, Lfxz;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->b:Ljava/util/List;

    .line 121
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    :goto_1
    new-instance v3, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;

    invoke-direct {v3}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->i:Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;

    .line 128
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->i:Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->b:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->a(Ljava/util/List;)V

    .line 129
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->i:Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)V

    .line 1156
    iput-object v4, v3, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->a:Lfxw;

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 173
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v3, Lezg$h;->ll_add_member_fragment_container:I

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->i:Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 174
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1215
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1216
    const-string/jumbo v4, "com.workapp.choose.people.from.contact"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1217
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->h:Ldq;

    .line 1218
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->h:Ldq;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 177
    return-void

    .line 117
    .end local v0    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a:Ljava/util/List;

    goto :goto_0

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v4, Lezg$l;->select_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 181
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->h:Ldq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->j:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->h:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->b()V

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
