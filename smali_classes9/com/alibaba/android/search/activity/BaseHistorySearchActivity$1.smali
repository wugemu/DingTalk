.class final Lcom/alibaba/android/search/activity/BaseHistorySearchActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseHistorySearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity$1;->a:Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    iget-object v1, p0, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity$1;->a:Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/search/activity/BaseHistorySearchActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string/jumbo v1, "com.workapp.add.search.history"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string/jumbo v1, "intent_key_search_history_model"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 55
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v4

    .line 1415
    iget-boolean v1, v4, Lcom/alibaba/android/search/service/SearchHistoryManager;->d:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1416
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getSearchClickLogModel()Lcom/alibaba/android/search/model/SearchClickLogModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1421
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getSearchClickLogModel()Lcom/alibaba/android/search/model/SearchClickLogModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->getTab()I

    move-result v1

    .line 1422
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->ALL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 1423
    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MY_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 1424
    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 1425
    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    .line 1426
    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1430
    :cond_2
    new-instance v1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;-><init>(JLcom/alibaba/android/search/model/BaseModel;)V

    .line 1431
    invoke-virtual {v4, v1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->b(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1435
    iget-object v5, v4, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    monitor-enter v5

    .line 1436
    :try_start_0
    invoke-virtual {v4, v1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)V

    .line 1437
    iget-object v1, v4, Lcom/alibaba/android/search/service/SearchHistoryManager;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1438
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1439
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1619
    iget-object v2, v4, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1620
    const/4 v3, 0x0

    .line 1622
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1623
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .line 1624
    if-eqz v2, :cond_4

    iget-object v8, v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    if-eqz v8, :cond_4

    iget-object v8, v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    .line 1625
    invoke-virtual {v8}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1628
    iget-object v2, v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v2

    .line 1629
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1630
    invoke-virtual {v4, v2}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;)I

    move-result v2

    if-le v3, v2, :cond_5

    .line 1631
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1443
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1633
    :cond_5
    add-int/lit8 v2, v3, 0x1

    :goto_2
    move v3, v2

    .line 1636
    goto :goto_1

    .line 1443
    :cond_6
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1445
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lcom/alibaba/android/search/service/SearchHistoryManager;->a:Ljava/util/List;

    invoke-virtual {v4, v1, v2}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto :goto_2
.end method
