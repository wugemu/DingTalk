.class final Lcom/alibaba/android/search/service/SearchHistoryManager$4;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/service/SearchHistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/service/SearchHistoryManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/service/SearchHistoryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$4;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 246
    iget-object v5, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$4;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-static {v5}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/service/SearchHistoryManager;)Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 247
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$4;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-static {v5}, Lcom/alibaba/android/search/service/SearchHistoryManager;->b(Lcom/alibaba/android/search/service/SearchHistoryManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 248
    monitor-exit v6

    .line 278
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-static {}, Lcjf;->a()Lcjf;

    move-result-object v5

    iget-object v7, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$4;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-static {v7}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c(Lcom/alibaba/android/search/service/SearchHistoryManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcjf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 252
    .local v4, "persistObject":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_3

    .line 253
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 254
    .local v1, "histories":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .line 255
    .local v3, "item":Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    iget-object v7, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$4;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-static {v7, v3}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/service/SearchHistoryManager;Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 259
    iget-object v7, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$4;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-static {v7, v3}, Lcom/alibaba/android/search/service/SearchHistoryManager;->b(Lcom/alibaba/android/search/service/SearchHistoryManager;Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)V

    .line 262
    iget-object v7, v3, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v7}, Lcom/alibaba/android/search/model/BaseModel;->getCid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 263
    iget-object v7, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$4;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-static {v7, v3}, Lcom/alibaba/android/search/service/SearchHistoryManager;->c(Lcom/alibaba/android/search/service/SearchHistoryManager;Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)V

    goto :goto_1

    .line 278
    .end local v1    # "histories":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;>;"
    .end local v3    # "item":Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;
    .end local v4    # "persistObject":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 266
    .restart local v1    # "histories":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;>;"
    .restart local v4    # "persistObject":Ljava/lang/Object;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "history loaded "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$4;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-static {v7}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/service/SearchHistoryManager;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    .line 1050
    const-string/jumbo v8, "search"

    invoke-static {v8, v5, v7}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    .end local v1    # "histories":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;>;"
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$4;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-static {v5}, Lcom/alibaba/android/search/service/SearchHistoryManager;->d(Lcom/alibaba/android/search/service/SearchHistoryManager;)V

    .line 271
    iget-object v5, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$4;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/service/SearchHistoryManager;Z)Z

    .line 272
    iget-object v5, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$4;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-static {v5}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/service/SearchHistoryManager;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 274
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "ACTION_SEARCH_HISTORY_LOADED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    .line 276
    invoke-virtual {v5, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 277
    const-string/jumbo v5, "search history manager, load finished"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    .line 2050
    const-string/jumbo v8, "search"

    invoke-static {v8, v5, v7}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
