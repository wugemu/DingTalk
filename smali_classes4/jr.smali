.class public final Ljr;
.super Lanet/channel/Session;
.source "HttpSession.java"


# static fields
.field public static r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljr;->r:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lim;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lim;

    .prologue
    .line 38
    invoke-virtual {p2}, Lim;->c()Lanet/channel/entity/ConnType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lanet/channel/Session;-><init>(Landroid/content/Context;Lim;Lanet/channel/entity/ConnType;)V

    .line 39
    iget-object v0, p0, Ljr;->h:Ljy;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Ljr;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljr;->c:Ljava/lang/String;

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    :goto_0
    iput-object v0, p0, Ljr;->g:Lanet/channel/entity/ConnType;

    .line 42
    :cond_0
    return-void

    .line 40
    :cond_1
    sget-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    goto :goto_0
.end method

.method static synthetic a(Ljr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljr;

    .prologue
    .line 30
    iget-object v0, p0, Ljr;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljr;Lanet/channel/Session$Status;Lip;)V
    .locals 0
    .param p0, "x0"    # Ljr;
    .param p1, "x1"    # Lanet/channel/Session$Status;
    .param p2, "x2"    # Lip;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Ljr;->a(Lanet/channel/Session$Status;Lip;)V

    return-void
.end method

.method static synthetic a(Ljr;Lanet/channel/entity/EventType;Lip;)V
    .locals 0
    .param p0, "x0"    # Ljr;
    .param p1, "x1"    # Lanet/channel/entity/EventType;
    .param p2, "x2"    # Lip;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Ljr;->a(Lanet/channel/entity/EventType;Lip;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 45
    sget-object v0, Ljr;->r:Ljava/util/Set;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lla;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ljr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljr;

    .prologue
    .line 30
    iget-object v0, p0, Ljr;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljr;Lanet/channel/entity/EventType;Lip;)V
    .locals 0
    .param p0, "x0"    # Ljr;
    .param p1, "x1"    # Lanet/channel/entity/EventType;
    .param p2, "x2"    # Lip;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Ljr;->a(Lanet/channel/entity/EventType;Lip;)V

    return-void
.end method

.method static synthetic c(Ljr;)I
    .locals 1
    .param p0, "x0"    # Ljr;

    .prologue
    .line 30
    iget v0, p0, Ljr;->f:I

    return v0
.end method


# virtual methods
.method public final a(Lanet/channel/request/Request;Lie;)Lji;
    .locals 10
    .param p1, "request"    # Lanet/channel/request/Request;
    .param p2, "cb"    # Lie;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v9, -0x65

    const/16 v8, -0x66

    .line 105
    sget-object v0, Ljj;->a:Ljj;

    .line 107
    .local v0, "ret":Lji;
    if-eqz p1, :cond_3

    iget-object v2, p1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    .line 108
    .local v2, "rs":Lanet/channel/statist/RequestStatistic;
    :goto_0
    iget-object v4, p0, Ljr;->g:Lanet/channel/entity/ConnType;

    invoke-virtual {v2, v4}, Lanet/channel/statist/RequestStatistic;->setConnType(Lanet/channel/entity/ConnType;)V

    .line 109
    iget-wide v4, v2, Lanet/channel/statist/RequestStatistic;->start:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lanet/channel/statist/RequestStatistic;->start:J

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_4

    .line 114
    :cond_1
    if-eqz p2, :cond_2

    .line 115
    invoke-static {v8}, Lks;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4, v2}, Lie;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_2
    move-object v1, v0

    .line 152
    .end local v0    # "ret":Lji;
    .local v1, "ret":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 107
    .end local v1    # "ret":Ljava/lang/Object;
    .end local v2    # "rs":Lanet/channel/statist/RequestStatistic;
    .restart local v0    # "ret":Lji;
    :cond_3
    new-instance v2, Lanet/channel/statist/RequestStatistic;

    iget-object v4, p0, Ljr;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .restart local v2    # "rs":Lanet/channel/statist/RequestStatistic;
    :cond_4
    :try_start_0
    iget-object v4, p0, Ljr;->e:Ljava/lang/String;

    iget v5, p0, Ljr;->f:I

    invoke-virtual {p1, v4, v5}, Lanet/channel/request/Request;->a(Ljava/lang/String;I)V

    .line 121
    new-instance v1, Ljj;

    new-instance v4, Ljr$2;

    invoke-direct {v4, p0, p1, p2}, Ljr$2;-><init>(Ljr;Lanet/channel/request/Request;Lie;)V

    invoke-virtual {p1}, Lanet/channel/request/Request;->a()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Lkx;->a(Ljava/net/URL;)I

    move-result v5

    invoke-static {v4, v5}, Lkq;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 2176
    iget-object v5, p1, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 121
    invoke-direct {v1, v4, v5}, Ljj;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ret":Lji;
    .local v1, "ret":Lji;
    move-object v0, v1

    .end local v1    # "ret":Lji;
    .restart local v0    # "ret":Lji;
    :cond_5
    :goto_2
    move-object v1, v0

    .line 152
    .local v1, "ret":Ljava/lang/Object;
    goto :goto_1

    .line 147
    .end local v1    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 148
    .local v3, "t":Ljava/lang/Throwable;
    if-eqz p2, :cond_5

    .line 149
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lks;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v9, v4, v2}, Lie;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto :goto_2
.end method

.method protected final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 56
    :try_start_0
    const-string/jumbo v2, "awcn.HttpSession"

    const-string/jumbo v3, "HttpSession connect"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "host"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Ljr;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    new-instance v2, Lanet/channel/request/Request$a;

    invoke-direct {v2}, Lanet/channel/request/Request$a;-><init>()V

    iget-object v3, p0, Ljr;->c:Ljava/lang/String;

    .line 1230
    iput-object v3, v2, Lanet/channel/request/Request$a;->a:Ljava/lang/String;

    .line 57
    invoke-virtual {v2}, Lanet/channel/request/Request$a;->a()Lanet/channel/request/Request;

    move-result-object v1

    .line 58
    .local v1, "request":Lanet/channel/request/Request;
    iget-object v2, p0, Ljr;->e:Ljava/lang/String;

    iget v3, p0, Ljr;->f:I

    invoke-virtual {v1, v2, v3}, Lanet/channel/request/Request;->a(Ljava/lang/String;I)V

    .line 59
    new-instance v2, Ljr$1;

    invoke-direct {v2, p0, v1}, Ljr$1;-><init>(Ljr;Lanet/channel/request/Request;)V

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lkq;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "request":Lanet/channel/request/Request;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "awcn.HttpSession"

    const-string/jumbo v3, "HTTP connect fail."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v9, v0, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 85
    sget-object v0, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljr;->a(Lanet/channel/Session$Status;Lip;)V

    .line 86
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "autoReCreate"    # Z

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljr;->p:Z

    .line 91
    invoke-virtual {p0}, Ljr;->b()V

    .line 92
    return-void
.end method

.method protected final c()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 101
    return-void
.end method

.method public final d()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Ljr;->i:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
