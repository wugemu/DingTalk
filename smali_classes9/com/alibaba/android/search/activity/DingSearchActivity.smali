.class public Lcom/alibaba/android/search/activity/DingSearchActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingSearchActivity.java"


# instance fields
.field public a:Landroid/widget/SearchView;

.field public b:Lcom/alibaba/android/search/fragment/DingSearchResultConvergeFragment;

.field public c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private e:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

.field private f:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

.field private g:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->d:I

    .line 47
    new-instance v0, Lcom/alibaba/android/search/activity/DingSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/activity/DingSearchActivity$1;-><init>(Lcom/alibaba/android/search/activity/DingSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/DingSearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/DingSearchActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/DingSearchActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/DingSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    .line 2225
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2229
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->f:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    if-nez v0, :cond_0

    .line 2230
    new-instance v0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-direct {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->f:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 2232
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->f:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 3147
    iput-object p1, v0, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c:Ljava/lang/String;

    .line 2233
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->f:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2234
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->f:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    if-eq v0, v1, :cond_1

    .line 2235
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 2237
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 2238
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->f:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    .line 3151
    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->g()V

    .line 3152
    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;->c()V

    .line 2240
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2241
    sget v1, Lemt$e;->ll_search_ding:I

    iget-object v2, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->f:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2242
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2243
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->f:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 32
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/search/activity/DingSearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/DingSearchActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 182
    iget-object v3, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->finish()V

    .line 202
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 188
    .local v0, "curFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->e:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->f:Lcom/alibaba/android/search/fragment/DingSearchResultCategoryFragment;

    if-ne v0, v3, :cond_2

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->finish()V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 195
    .local v2, "preFragment":Landroid/support/v4/app/Fragment;
    if-nez v2, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->finish()V

    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 200
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v3, Lemt$e;->ll_search_ding:I

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 201
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 205
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->e:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    if-nez v1, :cond_1

    .line 210
    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    invoke-direct {v1}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->e:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->e:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->e:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    if-eq v1, v2, :cond_2

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 219
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Lemt$e;->ll_search_ding:I

    iget-object v2, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->e:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 220
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 221
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->e:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->a:Landroid/widget/SearchView;

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->a:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->a:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->a:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;)V
    .locals 3
    .param p1, "dingSearchResultType"    # Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->a()Ljava/lang/String;

    move-result-object v0

    .line 1247
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1251
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->g:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    if-nez v1, :cond_0

    .line 1252
    new-instance v1, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-direct {v1}, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->g:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .line 1254
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->g:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .line 2105
    iput-object v0, v1, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->c:Ljava/lang/String;

    .line 1255
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->g:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    .line 2109
    iput-object p1, v0, Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;->d:Lcom/alibaba/android/search/SearchConsts$DING_SEARCH_RESULT_TYPE;

    .line 1256
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1257
    sget v1, Lemt$e;->ll_search_ding:I

    iget-object v2, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->g:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1258
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1259
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->g:Lcom/alibaba/android/search/fragment/DingSearchResultDetailFragment;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 121
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 93
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 94
    sget v0, Lemt$a;->hold:I

    sget v1, Lemt$a;->scale_out:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/search/activity/DingSearchActivity;->overridePendingTransition(II)V

    .line 95
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->b()V

    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v0, Lemt$f;->activity_search_ding:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->setContentView(I)V

    .line 1137
    sget v0, Lemt$g;->dt_search_ding:I

    invoke-static {p0, v0}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->a:Landroid/widget/SearchView;

    .line 1141
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->c:Ljava/util/LinkedList;

    .line 1142
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->a:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->a:Landroid/widget/SearchView;

    new-instance v1, Landroid/text/SpannableString;

    sget v2, Lemt$g;->dt_search_ding:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/activity/DingSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1152
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->c()V

    .line 1156
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->a:Landroid/widget/SearchView;

    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->a:Landroid/widget/SearchView;

    new-instance v1, Lcom/alibaba/android/search/activity/DingSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/activity/DingSearchActivity$3;-><init>(Lcom/alibaba/android/search/activity/DingSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 66
    :cond_2
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

    .line 70
    const-string/jumbo v1, ""

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 71
    .local v0, "searchInput":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity;->a:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 72
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 73
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 75
    new-instance v1, Lcom/alibaba/android/search/activity/DingSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/activity/DingSearchActivity$2;-><init>(Lcom/alibaba/android/search/activity/DingSearchActivity;)V

    invoke-static {v0, v1}, Lgd;->a(Landroid/view/MenuItem;Lgd$d;)Landroid/view/MenuItem;

    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->b()V

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
