.class public Lcom/laiwang/protocol/android/p;
.super Lcom/laiwang/protocol/android/n;
.source "MasterLwpRequestConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/p$a;
    }
.end annotation


# instance fields
.field private volatile l:Lcom/laiwang/protocol/android/m;

.field private m:Landroid/content/Context;

.field private n:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bn;Lcom/laiwang/protocol/android/bu;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/laiwang/protocol/android/bu;)V
    .locals 0
    .param p1, "extension"    # Lcom/laiwang/protocol/android/Extension;
    .param p2, "scheduleEngine"    # Lcom/laiwang/protocol/android/bn;
    .param p3, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "appKeepAliveIntent"    # Landroid/app/PendingIntent;
    .param p6, "readExecutor"    # Lcom/laiwang/protocol/android/bu;

    .prologue
    .line 40
    invoke-direct {p0, p3, p2, p1, p6}, Lcom/laiwang/protocol/android/n;-><init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/bn;Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bu;)V

    .line 41
    iput-object p4, p0, Lcom/laiwang/protocol/android/p;->m:Landroid/content/Context;

    .line 42
    iput-object p5, p0, Lcom/laiwang/protocol/android/p;->n:Landroid/app/PendingIntent;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/p;Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/m;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/p;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    return-object p1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/p;Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/p;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->f(Lcom/laiwang/protocol/android/k;)V

    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/p;Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/p;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/k;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bd;
    .locals 7
    .param p1, "connection"    # Lcom/laiwang/protocol/android/m;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 294
    iget-object v2, p0, Lcom/laiwang/protocol/android/p;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bf;->b()Lcom/laiwang/protocol/android/bd;

    move-result-object v0

    .line 295
    .local v0, "message":Lcom/laiwang/protocol/android/bd;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 307
    .end local v0    # "message":Lcom/laiwang/protocol/android/bd;
    :goto_0
    return-object v0

    .line 296
    .restart local v0    # "message":Lcom/laiwang/protocol/android/bd;
    :cond_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->k()Lcom/laiwang/protocol/android/k$d;

    move-result-object v2

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    if-eq v2, v3, :cond_1

    .line 297
    const-string/jumbo v2, "[master] poll master %s %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bd;->startLine()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-object v2, p0, Lcom/laiwang/protocol/android/p;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v2, v0}, Lcom/laiwang/protocol/android/bf;->a(Lcom/laiwang/protocol/android/bd;)V

    move-object v0, v1

    .line 299
    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->f()I

    move-result v2

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/laiwang/protocol/android/p;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v2, v0}, Lcom/laiwang/protocol/android/bf;->c(Lcom/laiwang/protocol/android/bd;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    const-string/jumbo v2, "[master] %s, NotAuth yet %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bd;->startLine()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object v2, p0, Lcom/laiwang/protocol/android/p;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v2, v0}, Lcom/laiwang/protocol/android/bf;->a(Lcom/laiwang/protocol/android/bd;)V

    move-object v0, v1

    .line 303
    goto :goto_0

    .line 305
    :cond_2
    const-string/jumbo v1, "[master] %s, send message %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bd;->startLine()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/m;J)Lcom/laiwang/protocol/android/bd;
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/m;
    .param p2, "timeout"    # J

    .prologue
    .line 279
    const/4 v2, 0x0

    .line 281
    .local v2, "out":Lcom/laiwang/protocol/android/bd;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/p;->b(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bd;

    move-result-object v2

    .line 282
    instance-of v3, v2, Lcom/laiwang/protocol/core/Request;

    if-eqz v3, :cond_0

    .line 283
    move-object v0, v2

    check-cast v0, Lcom/laiwang/protocol/core/Request;

    move-object v3, v0

    invoke-super {p0, v3, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    invoke-virtual {p0, p1, p2, p3}, Lcom/laiwang/protocol/android/p;->a(Lcom/laiwang/protocol/android/m;J)Lcom/laiwang/protocol/android/bd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 290
    :goto_0
    return-object v3

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[master] poll message error"

    invoke-static {v3, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v2

    .line 290
    goto :goto_0
.end method

.method public declared-synchronized a()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_1

    .line 313
    const-string/jumbo v0, "[master] master connection already init %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 317
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_2

    .line 318
    const-string/jumbo v0, "[master] backup connection already init %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 321
    :cond_2
    :try_start_2
    new-instance v0, Lcom/laiwang/protocol/android/m;

    iget-object v1, p0, Lcom/laiwang/protocol/android/p;->d:Lcom/laiwang/protocol/android/bu;

    new-instance v2, Lcom/laiwang/protocol/android/n$a;

    iget-object v3, p0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    invoke-direct {v2, v3}, Lcom/laiwang/protocol/android/n$a;-><init>(Lcom/laiwang/protocol/android/Extension;)V

    const v3, 0xa001

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/laiwang/protocol/android/p;->m:Landroid/content/Context;

    iget-object v8, p0, Lcom/laiwang/protocol/android/p;->n:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    iget-object v10, p0, Lcom/laiwang/protocol/android/p;->e:Lcom/laiwang/protocol/android/bu;

    invoke-direct/range {v0 .. v10}, Lcom/laiwang/protocol/android/m;-><init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/b;IZZZLandroid/content/Context;Landroid/app/PendingIntent;Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bu;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    .line 324
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->f:Lcom/laiwang/protocol/android/bn;

    sget-object v1, Lcom/laiwang/protocol/android/aw;->a:Lcom/laiwang/protocol/android/aw;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bn;->a(Lcom/laiwang/protocol/android/aw;)Ljava/net/URI;

    move-result-object v11

    .line 325
    .local v11, "uri":Ljava/net/URI;
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, p0}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/k$c;)V

    .line 326
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v11}, Lcom/laiwang/protocol/android/m;->a(Ljava/net/URI;)V

    .line 328
    const-string/jumbo v0, "[master] init connection master to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    invoke-static {}, Lcom/laiwang/protocol/android/cg;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    const-string/jumbo v0, "process"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Multi-process is connecting, processName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/laiwang/protocol/android/cg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lcom/laiwang/protocol/android/i;->a(Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/laiwang/protocol/android/bd;)V
    .locals 4
    .param p1, "message"    # Lcom/laiwang/protocol/android/bd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "[master] master send %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/bd;)V

    .line 338
    instance-of v0, p1, Lcom/laiwang/protocol/core/Request;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/laiwang/protocol/attribute/Attributes;->ABANDON_NETWORK_FAILED:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v0}, Lcom/laiwang/protocol/android/bd;->hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->i:Ljava/util/List;

    .line 339
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->i:Ljava/util/List;

    check-cast p1, Lcom/laiwang/protocol/core/Request;

    .end local p1    # "message":Lcom/laiwang/protocol/android/bd;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    if-nez v0, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/p;->a()V

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/m;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_2
    monitor-exit p0

    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    if-ne p1, v0, :cond_1

    .line 118
    invoke-super {p0, p1, p2}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    .line 121
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->h:Lcom/laiwang/protocol/network/Network$State;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->h:Lcom/laiwang/protocol/network/Network$State;

    invoke-virtual {v0}, Lcom/laiwang/protocol/network/Network$State;->incrementFailed()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->j:Lcom/laiwang/protocol/android/NetworkListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->j:Lcom/laiwang/protocol/android/NetworkListener;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/NetworkListener;->onNetworkUnavailable()V

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[master] connect failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_1
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/laiwang/protocol/network/Network$State;)V
    .locals 4
    .param p1, "state"    # Lcom/laiwang/protocol/network/Network$State;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->h:Lcom/laiwang/protocol/network/Network$State;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->h:Lcom/laiwang/protocol/network/Network$State;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/network/Network$State;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    :goto_0
    monitor-exit p0

    return-void

    .line 370
    :cond_0
    :try_start_1
    const-string/jumbo v0, "[master] network changed %s -> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/p;->h:Lcom/laiwang/protocol/network/Network$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/network/Network$State;)V

    .line 372
    iget-boolean v0, p1, Lcom/laiwang/protocol/network/Network$State;->connected:Z

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/m;->k()Lcom/laiwang/protocol/android/k$d;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->c:Lcom/laiwang/protocol/android/k$d;

    if-eq v0, v1, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/p;->h()V

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/p;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 377
    :cond_2
    :try_start_2
    sget-object v0, Lcom/laiwang/protocol/android/ab;->i:Lcom/laiwang/protocol/android/ab$i;

    invoke-virtual {p0, v0}, Lcom/laiwang/protocol/android/p;->b(Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/io/IOException;)V
    .locals 1
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->a(Ljava/io/IOException;)V

    .line 401
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_0
    monitor-exit p0

    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 350
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "[master] auth %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/m;->b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/m;->b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_1
    monitor-exit p0

    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    if-ne v4, p1, :cond_1

    .line 253
    invoke-super {p0, p1, p2}, Lcom/laiwang/protocol/android/n;->b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    .line 254
    iget-object v4, p0, Lcom/laiwang/protocol/android/p;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/bf;->e()V

    .line 255
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[master] master disconnect "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    iget-object v4, p0, Lcom/laiwang/protocol/android/p;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/core/Request;

    .line 259
    .local v2, "request":Lcom/laiwang/protocol/core/Request;
    invoke-virtual {v2}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/laiwang/protocol/android/p;->i:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 261
    iget-object v5, p0, Lcom/laiwang/protocol/android/p;->b:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v5, Lcom/laiwang/protocol/attribute/Attributes;->TIMEOUT_TASK:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v2, v5}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v5

    invoke-interface {v5}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/laiwang/protocol/android/bu$a;

    .line 263
    .local v3, "timeout":Lcom/laiwang/protocol/android/bu$a;
    if-eqz v3, :cond_0

    .line 264
    iget-object v5, p0, Lcom/laiwang/protocol/android/p;->d:Lcom/laiwang/protocol/android/bu;

    invoke-virtual {v5, v3}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 252
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v3    # "timeout":Lcom/laiwang/protocol/android/bu$a;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 268
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[master] master disconnect & retrieve "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    invoke-interface {p1, p0}, Lcom/laiwang/protocol/android/k;->b(Lcom/laiwang/protocol/android/k$c;)V

    .line 270
    move-object v0, p1

    check-cast v0, Lcom/laiwang/protocol/android/m;

    move-object v4, v0

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/android/p;->a(Lcom/laiwang/protocol/android/m;)V

    .line 273
    :cond_2
    if-eqz p2, :cond_3

    sget-object v4, Lcom/laiwang/protocol/android/ab;->l:Lcom/laiwang/protocol/android/ab$f;

    if-eq p2, v4, :cond_3

    sget-object v4, Lcom/laiwang/protocol/android/k;->b:Lcom/laiwang/protocol/android/k$b;

    if-eq p2, v4, :cond_3

    .line 274
    const-string/jumbo v4, "Disconnect"

    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->c()Ljava/net/URI;

    move-result-object v5

    invoke-static {v4, v5, p2}, Lcom/laiwang/protocol/android/i;->a(Ljava/lang/String;Ljava/net/URI;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Ljava/io/IOException;)V
    .locals 1
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "[master] close"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 389
    :goto_0
    monitor-exit p0

    return-void

    .line 386
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/Throwable;)V

    .line 388
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->b(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 359
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "[master] deviceAuth %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_1
    monitor-exit p0

    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "[master] refreshCacheHeader"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/m;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :cond_0
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    const-string/jumbo v0, "[master] device connected %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    sget-object v1, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;->SERVER_ERROR:Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/Extension;->deviceAuthResult(Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;)V

    .line 49
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->d(Lcom/laiwang/protocol/android/k;)V

    .line 50
    return-void
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public f(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    const-string/jumbo v0, "[master] account connected %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->f(Lcom/laiwang/protocol/android/k;)V

    .line 57
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    sget-object v1, Lcom/laiwang/protocol/android/TokenListener$AuthResult;->OK:Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/Extension;->tokenAuthResult(Lcom/laiwang/protocol/android/TokenListener$AuthResult;)V

    .line 58
    return-void
.end method

.method public g(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    const-string/jumbo v0, "[master] account inval %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->g(Lcom/laiwang/protocol/android/k;)V

    .line 64
    return-void
.end method

.method public declared-synchronized h()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "[master] connect backup"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    if-eqz v0, :cond_0

    .line 96
    const-string/jumbo v0, "[master] backup connection already init %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    :try_start_1
    new-instance v0, Lcom/laiwang/protocol/android/m;

    iget-object v1, p0, Lcom/laiwang/protocol/android/p;->d:Lcom/laiwang/protocol/android/bu;

    new-instance v2, Lcom/laiwang/protocol/android/n$a;

    iget-object v3, p0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    invoke-direct {v2, v3}, Lcom/laiwang/protocol/android/n$a;-><init>(Lcom/laiwang/protocol/android/Extension;)V

    const v3, 0xa001

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/laiwang/protocol/android/p;->m:Landroid/content/Context;

    iget-object v8, p0, Lcom/laiwang/protocol/android/p;->n:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    iget-object v10, p0, Lcom/laiwang/protocol/android/p;->e:Lcom/laiwang/protocol/android/bu;

    invoke-direct/range {v0 .. v10}, Lcom/laiwang/protocol/android/m;-><init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/b;IZZZLandroid/content/Context;Landroid/app/PendingIntent;Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bu;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    .line 105
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->f:Lcom/laiwang/protocol/android/bn;

    sget-object v1, Lcom/laiwang/protocol/android/aw;->a:Lcom/laiwang/protocol/android/aw;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bn;->a(Lcom/laiwang/protocol/android/aw;)Ljava/net/URI;

    move-result-object v11

    .line 106
    .local v11, "uri":Ljava/net/URI;
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    new-instance v1, Lcom/laiwang/protocol/android/p$a;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/p$a;-><init>(Lcom/laiwang/protocol/android/p;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/k$c;)V

    .line 107
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->l:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v11}, Lcom/laiwang/protocol/android/m;->a(Ljava/net/URI;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v11    # "uri":Ljava/net/URI;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    const-string/jumbo v0, "[master] device inval %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/n;->h(Lcom/laiwang/protocol/android/k;)V

    .line 70
    return-void
.end method

.method public i(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    const-string/jumbo v0, "[master] conn sick %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/p;->h()V

    .line 77
    return-void
.end method

.method public j(Lcom/laiwang/protocol/android/k;)V
    .locals 2
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    sget-object v1, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;->SERVER_ERROR:Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/Extension;->deviceAuthResult(Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;)V

    .line 82
    return-void
.end method

.method public k(Lcom/laiwang/protocol/android/k;)V
    .locals 1
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->onHeartBeat()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->d:Lcom/laiwang/protocol/android/bu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->d:Lcom/laiwang/protocol/android/bu;

    instance-of v0, v0, Lcom/laiwang/protocol/android/bt;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/laiwang/protocol/android/p;->d:Lcom/laiwang/protocol/android/bu;

    check-cast v0, Lcom/laiwang/protocol/android/bt;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bt;->c()V

    .line 91
    :cond_1
    return-void
.end method
