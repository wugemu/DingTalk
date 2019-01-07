.class public Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;
.source "FriendActivity.java"


# instance fields
.field private final e:I

.field private f:Lcoi;

.field private g:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

.field private h:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->f:Lcoi;

    const-class v2, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->g:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    .line 2082
    invoke-virtual {v1, v2, v3, v4}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->h:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-nez v1, :cond_1

    .line 86
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->g()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->h:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_show_fragment_title"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    const-string/jumbo v1, "intent_key_contact_search_kind_flag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->h:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 93
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->f:Lcoi;

    const-class v2, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->h:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 3082
    invoke-virtual {v1, v2, v3, v4}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->h:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lezg$h;->view_search:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lezg$j;->activity_new_friends:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->hideToolbarDivide()V

    .line 69
    new-instance v0, Lcoi;

    sget v1, Lezg$h;->ll_fragment_container:I

    invoke-direct {v0, p0, v1}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->f:Lcoi;

    .line 70
    new-instance v0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->g:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->f:Lcoi;

    const-class v1, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->g:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    .line 1082
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->my_friends:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 76
    invoke-static {}, Lflr;->a()V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->a:Z

    if-nez v1, :cond_0

    .line 101
    sget v1, Lezg$l;->add_friend:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 102
    .local v0, "menuItemSent":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 103
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    .end local v0    # "menuItemSent":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 112
    :pswitch_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/add_friend"

    new-instance v2, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity$1;-><init>(Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;)V

    .line 113
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendActivity;->finish()V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
