.class public Lcom/alibaba/android/search/fragment/LightAppSearchFragment;
.super Lcom/alibaba/android/search/fragment/BaseSearchFragment;
.source "LightAppSearchFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 71
    :cond_0
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/search/search_more.html"

    new-instance v4, Lcom/alibaba/android/search/fragment/LightAppSearchFragment$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/LightAppSearchFragment;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 83
    const-string/jumbo v2, "search_more_click_type"

    const-string/jumbo v3, "type=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1056
    sget-object v6, Lcom/alibaba/android/search/SearchGroupType;->LIGHT_APP:Lcom/alibaba/android/search/SearchGroupType;

    .line 83
    invoke-static {v6}, Letd;->a(Lcom/alibaba/android/search/SearchGroupType;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 87
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;->z:Leqp$a;

    invoke-interface {v2}, Leqp$a;->j()Leoe;

    move-result-object v1

    .line 88
    .local v1, "queryLog":Leoe;
    if-eqz v1, :cond_1

    .line 1084
    iget-object v2, v1, Leoe;->a:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 1092
    iget v2, v1, Leoe;->b:I

    .line 90
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 2056
    :cond_1
    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->LIGHT_APP:Lcom/alibaba/android/search/SearchGroupType;

    .line 92
    invoke-static {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts;->a(Lcom/alibaba/android/search/SearchGroupType;)Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 94
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SEARCH_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 95
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 96
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Lcom/alibaba/android/search/SearchGroupType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->LIGHT_APP:Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method protected final z_()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lemt$g;->search_light_app:I

    return v0
.end method
