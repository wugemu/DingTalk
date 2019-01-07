.class public Lcom/laiwang/protocol/android/l;
.super Ljava/lang/Object;
.source "FlowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/l$a;
    }
.end annotation


# static fields
.field private static a:Lcom/laiwang/protocol/android/l;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    return-void
.end method

.method public static declared-synchronized a()Lcom/laiwang/protocol/android/l;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/laiwang/protocol/android/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/laiwang/protocol/android/l;->a:Lcom/laiwang/protocol/android/l;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/laiwang/protocol/android/l;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/l;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/l;->a:Lcom/laiwang/protocol/android/l;

    .line 26
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/l;->a:Lcom/laiwang/protocol/android/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/laiwang/protocol/android/l$a;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 50
    if-nez p1, :cond_0

    move-object v2, v3

    .line 62
    :goto_0
    return-object v2

    .line 52
    :cond_0
    iget-object v4, p0, Lcom/laiwang/protocol/android/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/android/l$a;

    .line 53
    .local v2, "strategy":Lcom/laiwang/protocol/android/l$a;
    if-eqz v2, :cond_2

    .line 54
    iget-wide v4, v2, Lcom/laiwang/protocol/android/l$a;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 55
    .local v0, "ret":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 56
    const-string/jumbo v3, "[flowControl] req %s limit remain %d ms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v4, p0, Lcom/laiwang/protocol/android/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "ret":J
    :cond_2
    move-object v2, v3

    .line 62
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/laiwang/protocol/core/Response;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string/jumbo v4, "limit-req-code"

    invoke-virtual {p2, v4}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v4, "wait"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    const-string/jumbo v4, "limit-req-seconds"

    invoke-virtual {p2, v4}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/laiwang/protocol/util/StringUtils;->toLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v2, v4, v6

    .line 35
    .local v2, "seconds":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 36
    const-string/jumbo v4, "[flowControl] req %s limit %d ms"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    new-instance v1, Lcom/laiwang/protocol/android/l$a;

    invoke-direct {v1}, Lcom/laiwang/protocol/android/l$a;-><init>()V

    .line 38
    .local v1, "strategy":Lcom/laiwang/protocol/android/l$a;
    iput-object v0, v1, Lcom/laiwang/protocol/android/l$a;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v4

    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;

    if-eq v4, v5, :cond_2

    .line 40
    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v4

    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->INTERNAL_SERVER_ERROR:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v4, v5, :cond_3

    .line 41
    :cond_2
    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v4

    iput-object v4, v1, Lcom/laiwang/protocol/android/l$a;->c:[B

    .line 43
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/laiwang/protocol/android/l$a;->b:J

    .line 44
    iget-object v4, p0, Lcom/laiwang/protocol/android/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
