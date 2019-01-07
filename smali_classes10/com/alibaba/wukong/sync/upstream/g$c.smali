.class public final Lcom/alibaba/wukong/sync/upstream/g$c;
.super Ljava/lang/Object;
.source "SyncTaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/sync/upstream/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Lift;


# direct methods
.method public constructor <init>(Lift;)V
    .locals 2
    .param p1, "info"    # Lift;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SyncInfo can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/alibaba/wukong/sync/upstream/g$c;)Lift;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/sync/upstream/g$c;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "task failed "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v4, p0, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    invoke-static {v4}, Lifs;->b(Lift;)I

    .line 285
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->f()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    iget-object v6, p0, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 1065
    iget-object v6, v6, Lift;->a:Ljava/lang/String;

    .line 285
    invoke-interface {v4, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/sync/SyncListener;

    .line 286
    .local v1, "listener":Lcom/alibaba/wukong/sync/SyncListener;, "Lcom/alibaba/wukong/sync/SyncListener<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    .line 290
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 1069
    iget-object v4, v4, Lift;->b:[B

    .line 290
    invoke-virtual {v1}, Lcom/alibaba/wukong/sync/SyncListener;->getParamsType()[Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v4, v6}, Lifr;->a([B[Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 296
    :goto_1
    new-instance v2, Lcom/alibaba/wukong/sync/SyncResult;

    invoke-direct {v2}, Lcom/alibaba/wukong/sync/SyncResult;-><init>()V

    .line 297
    .local v2, "result":Lcom/alibaba/wukong/sync/SyncResult;, "Lcom/alibaba/wukong/sync/SyncResult<Ljava/lang/Object;>;"
    iput-boolean v5, v2, Lcom/alibaba/wukong/sync/SyncResult;->mSuccess:Z

    .line 298
    iput-object v0, v2, Lcom/alibaba/wukong/sync/SyncResult;->args:[Ljava/lang/Object;

    .line 299
    iput-object p1, v2, Lcom/alibaba/wukong/sync/SyncResult;->mErrorCode:Ljava/lang/String;

    .line 300
    iput-object p2, v2, Lcom/alibaba/wukong/sync/SyncResult;->mErrorDesc:Ljava/lang/String;

    .line 301
    iget-object v4, p0, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    iget-object v4, v4, Lift;->f:Ljava/util/Map;

    iput-object v4, v2, Lcom/alibaba/wukong/sync/SyncResult;->mExtras:Ljava/util/Map;

    .line 302
    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/sync/SyncListener;->onResult(Lcom/alibaba/wukong/sync/SyncResult;)V

    goto :goto_0

    .line 292
    .end local v2    # "result":Lcom/alibaba/wukong/sync/SyncResult;, "Lcom/alibaba/wukong/sync/SyncResult<Ljava/lang/Object;>;"
    :catch_0
    move-exception v4

    iget-object v4, p0, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 2069
    iget-object v3, v4, Lift;->b:[B

    .line 293
    .local v3, "src":[B
    const-string/jumbo v6, "[offline] resp handle onFailure err, %s len=%s type %s"

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/wukong/sync/upstream/g$c;->a:Lift;

    .line 3065
    iget-object v4, v4, Lift;->a:Ljava/lang/String;

    .line 293
    aput-object v4, v7, v5

    const/4 v8, 0x1

    if-nez v3, :cond_1

    move v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/alibaba/wukong/sync/SyncListener;->getParamsType()[Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    array-length v4, v3

    goto :goto_2
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1030
    sget-object v0, Lifq$a;->a:Lifq;

    .line 199
    invoke-virtual {v0}, Lifq;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/sync/upstream/g$c$1;

    invoke-direct {v1, p0}, Lcom/alibaba/wukong/sync/upstream/g$c$1;-><init>(Lcom/alibaba/wukong/sync/upstream/g$c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method
