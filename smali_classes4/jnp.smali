.class public final Ljnp;
.super Ljnv;
.source "HttpProxyCache.java"


# instance fields
.field public final a:Ljnr;

.field public final b:Ljnj;

.field c:Ljnk;

.field d:Ljnn;


# direct methods
.method public constructor <init>(Ljnr;Ljnj;Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V
    .locals 0
    .param p1, "source"    # Ljnr;
    .param p2, "cache"    # Ljnj;
    .param p3, "proxyCacheServer"    # Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Ljnv;-><init>(Ljnx;Ljnj;Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V

    .line 31
    iput-object p2, p0, Ljnp;->b:Ljnj;

    .line 32
    iput-object p1, p0, Ljnp;->a:Ljnr;

    .line 33
    return-void
.end method

.method private a(II)V
    .locals 1
    .param p1, "readBytes"    # I
    .param p2, "readBytesFromCache"    # I

    .prologue
    .line 124
    iget-object v0, p0, Ljnp;->d:Ljnn;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Ljnp;->d:Ljnn;

    invoke-interface {v0, p1, p2}, Ljnn;->a(II)V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2
    .param p1, "percents"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Ljnp;->c:Ljnk;

    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Ljnp;->c:Ljnk;

    iget-object v0, p0, Ljnp;->b:Ljnj;

    check-cast v0, Ljob;

    iget-object v0, v0, Ljob;->a:Ljava/io/File;

    invoke-interface {v1, v0, p1}, Ljnk;->a(Ljava/io/File;I)V

    .line 135
    :cond_0
    return-void
.end method

.method public a(Ljava/io/OutputStream;J)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2000

    .line 87
    new-array v1, v6, [B

    .line 89
    .local v1, "buffer":[B
    iget-object v4, p0, Ljnp;->b:Ljnj;

    invoke-interface {v4}, Ljnj;->a()I

    move-result v0

    .line 90
    .local v0, "available":I
    :goto_0
    invoke-virtual {p0, v1, p2, p3, v6}, Ljnp;->a([BJI)I

    move-result v2

    .local v2, "readBytes":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 91
    int-to-long v4, v0

    sub-long/2addr v4, p2

    long-to-int v3, v4

    .line 92
    .local v3, "readBytesFromCache":I
    if-gez v3, :cond_1

    .line 93
    const/4 v3, 0x0

    .line 96
    :cond_0
    :goto_1
    invoke-direct {p0, v2, v3}, Ljnp;->a(II)V

    .line 97
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 98
    int-to-long v4, v2

    add-long/2addr p2, v4

    goto :goto_0

    .line 94
    :cond_1
    if-le v3, v2, :cond_0

    .line 95
    move v3, v2

    goto :goto_1

    .line 101
    .end local v3    # "readBytesFromCache":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 102
    return-void
.end method

.method public b(Ljava/io/OutputStream;J)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Ljnr;

    iget-object v3, p0, Ljnp;->a:Ljnr;

    invoke-direct {v1, v3}, Ljnr;-><init>(Ljnr;)V

    .line 108
    .local v1, "newSourceNoCache":Ljnr;
    long-to-int v3, p2

    :try_start_0
    invoke-virtual {v1, v3}, Ljnr;->a(I)V

    .line 109
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 111
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljnr;->a([B)I

    move-result v2

    .local v2, "readBytes":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 112
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 115
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljnp;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    .end local v0    # "buffer":[B
    .end local v2    # "readBytes":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljnr;->b()V

    throw v3

    .line 117
    .restart local v0    # "buffer":[B
    .restart local v2    # "readBytes":I
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-virtual {v1}, Ljnr;->b()V

    .line 120
    return-void
.end method
