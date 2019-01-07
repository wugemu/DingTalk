.class public Lcom/alibaba/wukong/auth/bb;
.super Ljava/lang/Object;
.source "SyncMergeAck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/auth/bb$a;,
        Lcom/alibaba/wukong/auth/bb$b;
    }
.end annotation


# static fields
.field private static mMainHandler:Landroid/os/Handler;


# instance fields
.field private bk:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

.field private bl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private bm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/auth/bb$b;",
            ">;"
        }
    .end annotation
.end field

.field private bn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/auth/bb$a;",
            ">;"
        }
    .end annotation
.end field

.field private bo:Z

.field private volatile mFinished:Z

.field private mTimeout:J

.field private mTimerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/wukong/auth/bb;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 4
    .param p1, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/auth/bb;->bl:Ljava/util/Map;

    .line 31
    iput-object v1, p0, Lcom/alibaba/wukong/auth/bb;->bm:Ljava/util/List;

    .line 32
    iput-object v1, p0, Lcom/alibaba/wukong/auth/bb;->bn:Ljava/util/List;

    .line 33
    iput-boolean v2, p0, Lcom/alibaba/wukong/auth/bb;->mFinished:Z

    .line 34
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/alibaba/wukong/auth/bb;->mTimeout:J

    .line 35
    iput-boolean v2, p0, Lcom/alibaba/wukong/auth/bb;->bo:Z

    .line 127
    new-instance v0, Lcom/alibaba/wukong/auth/bb$2;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/auth/bb$2;-><init>(Lcom/alibaba/wukong/auth/bb;)V

    iput-object v0, p0, Lcom/alibaba/wukong/auth/bb;->mTimerRunnable:Ljava/lang/Runnable;

    .line 38
    iput-object p1, p0, Lcom/alibaba/wukong/auth/bb;->bk:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    .line 39
    sget-object v0, Lcom/alibaba/wukong/auth/bb;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/wukong/auth/bb;->mTimerRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/alibaba/wukong/auth/bb;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/alibaba/wukong/auth/bb;Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/bb;
    .param p1, "x1"    # Lcom/alibaba/wukong/sync/SyncAck;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "timeout"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 96
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 97
    .local v0, "tag":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "[TAG] Sync ack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[SYNC] ack failed "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "remain: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/wukong/auth/bb;->bl:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "base"

    invoke-static {v2, v1, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-boolean v1, p0, Lcom/alibaba/wukong/auth/bb;->mFinished:Z

    if-eqz v1, :cond_2

    .line 125
    :goto_2
    return-void

    .line 96
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .restart local v0    # "tag":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 97
    goto :goto_1

    .line 100
    :cond_2
    if-eqz p3, :cond_3

    .line 101
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Sync handler no ack, type: "

    aput-object v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/wukong/auth/bb;->bl:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/wukong/auth/bj;->a([Ljava/lang/String;)V

    .line 103
    :cond_3
    sget-object v1, Lcom/alibaba/wukong/auth/bb;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/wukong/auth/bb;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    invoke-direct {p0, v5}, Lcom/alibaba/wukong/auth/bb;->f(Z)Z

    .line 106
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/alibaba/wukong/auth/bb$1;

    invoke-direct {v2, p0, p3, v0}, Lcom/alibaba/wukong/auth/bb$1;-><init>(Lcom/alibaba/wukong/auth/bb;ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    if-nez p3, :cond_4

    iget-object v1, p0, Lcom/alibaba/wukong/auth/bb;->bk:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/alibaba/wukong/auth/bb;->bk:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-static {v1, p2}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Ljava/lang/String;)V

    .line 123
    :cond_4
    invoke-direct {p0, v5}, Lcom/alibaba/wukong/auth/bb;->g(Z)V

    .line 124
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/bb;->finish()V

    goto :goto_2
.end method

.method private f(Z)Z
    .locals 4
    .param p1, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 162
    iget-object v2, p0, Lcom/alibaba/wukong/auth/bb;->bm:Ljava/util/List;

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 164
    :cond_1
    if-eqz p1, :cond_3

    .line 165
    iget-object v2, p0, Lcom/alibaba/wukong/auth/bb;->bm:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/auth/bb$b;

    .line 166
    .local v0, "processor":Lcom/alibaba/wukong/auth/bb$b;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/auth/bb$b;->onBeforeAckSuccess()Z

    move-result v3

    if-nez v3, :cond_2

    .line 167
    const/4 v1, 0x0

    goto :goto_0

    .line 171
    .end local v0    # "processor":Lcom/alibaba/wukong/auth/bb$b;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/wukong/auth/bb;->bm:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/auth/bb$b;

    .line 172
    .restart local v0    # "processor":Lcom/alibaba/wukong/auth/bb$b;
    if-eqz v0, :cond_4

    .line 173
    invoke-interface {v0}, Lcom/alibaba/wukong/auth/bb$b;->onBeforeAckFailed()V

    goto :goto_1
.end method

.method private declared-synchronized finish()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/wukong/auth/bb;->mFinished:Z

    .line 136
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bb;->bm:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bb;->bm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bb;->bn:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bb;->bn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    :cond_1
    const-string/jumbo v0, "[TAG] Sync ack"

    const-string/jumbo v1, "[SYNC] ack finish"

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g(Z)V
    .locals 3
    .param p1, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    iget-object v1, p0, Lcom/alibaba/wukong/auth/bb;->bn:Ljava/util/List;

    if-nez v1, :cond_1

    .line 210
    :cond_0
    return-void

    .line 197
    :cond_1
    if-eqz p1, :cond_3

    .line 198
    iget-object v1, p0, Lcom/alibaba/wukong/auth/bb;->bn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/auth/bb$a;

    .line 199
    .local v0, "processor":Lcom/alibaba/wukong/auth/bb$a;
    if-eqz v0, :cond_2

    .line 200
    invoke-interface {v0}, Lcom/alibaba/wukong/auth/bb$a;->r()V

    goto :goto_0

    .line 204
    .end local v0    # "processor":Lcom/alibaba/wukong/auth/bb$a;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/wukong/auth/bb;->bn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/auth/bb$a;

    .line 205
    .restart local v0    # "processor":Lcom/alibaba/wukong/auth/bb$a;
    if-eqz v0, :cond_4

    .line 206
    invoke-interface {v0}, Lcom/alibaba/wukong/auth/bb$a;->s()V

    goto :goto_1
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    if-gtz p1, :cond_1

    .line 149
    const/4 v1, 0x0

    .line 154
    :cond_0
    return-object v1

    .line 150
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/sync/SyncAck;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 152
    new-instance v2, Lcom/alibaba/wukong/sync/SyncAck;

    invoke-direct {v2, p0}, Lcom/alibaba/wukong/sync/SyncAck;-><init>(Lcom/alibaba/wukong/auth/bb;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/alibaba/wukong/auth/bb$b;)V
    .locals 1
    .param p1, "processor"    # Lcom/alibaba/wukong/auth/bb$b;

    .prologue
    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bb;->bm:Ljava/util/List;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/auth/bb;->bm:Ljava/util/List;

    .line 184
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bb;->bm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-void

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 6
    .param p1, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    const-string/jumbo v3, "[TAG] Sync ack"

    const-string/jumbo v4, "base"

    invoke-static {v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 55
    .local v1, "trace":Lhzv;
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 56
    .local v0, "tag":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SYNC] ack succ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " remain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/wukong/auth/bb;->bl:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lhzv;->a(Ljava/lang/String;)V

    .line 57
    iget-boolean v3, p0, Lcom/alibaba/wukong/auth/bb;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 83
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 84
    :goto_1
    return-void

    .line 55
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    .restart local v0    # "tag":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 60
    iget-object v3, p0, Lcom/alibaba/wukong/auth/bb;->bl:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 61
    .local v2, "val":Ljava/lang/Boolean;
    if-nez v2, :cond_2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SYNC] ack not match "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lhzv;->b(Ljava/lang/String;)V

    .line 65
    .end local v2    # "val":Ljava/lang/Boolean;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/wukong/auth/bb;->bl:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    sget-object v3, Lcom/alibaba/wukong/auth/bb;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/alibaba/wukong/auth/bb;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/alibaba/wukong/auth/bb;->f(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 68
    const-string/jumbo v3, "[TAG] Sync ack"

    const-string/jumbo v4, "[SYNC] ack & process succ"

    const-string/jumbo v5, "base"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lcom/alibaba/wukong/auth/bb;->bk:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    iget-boolean v4, p0, Lcom/alibaba/wukong/auth/bb;->bo:Z

    invoke-static {v3, v4}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V

    .line 70
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/alibaba/wukong/auth/bb;->g(Z)V

    .line 80
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/bb;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_3
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_1

    .line 72
    :cond_4
    :try_start_2
    const-string/jumbo v3, "[TAG] Sync ack"

    const-string/jumbo v4, "[SYNC] ack & process fail"

    const-string/jumbo v5, "base"

    invoke-static {v3, v4, v5}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/alibaba/wukong/auth/bb;->bk:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    if-eqz v3, :cond_5

    .line 74
    const-string/jumbo v3, "SyncHandle"

    const-string/jumbo v4, "101001"

    const-string/jumbo v5, ""

    invoke-static {v3, v0, v4, v5}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_5
    iget-object v3, p0, Lcom/alibaba/wukong/auth/bb;->bk:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    const-string/jumbo v4, "beforeProcess failed"

    invoke-static {v3, v4}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Ljava/lang/String;)V

    .line 78
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/alibaba/wukong/auth/bb;->g(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 83
    .end local v0    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    throw v3
.end method

.method public a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V
    .locals 1
    .param p1, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;Z)V

    .line 93
    return-void
.end method

.method public b(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 2
    .param p1, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bb;->bl:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/alibaba/wukong/sync/SyncAck;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Lcom/alibaba/wukong/sync/SyncAck;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/wukong/sync/SyncAck;-><init>(Lcom/alibaba/wukong/auth/bb;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Z)V
    .locals 0
    .param p1, "ignoreLoginStatus"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alibaba/wukong/auth/bb;->bo:Z

    .line 50
    return-void
.end method

.method public failed(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setTimeout(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/alibaba/wukong/auth/bb;->mTimeout:J

    .line 44
    sget-object v0, Lcom/alibaba/wukong/auth/bb;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/wukong/auth/bb;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    sget-object v0, Lcom/alibaba/wukong/auth/bb;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/wukong/auth/bb;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void
.end method
