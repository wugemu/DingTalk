.class final Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$4;
.super Ljava/lang/Object;
.source "GlobalSearchHomepageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 257
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)I

    move-result v1

    .line 258
    .local v1, "historyKey":I
    if-gez v1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v3

    .line 1463
    iget-boolean v2, v3, Lcom/alibaba/android/search/service/SearchHistoryManager;->d:Z

    if-eqz v2, :cond_3

    .line 1466
    iget-object v4, v3, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    monitor-enter v4

    .line 1484
    :try_start_0
    invoke-virtual {v3, v1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->b(I)Ljava/util/List;

    move-result-object v5

    .line 1486
    iget-object v2, v3, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1487
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1488
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .line 1489
    if-eqz v2, :cond_1

    iget-object v7, v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    .line 1490
    invoke-virtual {v7}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1494
    iget-object v2, v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1495
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1468
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1470
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 263
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V

    .line 264
    const-string/jumbo v2, "search_delete_history_click"

    invoke-static {v2}, Letd;->a(Ljava/lang/String;)V

    .line 267
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 268
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 269
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->d(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, -0x1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 270
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_SERACH_HISTORY_CLEAR:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 271
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    goto :goto_0

    .line 269
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$4;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->d(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v2

    goto :goto_2
.end method
