.class final Lcom/alibaba/android/search/fragment/AllSearchFragment$10;
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
.field final synthetic a:Lcom/alibaba/android/search/fragment/AllSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$10;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 518
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$10;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "keyword"

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$10;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v4}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$10;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->startActivity(Landroid/content/Intent;)V

    .line 522
    const-string/jumbo v2, "-1"

    .line 523
    .local v2, "uuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$10;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Leqr$a;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$10;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Leqr$a;

    move-result-object v3

    invoke-interface {v3}, Leqr$a;->j()Leoe;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 524
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$10;->a:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Leqr$a;

    move-result-object v3

    invoke-interface {v3}, Leqr$a;->j()Leoe;

    move-result-object v3

    .line 1084
    iget-object v2, v3, Leoe;->a:Ljava/lang/String;

    .line 526
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 527
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    sget-object v3, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 528
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 529
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ALL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 530
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SEARCH_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 531
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 532
    return-void
.end method
