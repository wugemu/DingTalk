.class public Lcom/laiwang/protocol/android/bn;
.super Ljava/lang/Object;
.source "ScheduleEngine.java"

# interfaces
.implements Lcom/laiwang/protocol/push/CommandHandler$Command;


# instance fields
.field private a:Ljava/net/URI;

.field private b:Lcom/laiwang/protocol/android/Extension;

.field private c:Lcom/laiwang/protocol/android/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "sun.net.http.allowRestrictedHeaders"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/Extension;)V
    .locals 2
    .param p1, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;
    .param p2, "extension"    # Lcom/laiwang/protocol/android/Extension;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laiwang/protocol/android/bn;->a:Ljava/net/URI;

    .line 26
    iput-object p2, p0, Lcom/laiwang/protocol/android/bn;->b:Lcom/laiwang/protocol/android/Extension;

    .line 27
    new-instance v0, Lcom/laiwang/protocol/android/bm;

    invoke-direct {v0, p2}, Lcom/laiwang/protocol/android/bm;-><init>(Lcom/laiwang/protocol/android/Extension;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    .line 28
    new-instance v0, Lcom/laiwang/protocol/android/bn$1;

    const-string/jumbo v1, "load-lwp-route"

    invoke-direct {v0, p0, v1}, Lcom/laiwang/protocol/android/bn$1;-><init>(Lcom/laiwang/protocol/android/bn;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/bn;)Lcom/laiwang/protocol/android/bm;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bn;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    return-object v0
.end method

.method private declared-synchronized b(Z)Lcom/laiwang/protocol/android/bo;
    .locals 1
    .param p1, "isShort"    # Z

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/bm;->a(Z)Lcom/laiwang/protocol/android/bo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/aw;)Ljava/net/URI;
    .locals 4
    .param p1, "type"    # Lcom/laiwang/protocol/android/aw;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    sget-object v3, Lcom/laiwang/protocol/android/aw;->b:Lcom/laiwang/protocol/android/aw;

    if-ne p1, v3, :cond_0

    const/4 v1, 0x1

    .line 72
    .local v1, "isSlaver":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 73
    iget-object v3, p0, Lcom/laiwang/protocol/android/bn;->b:Lcom/laiwang/protocol/android/Extension;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/laiwang/protocol/android/bn;->b:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/Extension;->fixedShortServerURI()Ljava/net/URI;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/laiwang/protocol/android/bn;->b:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/Extension;->fixedShortServerURI()Ljava/net/URI;

    move-result-object v3

    .line 88
    :goto_1
    return-object v3

    .line 71
    .end local v1    # "isSlaver":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    .restart local v1    # "isSlaver":Z
    :cond_1
    iget-object v3, p0, Lcom/laiwang/protocol/android/bn;->b:Lcom/laiwang/protocol/android/Extension;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/laiwang/protocol/android/bn;->b:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/Extension;->fixedServerURI()Ljava/net/URI;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 78
    iget-object v3, p0, Lcom/laiwang/protocol/android/bn;->b:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/Extension;->fixedServerURI()Ljava/net/URI;

    move-result-object v3

    goto :goto_1

    .line 81
    :cond_2
    const/4 v2, 0x0

    .line 82
    .local v2, "vip":Lcom/laiwang/protocol/android/bo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v3, 0x3

    if-ge v0, v3, :cond_3

    .line 83
    invoke-direct {p0, v1}, Lcom/laiwang/protocol/android/bn;->b(Z)Lcom/laiwang/protocol/android/bo;

    move-result-object v2

    .line 84
    if-nez v2, :cond_3

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 88
    :cond_3
    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/laiwang/protocol/android/bn;->a:Ljava/net/URI;

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bo;->a()Ljava/net/URI;

    move-result-object v3

    goto :goto_1
.end method

.method public a(Lcom/laiwang/protocol/android/bm$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/android/bm$a;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/bm;->a(Lcom/laiwang/protocol/android/bm$a;)V

    .line 43
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Ljava/net/URI;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "isShort"    # Z

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->b:Lcom/laiwang/protocol/android/Extension;

    if-eqz v0, :cond_2

    .line 47
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->b:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->fixedServerURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->b:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->fixedServerURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->b:Lcom/laiwang/protocol/android/Extension;

    .line 48
    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->fixedShortServerURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->b:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->fixedShortServerURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/bm;->a(Ljava/net/URI;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 2
    .param p1, "isHttp"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bm;->d()V

    .line 112
    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/laiwang/protocol/android/bm;->a(ZZ)V

    .line 113
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bm;->c()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized b(Ljava/net/URI;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "isShort"    # Z

    .prologue
    .line 57
    monitor-enter p0

    if-nez p1, :cond_0

    .line 59
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/bm;->b(Ljava/net/URI;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/net/URI;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "isShort"    # Z

    .prologue
    .line 62
    monitor-enter p0

    if-nez p1, :cond_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/bm;->c(Ljava/net/URI;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doExecute(Ljava/lang/String;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 5
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/lang/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "callback":Lcom/laiwang/protocol/lang/Callback;, "Lcom/laiwang/protocol/lang/Callback<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 97
    const-string/jumbo v1, "refresh aladdin"

    invoke-interface {p2, v1}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 98
    const-string/jumbo v1, "refresh"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bm;->d()V

    .line 100
    iget-object v1, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    invoke-virtual {v1, v4, v4}, Lcom/laiwang/protocol/android/bm;->a(ZZ)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "uris "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string/jumbo v1, "uris "

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/laiwang/protocol/android/bl;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "vips":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bm;->d()V

    .line 105
    iget-object v1, p0, Lcom/laiwang/protocol/android/bn;->c:Lcom/laiwang/protocol/android/bm;

    invoke-virtual {v1, v0, v4}, Lcom/laiwang/protocol/android/bm;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method
