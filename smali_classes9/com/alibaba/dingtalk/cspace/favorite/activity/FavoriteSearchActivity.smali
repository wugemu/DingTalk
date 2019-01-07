.class public Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;
.super Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;
.source "FavoriteSearchActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;
.implements Lgbz;
.implements Lgca;


# instance fields
.field private final h:Ljava/lang/String;

.field private i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

.field private j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;-><init>()V

    .line 38
    const-string/jumbo v0, "FavoriteSearchActivity"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;)Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;)Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    .line 1155
    iget-object v0, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcw;

    .line 1157
    const/4 v3, 0x0

    .line 2056
    iput-boolean v3, v0, Lgcw;->e:Z

    goto :goto_0

    .line 1159
    :cond_0
    iget-object v0, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->l:Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->l:Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/adapter/SearchGridAdapter;->notifyDataSetChanged()V

    .line 127
    :cond_1
    return-void
.end method

.method protected final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 3
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 201
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "favorite_action_send_2_im"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "file_space"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 204
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 205
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->finish()V

    .line 207
    return-void
.end method

.method public final a(Lgcw;)V
    .locals 1
    .param p1, "searchType"    # Lgcw;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->setSearchTypeItem(Lgcw;)V

    .line 164
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    .line 2213
    iput v3, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->n:I

    .line 2246
    iput-object p1, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->o:Ljava/lang/String;

    .line 2247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2248
    const/4 v0, 0x0

    .line 2215
    :goto_0
    iget v2, v1, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->n:I

    invoke-virtual {v1, v0, p2, v2}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Ljava/util/List;Ljava/lang/String;I)V

    .line 152
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a(Z)V

    .line 157
    :goto_1
    return-void

    .line 2251
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2253
    const-string/jumbo v2, "file"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2254
    const-string/jumbo v2, "space"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2260
    :cond_2
    :goto_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2255
    :cond_3
    const-string/jumbo v2, "link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2256
    const-string/jumbo v2, "oa"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2257
    :cond_4
    const-string/jumbo v2, "video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2258
    const-string/jumbo v2, "video2"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a(Z)V

    goto :goto_1
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
    .line 189
    .local p1, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a(Ljava/util/List;)V

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v1, "sendMessageObjectArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "favorite_action_send_2_im"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "key_send_custom_msg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 194
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->finish()V

    .line 196
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "hasType"    # Z

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->a()V

    .line 132
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a()V

    .line 135
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 139
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->getSearchTypeItem()Lgcw;

    move-result-object v0

    .line 141
    .local v0, "checkTypeItem":Lgcw;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->a(Lgcw;)V

    .line 143
    .end local v0    # "checkTypeItem":Lgcw;
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    .line 3210
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 178
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 182
    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    .line 4201
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 4202
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 185
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iput-object p0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->e:Landroid/app/Activity;

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->e()V

    .line 50
    sget v3, Lfzs$g;->activity_space_blank:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->setContentView(I)V

    .line 52
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 55
    sget v3, Lfzs$f;->fragment_container:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->f:Landroid/view/View;

    .line 57
    new-instance v3, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-direct {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;-><init>()V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "favorite_selection"

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->a:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string/jumbo v3, "space_id"

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 63
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v3, Lfzs$f;->fragment_container:I

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteSearchFragment;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 64
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1098
    new-instance v3, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->k:Landroid/content/BroadcastReceiver;

    .line 1109
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1110
    const-string/jumbo v4, "favorite_action_delete"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 68
    new-instance v3, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    .line 69
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 70
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    invoke-virtual {v3, p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->setListener(Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView$a;)V

    .line 72
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "keyword"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "keyword":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->i:Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->post(Ljava/lang/Runnable;)Z

    .line 94
    .end local v2    # "keyword":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 117
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->onDestroy()V

    .line 118
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 119
    return-void
.end method
