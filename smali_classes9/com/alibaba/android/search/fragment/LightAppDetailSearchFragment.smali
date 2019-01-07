.class public Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;
.super Lcom/alibaba/android/search/fragment/LightAppSearchFragment;
.source "LightAppDetailSearchFragment.java"


# instance fields
.field private D:Lerg$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->D:Lerg$b;

    return-void
.end method


# virtual methods
.method protected final g()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/LightAppSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->z:Leqp$a;

    invoke-interface {v0}, Leqp$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->b(Ljava/util/List;)V

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_search_query_log_entry"

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->NONE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->valueOf(I)Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 47
    new-instance v1, Lerh;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->D:Lerg$b;

    invoke-direct {v1, v0, v2}, Lerh;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerg$b;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->z:Leqp$a;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Leqp$a;->a(Leoe;)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/LightAppDetailSearchFragment;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Leqp$a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
