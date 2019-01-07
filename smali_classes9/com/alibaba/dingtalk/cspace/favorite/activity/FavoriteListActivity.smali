.class public Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;
.super Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;
.source "FavoriteListActivity.java"


# instance fields
.field private h:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;)Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->h:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 3
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 155
    if-eqz p1, :cond_0

    .line 156
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "file_space"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 159
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 160
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->setResult(ILandroid/content/Intent;)V

    .line 162
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->finish()V

    .line 163
    return-void
.end method

.method protected final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 141
    .local p1, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a(Ljava/util/List;)V

    .line 142
    if-eqz p1, :cond_0

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "sendMessageObjectArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "key_send_custom_msg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 147
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sendMessageObjectArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->finish()V

    .line 150
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iput-object p0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->e:Landroid/app/Activity;

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->e()V

    .line 47
    sget v2, Lfzs$g;->activity_space_blank:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->setContentView(I)V

    .line 49
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v3, Lfzs$h;->favorite_list_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    sget v2, Lfzs$f;->fragment_container:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->f:Landroid/view/View;

    .line 53
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-direct {v2}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;-><init>()V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->h:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "favorite_selection"

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->a:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->h:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 58
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v2, Lfzs$f;->fragment_container:I

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->h:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1066
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->i:Landroid/content/BroadcastReceiver;

    .line 1077
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1078
    const-string/jumbo v3, "favorite_action_delete"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1079
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1081
    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->j:Landroid/content/BroadcastReceiver;

    .line 1096
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1097
    const-string/jumbo v3, "favorite_action_send_2_im"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1098
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 111
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->d:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const/4 v1, 0x1

    sget v2, Lfzs$h;->search:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 113
    .local v0, "menuSearch":Landroid/view/MenuItem;
    sget v1, Lfzs$e;->ic_actbar_search:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 114
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 116
    .end local v0    # "menuSearch":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 103
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->onDestroy()V

    .line 104
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 105
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 106
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(I)V

    .line 107
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 123
    :pswitch_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/favorite/search.html"

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;)V

    .line 123
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
