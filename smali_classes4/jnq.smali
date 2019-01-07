.class public final Ljnq;
.super Ljava/lang/Object;
.source "HttpProxyCacheServerClients.java"

# interfaces
.implements Ljnn;
.implements Ljns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljnq$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public volatile f:Ljnp;

.field public g:Ljnr;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljnk;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljnk;

.field private final l:Ljnl;

.field private m:J

.field private n:J

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljnz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljnl;Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "config"    # Ljnl;
    .param p3, "proxyCacheServer"    # Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljnq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljnq;->j:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljnq;->o:Ljava/util/Map;

    .line 49
    invoke-static {p1}, Ljnu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljnq;->h:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Ljnq;->h:Ljava/lang/String;

    iput-object v0, p0, Ljnq;->b:Ljava/lang/String;

    .line 51
    invoke-static {p2}, Ljnu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljnl;

    iput-object v0, p0, Ljnq;->l:Ljnl;

    .line 52
    new-instance v0, Ljnq$a;

    iget-object v1, p0, Ljnq;->j:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Ljnq$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Ljnq;->k:Ljnk;

    .line 53
    iput-object p3, p0, Ljnq;->i:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljnz;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljnq;->o:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljnq;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljnq;->l:Ljnl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljnq;->l:Ljnl;

    iget-object v2, v2, Ljnl;->b:Ljoc;

    if-nez v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-object v1

    .line 149
    :cond_1
    iget-object v2, p0, Ljnq;->l:Ljnl;

    iget-object v2, v2, Ljnl;->b:Ljoc;

    invoke-interface {v2, p1}, Ljoc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    iget-object v1, p0, Ljnq;->o:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljnz;

    goto :goto_0
.end method

.method public declared-synchronized a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljnq;->f:Ljnp;

    if-nez v0, :cond_0

    .line 1117
    new-instance v0, Ljnr;

    iget-object v2, p0, Ljnq;->b:Ljava/lang/String;

    iget-object v3, p0, Ljnq;->c:Ljava/lang/String;

    iget-boolean v4, p0, Ljnq;->d:Z

    iget-object v5, p0, Ljnq;->e:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljnr;-><init>(Ljns;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v0, p0, Ljnq;->g:Ljnr;

    .line 1118
    new-instance v1, Ljob;

    iget-object v0, p0, Ljnq;->l:Ljnl;

    iget-object v2, p0, Ljnq;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljnl;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Ljnq;->l:Ljnl;

    iget-object v2, v2, Ljnl;->c:Ljoa;

    invoke-direct {v1, v0, v2}, Ljob;-><init>(Ljava/io/File;Ljoa;)V

    .line 1119
    new-instance v0, Ljnp;

    iget-object v2, p0, Ljnq;->g:Ljnr;

    iget-object v3, p0, Ljnq;->i:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    invoke-direct {v0, v2, v1, v3}, Ljnp;-><init>(Ljnr;Ljnj;Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V

    .line 1120
    iget-object v1, p0, Ljnq;->k:Ljnk;

    .line 2036
    iput-object v1, v0, Ljnp;->c:Ljnk;

    .line 2040
    iput-object p0, v0, Ljnp;->d:Ljnn;

    .line 75
    :goto_0
    iput-object v0, p0, Ljnq;->f:Ljnp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljnq;->f:Ljnp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(II)V
    .locals 4
    .param p1, "readBytes"    # I
    .param p2, "readBytesFromCache"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 127
    iget-wide v0, p0, Ljnq;->m:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljnq;->m:J

    .line 128
    iget-wide v0, p0, Ljnq;->n:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljnq;->n:J

    .line 129
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "mime"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljnq;->o:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljnq;->l:Ljnl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljnq;->l:Ljnl;

    iget-object v2, v2, Ljnl;->b:Ljoc;

    if-nez v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v2, p0, Ljnq;->l:Ljnl;

    iget-object v2, v2, Ljnl;->b:Ljoc;

    invoke-interface {v2, p1}, Ljoc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    new-instance v1, Ljnz;

    invoke-direct {v1}, Ljnz;-><init>()V

    .line 140
    .local v1, "urlMime":Ljnz;
    invoke-virtual {v1, p2}, Ljnz;->a(I)V

    .line 141
    invoke-virtual {v1, p3}, Ljnz;->a(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Ljnq;->o:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljnq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    .line 80
    iget-object v0, p0, Ljnq;->f:Ljnp;

    invoke-virtual {v0}, Ljnp;->a()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Ljnq;->f:Ljnp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljnq;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    iget-object v0, p0, Ljnq;->f:Ljnp;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Ljnq;->f:Ljnp;

    const/4 v1, 0x0

    .line 3036
    iput-object v1, v0, Ljnp;->c:Ljnk;

    .line 97
    iget-object v0, p0, Ljnq;->f:Ljnp;

    const/4 v1, 0x0

    .line 3040
    iput-object v1, v0, Ljnp;->d:Ljnn;

    .line 98
    iget-object v0, p0, Ljnq;->f:Ljnp;

    invoke-virtual {v0}, Ljnp;->a()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Ljnq;->f:Ljnp;

    .line 101
    :cond_0
    iget-object v0, p0, Ljnq;->o:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Ljnq;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    :cond_1
    iget-object v0, p0, Ljnq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :try_start_1
    const-string/jumbo v0, "Page_VideoCache"

    sget-object v1, Lcom/taobao/statistic/CT;->Button:Lcom/taobao/statistic/CT;

    const-string/jumbo v2, "PlayerCache"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "play_token="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Ljnq;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "read_from_download="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Ljnq;->m:J

    iget-wide v8, p0, Ljnq;->n:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "read_from_cache="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Ljnq;->n:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/statistic/TBS$Adv;->ctrlClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method
