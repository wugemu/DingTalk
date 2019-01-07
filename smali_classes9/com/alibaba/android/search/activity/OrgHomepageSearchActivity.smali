.class public Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;
.super Lcom/alibaba/android/search/activity/BaseSearchActivity;
.source "OrgHomepageSearchActivity.java"


# instance fields
.field private f:Lcoi;

.field private g:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

.field private h:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;-><init>()V

    .line 45
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->NONE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->i:I

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lemt$f;->activity_org_homepage_search:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lemt$g;->dt_search_org_homepage_hint:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->a:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->g:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-direct {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->g:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->g:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->ORG_HOMEPAGE:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->a(Lcom/alibaba/android/search/SearchGroupType;)V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->f:Lcoi;

    const-class v2, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->g:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .line 1082
    invoke-virtual {v1, v2, v3, v4}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->h:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->h:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->a(Ljava/lang/String;)V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->h:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    if-nez v1, :cond_3

    .line 73
    new-instance v1, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;

    invoke-direct {v1}, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->h:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "choose_mode"

    iget v2, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string/jumbo v1, "keyword"

    iget-object v2, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v1, "intent_key_show_fragment_title"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    const-string/jumbo v1, "intent_key_search_query_log_entry"

    iget v2, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->h:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->f:Lcoi;

    const-class v2, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->h:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    .line 2082
    invoke-virtual {v1, v2, v3, v4}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->h:Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Lcoi;

    sget v1, Lemt$e;->ll_fragment_container:I

    invoke-direct {v0, p0, v1}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->f:Lcoi;

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_search_query_log_entry"

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->NONE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/activity/OrgHomepageSearchActivity;->i:I

    .line 53
    return-void
.end method
