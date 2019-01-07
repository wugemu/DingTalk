.class final Lcom/alibaba/android/search/fragment/AllSearchFragment$4;
.super Ljava/lang/Object;
.source "AllSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/AllSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

.field final synthetic b:Lcom/alibaba/android/search/fragment/AllSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$4;->b:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$4;->a:Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 430
    const-string/jumbo v1, "-1"

    .line 431
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$4;->b:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Leqr$a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$4;->b:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Leqr$a;

    move-result-object v2

    invoke-interface {v2}, Leqr$a;->j()Leoe;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$4;->b:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Leqr$a;

    move-result-object v2

    invoke-interface {v2}, Leqr$a;->j()Leoe;

    move-result-object v2

    .line 1084
    iget-object v1, v2, Leoe;->a:Ljava/lang/String;

    .line 434
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 435
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 436
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 437
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ALL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 438
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SEARCH_MARKET_ACTIVITY:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 439
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 441
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$4;->b:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$4;->a:Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    iget-object v4, v4, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->jumpUrl:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void
.end method
