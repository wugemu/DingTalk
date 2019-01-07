.class public Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ExternalCompanyListActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

.field private b:Lcn;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lezg$j;->external_company_list_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->setContentView(I)V

    .line 1066
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "keyword"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->c:Ljava/lang/String;

    .line 1067
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "org_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->d:J

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 2052
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->h()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 2054
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2055
    const-string/jumbo v2, "keyword"

    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    const-string/jumbo v2, "intent_key_show_fragment_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2057
    const-string/jumbo v1, "choose_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2058
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2059
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->b:Lcn;

    .line 2060
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->b:Lcn;

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2061
    sget v1, Lezg$h;->ll_container:I

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    const-class v3, Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 2062
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 49
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1069
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalCompanyListActivity;->finish()V

    goto :goto_1
.end method
