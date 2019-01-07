.class public Lcom/laiwang/protocol/android/j;
.super Ljava/lang/Object;
.source "ConnectStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/j$a;
    }
.end annotation


# instance fields
.field public a:Lcom/laiwang/protocol/android/j$a;

.field public b:Lcom/laiwang/protocol/android/j$a;

.field public c:Lcom/laiwang/protocol/android/j$a;

.field public d:Lcom/laiwang/protocol/android/j$a;

.field private e:Z

.field private f:Z

.field private g:Z

.field private volatile h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "master"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/laiwang/protocol/android/j$a;

    const-string/jumbo v1, "total"

    invoke-direct {v0, p0, v1}, Lcom/laiwang/protocol/android/j$a;-><init>(Lcom/laiwang/protocol/android/j;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/j;->a:Lcom/laiwang/protocol/android/j$a;

    .line 17
    new-instance v0, Lcom/laiwang/protocol/android/j$a;

    const-string/jumbo v1, "socket"

    invoke-direct {v0, p0, v1}, Lcom/laiwang/protocol/android/j$a;-><init>(Lcom/laiwang/protocol/android/j;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/j;->b:Lcom/laiwang/protocol/android/j$a;

    .line 19
    new-instance v0, Lcom/laiwang/protocol/android/j$a;

    const-string/jumbo v1, "wtls"

    invoke-direct {v0, p0, v1}, Lcom/laiwang/protocol/android/j$a;-><init>(Lcom/laiwang/protocol/android/j;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/j;->c:Lcom/laiwang/protocol/android/j$a;

    .line 23
    new-instance v0, Lcom/laiwang/protocol/android/j$a;

    const-string/jumbo v1, "register"

    invoke-direct {v0, p0, v1}, Lcom/laiwang/protocol/android/j$a;-><init>(Lcom/laiwang/protocol/android/j;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/j;->d:Lcom/laiwang/protocol/android/j$a;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/j;->e:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/j;->h:Z

    .line 33
    iput-boolean p1, p0, Lcom/laiwang/protocol/android/j;->g:Z

    .line 34
    return-void
.end method

.method private a()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 57
    const-string/jumbo v10, "0"

    .line 58
    .local v10, "code":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/j;->f:Z

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/laiwang/protocol/android/j;->b:Lcom/laiwang/protocol/android/j$a;

    invoke-static {v0}, Lcom/laiwang/protocol/android/j$a;->a(Lcom/laiwang/protocol/android/j$a;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-string/jumbo v10, "1"

    .line 61
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/j;->a:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/j$a;->c()J

    move-result-wide v0

    iget-object v4, p0, Lcom/laiwang/protocol/android/j;->b:Lcom/laiwang/protocol/android/j$a;

    invoke-static {v4}, Lcom/laiwang/protocol/android/j$a;->b(Lcom/laiwang/protocol/android/j$a;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/laiwang/protocol/android/j;->a:Lcom/laiwang/protocol/android/j$a;

    invoke-static {v4}, Lcom/laiwang/protocol/android/j$a;->b(Lcom/laiwang/protocol/android/j$a;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_4

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/laiwang/protocol/android/j;->b:Lcom/laiwang/protocol/android/j$a;

    .line 62
    invoke-virtual {v4}, Lcom/laiwang/protocol/android/j$a;->c()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/laiwang/protocol/android/j;->e:Z

    iget-object v7, p0, Lcom/laiwang/protocol/android/j;->c:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v7}, Lcom/laiwang/protocol/android/j$a;->c()J

    move-result-wide v7

    iget-boolean v9, p0, Lcom/laiwang/protocol/android/j;->f:Z

    iget-boolean v11, p0, Lcom/laiwang/protocol/android/j;->g:Z

    .line 61
    invoke-static/range {v0 .. v11}, Lcom/laiwang/protocol/android/log/PerfLogger;->logConnect(JJJZJZLjava/lang/String;Z)V

    .line 63
    return-void

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/laiwang/protocol/android/j;->c:Lcom/laiwang/protocol/android/j$a;

    invoke-static {v0}, Lcom/laiwang/protocol/android/j$a;->a(Lcom/laiwang/protocol/android/j$a;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-string/jumbo v10, "2"

    goto :goto_0

    :cond_3
    const-string/jumbo v10, "3"

    goto :goto_0

    .line 61
    :cond_4
    iget-object v2, p0, Lcom/laiwang/protocol/android/j;->b:Lcom/laiwang/protocol/android/j$a;

    invoke-static {v2}, Lcom/laiwang/protocol/android/j$a;->b(Lcom/laiwang/protocol/android/j$a;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/laiwang/protocol/android/j;->a:Lcom/laiwang/protocol/android/j$a;

    invoke-static {v4}, Lcom/laiwang/protocol/android/j$a;->b(Lcom/laiwang/protocol/android/j$a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .locals 4
    .param p1, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/laiwang/protocol/android/j;->f:Z

    .line 39
    iget-object v0, p0, Lcom/laiwang/protocol/android/j;->a:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/j$a;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/laiwang/protocol/android/j;->a:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/j$a;->b()V

    .line 43
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/j;->h:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/laiwang/protocol/android/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 0
    .param p1, "reuse"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/laiwang/protocol/android/j;->e:Z

    .line 50
    return-void
.end method

.method public c(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/laiwang/protocol/android/j;->h:Z

    .line 54
    return-void
.end method
