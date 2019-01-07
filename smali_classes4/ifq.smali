.class public final Lifq;
.super Ljava/lang/Object;
.source "SyncContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lifq$a;
    }
.end annotation


# instance fields
.field public a:Z

.field b:Ljava/lang/String;

.field public c:Ljava/util/concurrent/Executor;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lifq;->d:Z

    .line 19
    iput-boolean v0, p0, Lifq;->a:Z

    .line 20
    iput-object v1, p0, Lifq;->b:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lifq;->c:Ljava/util/concurrent/Executor;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lifq;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lifq;->d:Z

    if-nez v0, :cond_0

    .line 1077
    new-instance v0, Lifq$1;

    invoke-direct {v0, p0}, Lifq$1;-><init>(Lifq;)V

    invoke-static {v0}, Lcom/laiwang/protocol/android/LWP;->addNetworkListener(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lifq;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 64
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->a()Lcom/alibaba/wukong/sync/upstream/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/sync/upstream/g;->c()V

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lifq;->b:Ljava/lang/String;

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lifr;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lifq;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lifq;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lifq;->c:Ljava/util/concurrent/Executor;

    .line 55
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v0, p0, Lifq;->c:Ljava/util/concurrent/Executor;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
