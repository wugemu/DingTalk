.class public Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "ExternalCompanyListIncludeBusinessActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

.field private b:Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;

.field private c:Landroid/support/v4/app/Fragment;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private f:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$a;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    .prologue
    .line 48
    .line 2119
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->b:Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;

    if-nez v0, :cond_0

    .line 2120
    new-instance v0, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->b:Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;

    .line 2123
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-nez v0, :cond_1

    .line 2124
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$1;-><init>(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Lcbz;)Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 2151
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2152
    const-string/jumbo v1, "keyword"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    const-string/jumbo v1, "intent_key_show_fragment_title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2154
    const-string/jumbo v1, "choose_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2155
    const-string/jumbo v1, "intent_key_search_exactly"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2156
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2157
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->b:Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 3059
    iput-object v1, v0, Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;->a:Landroid/support/v4/app/Fragment;

    .line 2159
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->b:Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;

    .line 48
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    .line 3192
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 3193
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3196
    :cond_0
    const-string/jumbo v0, "99+"

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    .prologue
    .line 48
    .line 3163
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3164
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->c:Landroid/support/v4/app/Fragment;

    :goto_0
    return-object v0

    .line 3167
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->h:J

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->i:Ljava/util/List;

    new-instance v4, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$2;-><init>(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JLjava/util/List;Ldbx;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->c:Landroid/support/v4/app/Fragment;

    .line 3178
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->c:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->b:Lcom/alibaba/android/user/contact/fragments/ExternalCompanyListFragment;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->c:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->h:J

    return-wide v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget v0, Lezg$j;->external_company_list_include_business_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->setContentView(I)V

    .line 1182
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->g:Ljava/lang/String;

    .line 1183
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->h:J

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 67
    :goto_0
    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->finish()V

    .line 78
    :goto_1
    return-void

    .line 1185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    sget v0, Lezg$h;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->d:Landroid/support/v4/view/ViewPager;

    .line 73
    sget v0, Lezg$h;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 75
    new-instance v0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$a;-><init>(Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;Lcn;)V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->f:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$a;

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->d:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->f:Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListIncludeBusinessActivity;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_1
.end method
