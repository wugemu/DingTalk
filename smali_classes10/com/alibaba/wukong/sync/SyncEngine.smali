.class public Lcom/alibaba/wukong/sync/SyncEngine;
.super Ljava/lang/Object;
.source "SyncEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSyncListener(Ljava/lang/Class;Ljava/lang/String;Lcom/alibaba/wukong/sync/SyncListener;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/sync/SyncListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "serviceClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "listener":Lcom/alibaba/wukong/sync/SyncListener;, "Lcom/alibaba/wukong/sync/SyncListener<*>;"
    const/4 v0, 0x0

    .line 67
    .line 4028
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    .local v0, "key":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->a()Lcom/alibaba/wukong/sync/upstream/g;

    invoke-static {v0, p2}, Lcom/alibaba/wukong/sync/upstream/g;->a(Ljava/lang/String;Lcom/alibaba/wukong/sync/SyncListener;)V

    .line 69
    return-void

    .line 4031
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 4032
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4035
    const-string/jumbo v2, "Service"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 4036
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 4037
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4039
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/r/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "aClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setThreadPool(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 5030
    sget-object v1, Lifq$a;->a:Lifq;

    .line 5045
    monitor-enter v1

    .line 5046
    if-eqz p0, :cond_0

    .line 5047
    :try_start_0
    iput-object p0, v1, Lifq;->c:Ljava/util/concurrent/Executor;

    .line 5048
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static start(Ljava/lang/String;)V
    .locals 2
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    sget-object v0, Lifq$a;->a:Lifq;

    .line 29
    invoke-virtual {v0}, Lifq;->a()V

    .line 2030
    sget-object v0, Lifq$a;->a:Lifq;

    .line 30
    invoke-virtual {v0, p0}, Lifq;->a(Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "SyncEngine launch error, invalid key."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->a()Lcom/alibaba/wukong/sync/upstream/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/upstream/g;->b()V

    .line 35
    return-void
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 3030
    sget-object v0, Lifq$a;->a:Lifq;

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lifq;->a(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->a()Lcom/alibaba/wukong/sync/upstream/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/upstream/g;->c()V

    .line 44
    return-void
.end method
