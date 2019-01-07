.class public Lcom/alibaba/android/user/external/list/ExternalSearchActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ExternalSearchActivity.java"

# interfaces
.implements Lfhw;


# instance fields
.field private final a:I

.field private b:Landroid/widget/SearchView;

.field private c:Lcom/alibaba/android/user/external/list/ExternalListFragment;

.field private d:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

.field private e:Lcom/alibaba/android/user/contact/view/PageScrollView;

.field private f:Landroid/os/Handler;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->a:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b:Landroid/widget/SearchView;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->f:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$1;-><init>(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->j:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->c:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 34
    .line 4231
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->c:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    if-eqz v0, :cond_0

    .line 4232
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->c:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .line 4626
    iput-object p1, v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->j:Ljava/lang/String;

    .line 4233
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->c:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .line 4804
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(ZILjava/lang/Runnable;)V

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->d:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->h:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V
    .locals 0
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 259
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget v0, Lezg$j;->external_search_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->setContentView(I)V

    .line 78
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_external_complete"

    invoke-virtual {v0, v1, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->i:Z

    .line 80
    sget v0, Lezg$h;->page_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/view/PageScrollView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->e:Lcom/alibaba/android/user/contact/view/PageScrollView;

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->e:Lcom/alibaba/android/user/contact/view/PageScrollView;

    new-instance v1, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$2;-><init>(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/PageScrollView;->setOnPageScrollListener(Lcom/alibaba/android/user/contact/view/PageScrollView$a;)V

    .line 2121
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->c:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    if-nez v0, :cond_0

    .line 2122
    new-instance v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-direct {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->c:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .line 2123
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2124
    const-string/jumbo v1, "load_data_on_init"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2125
    const-string/jumbo v1, "intent_key_embed_in_scroll_view"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2126
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->c:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2128
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->i:Z

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->c:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    new-instance v1, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$4;-><init>(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)V

    .line 3133
    iput-object v1, v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->n:Lcom/alibaba/android/user/external/list/ExternalListFragment$b;

    .line 2144
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->d:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-nez v0, :cond_1

    .line 2147
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2148
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "display_enterprise_oid"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2151
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$5;-><init>(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(JLcbz;)Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->d:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 2175
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2176
    sget v1, Lezg$h;->ll_container:I

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->c:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2178
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->d:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-eqz v1, :cond_2

    .line 2179
    sget v1, Lezg$h;->ll_external_org_container:I

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->d:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2182
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_3

    .line 94
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$3;-><init>(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :cond_4
    return-void

    :cond_5
    move-wide v0, v2

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 192
    const-string/jumbo v1, ""

    invoke-interface {p1, v5, v2, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 193
    .local v0, "searchInput":Landroid/view/MenuItem;
    sget v1, Lezg$l;->dt_externalcontact_search_placeholder:I

    invoke-static {p0, v1}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b:Landroid/widget/SearchView;

    .line 194
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 195
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 196
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 198
    new-instance v1, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$6;-><init>(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)V

    invoke-static {v0, v1}, Lgd;->a(Landroid/view/MenuItem;Lgd$d;)Landroid/view/MenuItem;

    .line 211
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b:Landroid/widget/SearchView;

    new-instance v2, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$7;-><init>(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 3238
    new-instance v1, Landroid/text/SpannableString;

    sget v2, Lezg$l;->global_search:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3239
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->search_hint_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 3240
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3241
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b:Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3242
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->f:Landroid/os/Handler;

    .line 117
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 118
    return-void
.end method
