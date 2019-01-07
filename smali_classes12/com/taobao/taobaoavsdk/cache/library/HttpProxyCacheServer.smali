.class public Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;,
        Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$a;,
        Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$b;,
        Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljnq;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljnl;

.field public d:Z

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Ljava/net/ServerSocket;

.field private final g:I

.field private final h:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    new-instance v0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;

    invoke-direct {v0, p1}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;->a(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;)Ljnl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;-><init>(Ljnl;)V

    .line 154
    return-void
.end method

.method private constructor <init>(Ljnl;)V
    .locals 6
    .param p1, "config"    # Ljnl;

    .prologue
    const/16 v4, 0x8

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a:Ljava/lang/Object;

    .line 62
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->e:Ljava/util/concurrent/ExecutorService;

    .line 63
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->b:Ljava/util/Map;

    .line 158
    invoke-static {p1}, Ljnu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljnl;

    iput-object v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->c:Ljnl;

    .line 160
    :try_start_0
    const-string/jumbo v3, "127.0.0.1"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 161
    .local v1, "inetAddress":Ljava/net/InetAddress;
    new-instance v3, Ljava/net/ServerSocket;

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-direct {v3, v4, v5, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->f:Ljava/net/ServerSocket;

    .line 162
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->f:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    iput v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->g:I

    .line 163
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 164
    .local v2, "startSignal":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$c;

    invoke-direct {v4, p0, v2}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$c;-><init>(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->h:Ljava/lang/Thread;

    .line 165
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->h:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 166
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 167
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$1;

    invoke-direct {v4, p0}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$1;-><init>(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return-void

    .line 173
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    .end local v2    # "startSignal":Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 175
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error starting local proxy server"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public synthetic constructor <init>(Ljnl;B)V
    .locals 0
    .param p1, "x0"    # Ljnl;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;-><init>(Ljnl;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V
    .locals 6
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    .prologue
    const/4 v0, 0x0

    .line 55
    .line 2181
    const/16 v1, 0x12c

    move v2, v1

    move v1, v0

    .line 2183
    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_2

    .line 2185
    :try_start_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$a;-><init>(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;B)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 2186
    int-to-long v4, v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->d:Z

    .line 2187
    iget-boolean v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->d:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_1

    .line 2301
    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 2192
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    .line 2193
    mul-int/lit8 v1, v2, 0x2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 2292
    :cond_2
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->b()V

    .line 2294
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2296
    :try_start_1
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->f:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->f:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 55
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;Ljava/net/Socket;)V
    .locals 14
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 55
    .line 2327
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljno;->a(Ljava/io/InputStream;)Ljno;

    move-result-object v7

    .line 2328
    iget-object v0, v7, Ljno;->a:Ljava/lang/String;

    invoke-static {v0}, Ljnw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2329
    const-string/jumbo v1, "ping"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2350
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 2351
    const-string/jumbo v1, "HTTP/1.1 200 OK\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2352
    const-string/jumbo v1, "ping ok"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2345
    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a(Ljava/net/Socket;)V

    .line 2346
    :goto_1
    return-void

    .line 2332
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->b(Ljava/lang/String;)Ljnq;

    move-result-object v8

    .line 3057
    if-eqz v7, :cond_1

    .line 3058
    iget-object v0, v7, Ljno;->d:Ljava/lang/String;

    iput-object v0, v8, Ljnq;->c:Ljava/lang/String;

    .line 3059
    iget-boolean v0, v7, Ljno;->e:Z

    iput-boolean v0, v8, Ljnq;->d:Z

    .line 3060
    iget-object v0, v7, Ljno;->f:Ljava/lang/String;

    iput-object v0, v8, Ljnq;->e:Ljava/lang/String;

    .line 3062
    :cond_1
    invoke-virtual {v8}, Ljnq;->a()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3064
    :try_start_2
    iget-object v0, v8, Ljnq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3065
    iget-object v9, v8, Ljnq;->f:Ljnp;

    .line 4044
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4070
    iget-object v0, v9, Ljnp;->a:Ljnr;

    invoke-virtual {v0}, Ljnr;->c()Ljava/lang/String;

    move-result-object v11

    .line 4071
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v6, v0

    .line 4072
    :goto_2
    iget-object v0, v9, Ljnp;->b:Ljnj;

    invoke-interface {v0}, Ljnj;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Ljnp;->b:Ljnj;

    invoke-interface {v0}, Ljnj;->a()I

    move-result v0

    move v5, v0

    .line 4073
    :goto_3
    if-ltz v5, :cond_4

    const/4 v0, 0x1

    move v4, v0

    .line 4074
    :goto_4
    iget-boolean v0, v7, Ljno;->c:Z

    if-eqz v0, :cond_5

    int-to-long v0, v5

    iget-wide v2, v7, Ljno;->b:J

    sub-long/2addr v0, v2

    move-wide v2, v0

    .line 4075
    :goto_5
    if-eqz v4, :cond_6

    iget-boolean v0, v7, Ljno;->c:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v1, v0

    .line 4076
    :goto_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, v7, Ljno;->c:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "HTTP/1.1 206 PARTIAL CONTENT\n"

    .line 4077
    :goto_7
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v12, "Accept-Ranges: bytes\n"

    .line 4078
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v4, :cond_8

    const-string/jumbo v0, "Content-Length: %d\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 4079
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v13

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_9

    const-string/jumbo v0, "Content-Range: bytes %d-%d/%d\n"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v12, v7, Ljno;->b:J

    .line 4080
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    add-int/lit8 v4, v5, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v6, :cond_a

    const-string/jumbo v0, "Content-Type: %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    .line 4081
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    .line 4082
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4083
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4046
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V

    .line 4047
    iget-wide v2, v7, Ljno;->b:J

    .line 5056
    iget-object v0, v9, Ljnp;->b:Ljnj;

    if-eqz v0, :cond_b

    iget-object v0, v9, Ljnp;->b:Ljnj;

    invoke-interface {v0}, Ljnj;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5057
    const/4 v0, 0x1

    .line 4048
    :goto_b
    if-eqz v0, :cond_f

    .line 4049
    invoke-virtual {v9, v10, v2, v3}, Ljnp;->a(Ljava/io/OutputStream;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3069
    :goto_c
    :try_start_3
    iget-object v0, v8, Ljnq;->f:Ljnp;

    iget-object v0, v0, Ljnp;->a:Ljnr;

    .line 5388
    iget-object v0, v0, Ljnr;->a:Ljava/lang/String;

    .line 3069
    iput-object v0, v8, Ljnq;->b:Ljava/lang/String;

    .line 3070
    invoke-virtual {v8}, Ljnq;->b()V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 2345
    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a(Ljava/net/Socket;)V

    goto/16 :goto_1

    .line 4071
    :cond_2
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_2

    .line 4072
    :cond_3
    :try_start_4
    iget-object v0, v9, Ljnp;->a:Ljnr;

    invoke-virtual {v0}, Ljnr;->a()I

    move-result v0

    move v5, v0

    goto/16 :goto_3

    .line 4073
    :cond_4
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_4

    .line 4074
    :cond_5
    int-to-long v0, v5

    move-wide v2, v0

    goto/16 :goto_5

    .line 4075
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_6

    .line 4076
    :cond_7
    const-string/jumbo v0, "HTTP/1.1 200 OK\n"

    goto/16 :goto_7

    .line 4079
    :cond_8
    const-string/jumbo v0, ""

    goto/16 :goto_8

    .line 4080
    :cond_9
    const-string/jumbo v0, ""

    goto/16 :goto_9

    .line 4081
    :cond_a
    const-string/jumbo v0, ""

    goto :goto_a

    .line 5058
    :cond_b
    iget-object v0, v9, Ljnp;->a:Ljnr;

    invoke-virtual {v0}, Ljnr;->a()I

    move-result v1

    .line 5060
    const/4 v0, -0x1

    if-eq v1, v0, :cond_e

    .line 5063
    if-lez v1, :cond_d

    const/4 v0, 0x1

    .line 5064
    :goto_d
    iget-object v4, v9, Ljnp;->b:Ljnj;

    invoke-interface {v4}, Ljnj;->a()I

    move-result v4

    .line 5066
    if-eqz v0, :cond_c

    iget-boolean v0, v7, Ljno;->c:Z

    if-eqz v0, :cond_c

    iget-wide v6, v7, Ljno;->b:J

    long-to-float v0, v6

    int-to-float v4, v4

    int-to-float v1, v1

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_b

    .line 5063
    :cond_d
    const/4 v0, 0x0

    goto :goto_d

    .line 5066
    :cond_e
    const/4 v0, 0x0

    goto :goto_b

    .line 4051
    :cond_f
    invoke-virtual {v9, v10, v2, v3}, Ljnp;->b(Ljava/io/OutputStream;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_c

    .line 3069
    :catch_1
    move-exception v0

    :try_start_5
    iget-object v0, v8, Ljnq;->f:Ljnp;

    iget-object v0, v0, Ljnp;->a:Ljnr;

    .line 6388
    iget-object v0, v0, Ljnr;->a:Ljava/lang/String;

    .line 3069
    iput-object v0, v8, Ljnq;->b:Ljava/lang/String;

    .line 3070
    invoke-virtual {v8}, Ljnq;->b()V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 2345
    :catch_2
    move-exception v0

    invoke-direct {p0, p1}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a(Ljava/net/Socket;)V

    goto/16 :goto_1

    .line 3069
    :catchall_0
    move-exception v0

    :try_start_6
    iget-object v1, v8, Ljnq;->f:Ljnp;

    iget-object v1, v1, Ljnp;->a:Ljnr;

    .line 7388
    iget-object v1, v1, Ljnr;->a:Ljava/lang/String;

    .line 3069
    iput-object v1, v8, Ljnq;->b:Ljava/lang/String;

    .line 3070
    invoke-virtual {v8}, Ljnq;->b()V

    throw v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2341
    :catch_3
    move-exception v0

    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->d:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2345
    invoke-direct {p0, p1}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a(Ljava/net/Socket;)V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    invoke-direct {p0, p1}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a(Ljava/net/Socket;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    invoke-direct {p0, p1}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a(Ljava/net/Socket;)V

    throw v0
.end method

.method private a(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 378
    .line 1385
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1386
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1398
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1399
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1408
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1409
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1413
    :cond_2
    :goto_2
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0

    .line 1393
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private a()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 199
    const-string/jumbo v5, "ping"

    invoke-virtual {p0, v5}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "pingUrl":Ljava/lang/String;
    new-instance v4, Ljnr;

    invoke-direct {v4, v2}, Ljnr;-><init>(Ljava/lang/String;)V

    .line 202
    .local v4, "source":Ljnr;
    :try_start_0
    const-string/jumbo v5, "ping ok"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 203
    .local v0, "expectedResponse":[B
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljnr;->a(I)V

    .line 204
    array-length v5, v0

    new-array v3, v5, [B

    .line 205
    .local v3, "response":[B
    invoke-virtual {v4, v3}, Ljnr;->a([B)I

    .line 206
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 211
    .local v1, "pingOk":Z
    invoke-virtual {v4}, Ljnr;->b()V

    .end local v0    # "expectedResponse":[B
    .end local v1    # "pingOk":Z
    .end local v3    # "response":[B
    :goto_0
    return v1

    :catch_0
    move-exception v5

    invoke-virtual {v4}, Ljnr;->b()V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljnr;->b()V

    throw v5
.end method

.method private b(Ljava/lang/String;)Ljnq;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 356
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 357
    :try_start_0
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->c:Ljnl;

    iget-object v2, v2, Ljnl;->b:Ljoc;

    invoke-interface {v2, p1}, Ljoc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "urlkey":Ljava/lang/String;
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljnq;

    .line 359
    .local v0, "clients":Ljnq;
    if-nez v0, :cond_0

    .line 360
    new-instance v0, Ljnq;

    .end local v0    # "clients":Ljnq;
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->c:Ljnl;

    invoke-direct {v0, p1, v2, p0}, Ljnq;-><init>(Ljava/lang/String;Ljnl;Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V

    .line 361
    .restart local v0    # "clients":Ljnq;
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_0
    monitor-exit v3

    return-object v0

    .line 364
    .end local v0    # "clients":Ljnq;
    .end local v1    # "urlkey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljnq;

    .line 307
    .local v0, "clients":Ljnq;
    invoke-virtual {v0}, Ljnq;->c()V

    goto :goto_0

    .line 310
    .end local v0    # "clients":Ljnq;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 309
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 310
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic b(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V
    .locals 3
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    .prologue
    .line 55
    .line 2316
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->f:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 2318
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$b;

    invoke-direct {v2, p0, v0}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$b;-><init>(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 2322
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    const-string/jumbo v0, "http://%s:%d/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "127.0.0.1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljnw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
