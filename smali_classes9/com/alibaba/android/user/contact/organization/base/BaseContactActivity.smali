.class public abstract Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "BaseContactActivity.java"


# instance fields
.field protected a:Z

.field protected b:Landroid/widget/SearchView;

.field protected c:[Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

.field protected d:Landroid/os/Handler;

.field private e:Landroid/view/View;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lfit;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Runnable;

.field private h:Landroid/widget/SearchView$OnQueryTextListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->d:Landroid/os/Handler;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->f:Ljava/util/Set;

    .line 61
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$1;-><init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->g:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$2;-><init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->h:Landroid/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method private declared-synchronized b(Z)V
    .locals 3
    .param p1, "mode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfit;

    .line 161
    .local v0, "listener":Lfit;
    invoke-interface {v0, p1}, Lfit;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    .end local v0    # "listener":Lfit;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 163
    :cond_0
    monitor-exit p0

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)Landroid/widget/SearchView$OnQueryTextListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->h:Landroid/widget/SearchView$OnQueryTextListener;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 7
    .param p1, "c"    # Ljava/lang/Class;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 114
    if-nez p1, :cond_1

    move-object v0, v1

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->c:[Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v2, :cond_3

    .line 118
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->c:[Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 119
    .local v0, "control":Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "control":Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    :cond_3
    move-object v0, v1

    .line 124
    goto :goto_0
.end method

.method public final declared-synchronized a(Lfit;)V
    .locals 1
    .param p1, "listener"    # Lfit;

    .prologue
    .line 154
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 249
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isSearchModel"    # Z

    .prologue
    .line 167
    return-void
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public d()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->g()V

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->supportInvalidateOptionsMenu()V

    .line 107
    return-void
.end method

.method protected final g()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 129
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->e:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    if-nez v0, :cond_2

    .line 1227
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 133
    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a(Ljava/lang/String;)V

    .line 135
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a(Z)V

    .line 136
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b(Z)V

    .line 138
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    if-eqz v0, :cond_3

    .line 139
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$4;-><init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    if-eqz v2, :cond_4

    const/4 v1, 0x4

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 129
    goto :goto_0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    .line 260
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->g()V

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->supportInvalidateOptionsMenu()V

    .line 263
    return-void
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 266
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    .line 267
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->g()V

    .line 268
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->supportInvalidateOptionsMenu()V

    .line 270
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->g()V

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->supportInvalidateOptionsMenu()V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->h()V

    .line 179
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->e:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->e:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity$3;-><init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
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

    .line 209
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    if-eqz v1, :cond_2

    .line 210
    const/16 v1, 0x15

    const-string/jumbo v2, ""

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 211
    .local v0, "searchInput":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    if-nez v1, :cond_0

    .line 212
    sget v1, Lezg$l;->global_search:I

    invoke-static {p0, v1}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    .line 213
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->h:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 216
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 217
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 218
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    invoke-static {p0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 223
    .end local v0    # "searchInput":Landroid/view/MenuItem;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    invoke-static {p0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 221
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->b:Landroid/widget/SearchView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->f:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->f:Ljava/util/Set;

    .line 278
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 279
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 192
    :pswitch_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a:Z

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->g()V

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->supportInvalidateOptionsMenu()V

    .line 199
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->finish()V

    goto :goto_1

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
