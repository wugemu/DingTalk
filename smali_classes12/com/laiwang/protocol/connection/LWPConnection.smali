.class public Lcom/laiwang/protocol/connection/LWPConnection;
.super Ljava/lang/Object;
.source "LWPConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;,
        Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;
    }
.end annotation


# instance fields
.field private a:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

.field private b:Lcom/laiwang/protocol/android/ax;

.field private c:Lcom/laiwang/protocol/android/t;

.field private d:Lcom/laiwang/protocol/core/Request;

.field private e:Z

.field private volatile f:Z


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/ax;Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;)V
    .locals 2
    .param p1, "p"    # Lcom/laiwang/protocol/android/ax;
    .param p2, "t"    # Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DEFAULT:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    iput-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->a:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 38
    iput-boolean v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->e:Z

    .line 39
    iput-boolean v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->f:Z

    .line 43
    iput-object p1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->b:Lcom/laiwang/protocol/android/ax;

    .line 44
    if-eqz p2, :cond_0

    .line 45
    iput-object p2, p0, Lcom/laiwang/protocol/connection/LWPConnection;->a:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 46
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/connection/LWPConnection;)Lcom/laiwang/protocol/android/t;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/connection/LWPConnection;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/laiwang/protocol/core/Request;)V
    .locals 5
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/laiwang/protocol/connection/LWPConnection;->b()V

    .line 95
    sget-object v1, Lcom/laiwang/protocol/attribute/Attributes;->SLAVER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v1}, Lcom/laiwang/protocol/core/Request;->hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    invoke-virtual {v1, p1}, Lcom/laiwang/protocol/android/t;->a(Lcom/laiwang/protocol/android/bd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/laiwang/protocol/connection/LWPConnection;->connect()V

    .line 100
    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    if-nez v1, :cond_1

    .line 101
    const-string/jumbo v1, "[LWPConn] no idle slaver, add pending %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-static {p0}, Lcom/laiwang/protocol/android/ax;->a(Lcom/laiwang/protocol/connection/LWPConnection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 104
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    invoke-virtual {v1, p1}, Lcom/laiwang/protocol/android/t;->a(Lcom/laiwang/protocol/android/bd;)V

    goto :goto_0

    .line 108
    :cond_2
    const-string/jumbo v1, "[LWPConn] not slaver req %s & discard"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->UNKNOWN:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {p1, v1}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v0

    .line 110
    .local v0, "response":Lcom/laiwang/protocol/core/Response;
    new-instance v1, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;

    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->getReply()Lcom/laiwang/protocol/android/Reply;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;-><init>(Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/Reply;Z)V

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;->on(Lcom/laiwang/protocol/core/Response;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->f:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;

    if-eqz v1, :cond_0

    .line 174
    const-string/jumbo v1, "[LWPConn] check conn fail & local reply, connected=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/laiwang/protocol/connection/LWPConnection;->f:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->NETWORK_BROKEN:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v0

    .line 176
    .local v0, "response":Lcom/laiwang/protocol/core/Response;
    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v1}, Lcom/laiwang/protocol/core/Request;->getReply()Lcom/laiwang/protocol/android/Reply;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;

    iget-object v2, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v2}, Lcom/laiwang/protocol/core/Request;->getReply()Lcom/laiwang/protocol/android/Reply;

    move-result-object v2

    iget-boolean v3, p0, Lcom/laiwang/protocol/connection/LWPConnection;->e:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;-><init>(Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/Reply;Z)V

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;->on(Lcom/laiwang/protocol/core/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v0    # "response":Lcom/laiwang/protocol/core/Response;
    :cond_0
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/t;->a(Lcom/laiwang/protocol/android/bd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/laiwang/protocol/connection/LWPConnection;->connect()V

    .line 144
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    if-nez v0, :cond_3

    .line 145
    const-string/jumbo v0, "[LWPConn] no idle slaver, add pending %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v3}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-static {p0}, Lcom/laiwang/protocol/android/ax;->a(Lcom/laiwang/protocol/connection/LWPConnection;)Z

    goto :goto_0

    .line 148
    :cond_3
    const-string/jumbo v0, "[LWPConn] idle slaver, send silent %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v3}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/t;->a(Lcom/laiwang/protocol/android/bd;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized cancel()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "[LWPConn] cancel req %s"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-boolean v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 128
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 118
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->a:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    sget-object v1, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DOWN_LARGE:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->a:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    sget-object v1, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->UP_LARGE:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    if-ne v0, v1, :cond_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    sget-object v1, Lcom/laiwang/protocol/android/ab;->h:Lcom/laiwang/protocol/android/ab$c;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/t;->b(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :cond_4
    :try_start_2
    invoke-static {p0}, Lcom/laiwang/protocol/android/ax;->b(Lcom/laiwang/protocol/connection/LWPConnection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized connect()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->b:Lcom/laiwang/protocol/android/ax;

    if-nez v0, :cond_1

    .line 56
    invoke-static {}, Lcom/laiwang/protocol/connection/ConnectionFactory;->getInstance()Lcom/laiwang/protocol/connection/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/connection/ConnectionFactory;->a()Lcom/laiwang/protocol/android/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->b:Lcom/laiwang/protocol/android/ax;

    .line 57
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->b:Lcom/laiwang/protocol/android/ax;

    if-nez v0, :cond_1

    .line 58
    const-string/jumbo v0, "[LWPConn] conn pool not inited"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    if-nez v0, :cond_2

    .line 65
    const-string/jumbo v0, "[LWPConn] conn not acquired"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;)V

    .line 69
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 60
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->b:Lcom/laiwang/protocol/android/ax;

    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->a:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/ax;->a(Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;)Lcom/laiwang/protocol/android/t;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 67
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/t;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getType()Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->a:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    return-object v0
.end method

.method public declared-synchronized release()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 166
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->f:Z

    .line 161
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->b:Lcom/laiwang/protocol/android/ax;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->b:Lcom/laiwang/protocol/android/ax;

    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/ax;->a(Lcom/laiwang/protocol/android/t;)V

    .line 164
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->c:Lcom/laiwang/protocol/android/t;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized send(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V
    .locals 3
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/core/Request;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    .local p2, "reply":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->a:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    sget-object v2, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->UP_SMALL:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->a:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    sget-object v2, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->UP_LARGE:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->a:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    sget-object v2, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DOWN_SMALL:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    if-ne v1, v2, :cond_1

    .line 79
    :cond_0
    sget-object v1, Lcom/laiwang/protocol/attribute/Attributes;->RETRY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v1}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 81
    :cond_1
    if-eqz p2, :cond_3

    .line 82
    new-instance v1, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;

    iget-boolean v2, p0, Lcom/laiwang/protocol/connection/LWPConnection;->e:Z

    invoke-direct {v1, p0, p2, v2}, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;-><init>(Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/Reply;Z)V

    invoke-virtual {p1, v1}, Lcom/laiwang/protocol/core/Request;->setReply(Lcom/laiwang/protocol/android/Reply;)V

    .line 89
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->d:Lcom/laiwang/protocol/core/Request;

    .line 90
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/connection/LWPConnection;->a(Lcom/laiwang/protocol/core/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 84
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->getReply()Lcom/laiwang/protocol/android/Reply;

    move-result-object v0

    .line 85
    .local v0, "_reply":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    if-eqz v0, :cond_2

    .line 86
    new-instance v1, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;

    iget-boolean v2, p0, Lcom/laiwang/protocol/connection/LWPConnection;->e:Z

    invoke-direct {v1, p0, v0, v2}, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;-><init>(Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/Reply;Z)V

    invoke-virtual {p1, v1}, Lcom/laiwang/protocol/core/Request;->setReply(Lcom/laiwang/protocol/android/Reply;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    .end local v0    # "_reply":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAutoRelease(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/laiwang/protocol/connection/LWPConnection;->e:Z

    .line 135
    return-void
.end method
