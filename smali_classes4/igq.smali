.class public abstract Ligq;
.super Ligi;
.source "WebSocketClient.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ligq$a;
    }
.end annotation


# static fields
.field static final synthetic e:Z


# instance fields
.field private a:Ljava/net/Socket;

.field protected b:Ljava/net/URI;

.field public c:Ligj;

.field protected d:Ljavax/net/ssl/SSLSocketFactory;

.field private f:Ljava/io/InputStream;

.field private g:Ljava/io/OutputStream;

.field private h:Ljava/net/Proxy;

.field private i:Ljava/lang/Thread;

.field private j:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/CountDownLatch;

.field private m:Ljava/util/concurrent/CountDownLatch;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Ligq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ligq;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;Ljava/util/Map;I)V
    .locals 2
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "protocolDraft"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
    .param p4, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ligi;-><init>()V

    .line 43
    iput-object v0, p0, Ligq;->b:Ljava/net/URI;

    .line 45
    iput-object v0, p0, Ligq;->c:Ligj;

    .line 47
    iput-object v0, p0, Ligq;->a:Ljava/net/Socket;

    .line 53
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Ligq;->h:Ljava/net/Proxy;

    .line 61
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Ligq;->l:Ljava/util/concurrent/CountDownLatch;

    .line 63
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Ligq;->m:Ljava/util/concurrent/CountDownLatch;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Ligq;->n:I

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 86
    :cond_0
    if-nez p2, :cond_1

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    iput-object p1, p0, Ligq;->b:Ljava/net/URI;

    .line 90
    iput-object p2, p0, Ligq;->j:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    .line 91
    iput-object p3, p0, Ligq;->k:Ljava/util/Map;

    .line 92
    iput p4, p0, Ligq;->n:I

    .line 93
    new-instance v0, Ligj;

    invoke-direct {v0, p0, p2}, Ligj;-><init>(Ligk;Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;)V

    iput-object v0, p0, Ligq;->c:Ligj;

    .line 94
    return-void
.end method

.method static synthetic a(Ligq;)Ligj;
    .locals 1
    .param p0, "x0"    # Ligq;

    .prologue
    .line 33
    iget-object v0, p0, Ligq;->c:Ligj;

    return-object v0
.end method

.method static synthetic b(Ligq;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Ligq;

    .prologue
    .line 33
    iget-object v0, p0, Ligq;->g:Ljava/io/OutputStream;

    return-object v0
.end method

.method private d()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 264
    iget-object v2, p0, Ligq;->b:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 265
    .local v0, "port":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 266
    iget-object v2, p0, Ligq;->b:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "scheme":Ljava/lang/String;
    const-string/jumbo v2, "wss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    const/16 v0, 0x1bb

    .line 275
    .end local v0    # "port":I
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 269
    .restart local v0    # "port":I
    .restart local v1    # "scheme":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "ws"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    const/16 v0, 0x50

    goto :goto_0

    .line 272
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unkonow scheme"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private h()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 280
    iget-object v7, p0, Ligq;->b:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "part1":Ljava/lang/String;
    iget-object v7, p0, Ligq;->b:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "part2":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 283
    :cond_0
    const-string/jumbo v5, "/"

    .line 286
    .local v5, "path":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    :cond_1
    invoke-direct {p0}, Ligq;->d()I

    move-result v6

    .line 289
    .local v6, "port":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ligq;->b:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v7, 0x50

    if-eq v6, v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, ":"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "host":Ljava/lang/String;
    new-instance v0, Lihb;

    invoke-direct {v0}, Lihb;-><init>()V

    .line 292
    .local v0, "handshake":Lihb;
    invoke-virtual {v0, v5}, Lihb;->a(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v7, "Host"

    invoke-virtual {v0, v7, v1}, Lihb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v7, p0, Ligq;->k:Ljava/util/Map;

    if-eqz v7, :cond_4

    .line 295
    iget-object v7, p0, Ligq;->k:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 296
    .local v2, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lihb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 285
    .end local v0    # "handshake":Lihb;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "port":I
    :cond_2
    move-object v5, v3

    .restart local v5    # "path":Ljava/lang/String;
    goto/16 :goto_0

    .line 289
    .restart local v6    # "port":I
    :cond_3
    const-string/jumbo v7, ""

    goto :goto_1

    .line 299
    .restart local v0    # "handshake":Lihb;
    .restart local v1    # "host":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Ligq;->c:Ligj;

    .line 5611
    sget-boolean v8, Ligj;->n:Z

    if-nez v8, :cond_5

    iget-object v8, v7, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    sget-object v9, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->CONNECTING:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    if-ne v8, v9, :cond_5

    new-instance v7, Ljava/lang/AssertionError;

    const-string/jumbo v8, "shall only be called once"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 5614
    :cond_5
    iget-object v8, v7, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    invoke-virtual {v8, v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Ligz;)Ligz;

    move-result-object v8

    iput-object v8, v7, Ligj;->l:Ligy;

    .line 5616
    invoke-interface {v0}, Ligz;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Ligj;->m:Ljava/lang/String;

    .line 5617
    sget-boolean v8, Ligj;->n:Z

    if-nez v8, :cond_6

    iget-object v8, v7, Ligj;->m:Ljava/lang/String;

    if-nez v8, :cond_6

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 5631
    :cond_6
    iget-object v8, v7, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    iget-object v9, v7, Ligj;->l:Ligy;

    iget-object v10, v7, Ligj;->j:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    invoke-virtual {v8, v9, v10}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Lihd;Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ligj;->a(Ljava/util/List;)V

    .line 300
    return-void
.end method


# virtual methods
.method public final a()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Ligq;->c:Ligj;

    invoke-virtual {v0}, Ligj;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Ligq;->c:Ligj;

    invoke-virtual {v0, p1, p2}, Ligj;->a(ILjava/lang/String;)V

    .line 510
    return-void
.end method

.method public final a(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 341
    iget-object v1, p0, Ligq;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 342
    iget-object v1, p0, Ligq;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 343
    iget-object v1, p0, Ligq;->i:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Ligq;->i:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 346
    :cond_0
    :try_start_0
    iget-object v1, p0, Ligq;->a:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Ligq;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Ligq;->b(ILjava/lang/String;Z)V

    .line 352
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 6359
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Ligq;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 0
    .param p1, "cost"    # J

    .prologue
    .line 393
    return-void
.end method

.method public final a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
    .locals 1
    .param p1, "framedata"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    .prologue
    .line 524
    iget-object v0, p0, Ligq;->c:Ligj;

    invoke-virtual {v0, p1}, Ligj;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V

    .line 525
    return-void
.end method

.method public final a(Lihd;)V
    .locals 1
    .param p1, "handshake"    # Lihd;

    .prologue
    .line 332
    iget-object v0, p0, Ligq;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 333
    invoke-virtual {p0}, Ligq;->f()V

    .line 334
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Ligq;->b(Ljava/lang/Exception;)V

    .line 360
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Ligq;->c(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "cost"    # J

    .prologue
    .line 385
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "blob"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Ligq;->c(Ljava/nio/ByteBuffer;)V

    .line 320
    return-void
.end method

.method public abstract b(ILjava/lang/String;Z)V
.end method

.method public b(J)V
    .locals 0
    .param p1, "cost"    # J

    .prologue
    .line 397
    return-void
.end method

.method public final b(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
    .locals 0
    .param p1, "frame"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Ligq;->c(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V

    .line 325
    return-void
.end method

.method public abstract b(Ljava/lang/Exception;)V
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 153
    iget-object v1, p0, Ligq;->c:Ligj;

    .line 1544
    if-nez p1, :cond_0

    .line 1545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1546
    :cond_0
    iget-object v2, v1, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    iget-object v0, v1, Ligj;->j:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->CLIENT:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ligj;->a(Ljava/util/Collection;)V

    .line 154
    return-void

    .line 1546
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;J)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "cost"    # J

    .prologue
    .line 389
    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 519
    iget-object v1, p0, Ligq;->c:Ligj;

    .line 6557
    if-nez p1, :cond_0

    .line 6558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6559
    :cond_0
    iget-object v2, v1, Ligj;->i:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;

    iget-object v0, v1, Ligj;->j:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->CLIENT:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;->a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ligj;->a(Ljava/util/Collection;)V

    .line 520
    return-void

    .line 6559
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Ligq;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Ligq;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 407
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
    .locals 0
    .param p1, "frame"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    .prologue
    .line 425
    return-void
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public c(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 423
    return-void
.end method

.method public e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Ligq;->i:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Ligq;->i:Ljava/lang/Thread;

    .line 118
    iget-object v0, p0, Ligq;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 119
    return-void
.end method

.method public abstract f()V
.end method

.method public g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Ligq;->i:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Ligq;->c:Ligj;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ligj;->a(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 168
    :try_start_0
    iget-object v3, p0, Ligq;->a:Ljava/net/Socket;

    if-nez v3, :cond_3

    .line 169
    new-instance v3, Ljava/net/Socket;

    iget-object v8, p0, Ligq;->h:Ljava/net/Proxy;

    invoke-direct {v3, v8}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v3, p0, Ligq;->a:Ljava/net/Socket;

    .line 173
    :cond_0
    iget-object v3, p0, Ligq;->a:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isBound()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2222
    :try_start_1
    iget-object v3, p0, Ligq;->b:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 2223
    if-eqz v3, :cond_1

    array-length v10, v3

    if-gtz v10, :cond_4

    .line 2224
    :cond_1
    new-instance v3, Ljava/net/UnknownHostException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Unknown host : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Ligq;->b:Ljava/net/URI;

    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2228
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    .line 2229
    const-string/jumbo v10, " null "

    .line 2230
    invoke-virtual {p0, v10, v8, v9}, Ligq;->a(Ljava/lang/String;J)V

    .line 2231
    const-string/jumbo v11, "WebSocketClient"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "DNS timing: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ip: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 188
    :catch_0
    move-exception v0

    .line 2359
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Ligq;->b(Ljava/lang/Exception;)V

    .line 190
    iget-object v3, p0, Ligq;->c:Ligj;

    const/4 v8, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ligj;->b(ILjava/lang/String;)V

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 170
    :cond_3
    :try_start_3
    iget-object v3, p0, Ligq;->a:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v8, "Socket is closed"

    invoke-direct {v3, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2226
    :cond_4
    const/4 v10, 0x0

    :try_start_4
    aget-object v10, v3, v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2228
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v8

    .line 2229
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 2230
    :goto_0
    invoke-virtual {p0, v3, v8, v9}, Ligq;->a(Ljava/lang/String;J)V

    .line 2231
    const-string/jumbo v11, "WebSocketClient"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "DNS timing: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ip: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-wide v8

    .line 2237
    :try_start_6
    iget-object v3, p0, Ligq;->a:Ljava/net/Socket;

    new-instance v11, Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ligq;->d()I

    move-result v12

    invoke-direct {v11, v10, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v12, p0, Ligq;->n:I

    invoke-virtual {v3, v11, v12}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2239
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v8

    .line 2240
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 2241
    invoke-virtual {p0, v3, v8, v9}, Ligq;->b(Ljava/lang/String;J)V

    .line 2242
    const-string/jumbo v11, "WebSocketClient"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Connection timing: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ip: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    iget-object v3, p0, Ligq;->d:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_5

    .line 2250
    iget-object v3, p0, Ligq;->d:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v8, p0, Ligq;->a:Ljava/net/Socket;

    iget-object v9, p0, Ligq;->b:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Ligq;->d()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v3, v8, v9, v11, v12}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    .line 2251
    invoke-static {}, Lihw;->a()Lihv;

    iget-object v8, p0, Ligq;->b:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 2252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-wide v8

    .line 2254
    :try_start_8
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2256
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v8

    .line 2257
    invoke-virtual {p0, v8, v9}, Ligq;->a(J)V

    .line 2258
    const-string/jumbo v11, "WebSocketClient"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "SSL timing: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ip: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    iput-object v3, p0, Ligq;->a:Ljava/net/Socket;

    .line 177
    :cond_5
    iget-object v3, p0, Ligq;->a:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Ligq;->f:Ljava/io/InputStream;

    .line 178
    iget-object v3, p0, Ligq;->a:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Ligq;->g:Ljava/io/OutputStream;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-wide v6

    .line 182
    .local v6, "wsHandShakeStartTime":J
    :try_start_a
    invoke-direct {p0}, Ligq;->h()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 184
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v6

    .line 185
    .local v4, "wsHandShakeCost":J
    invoke-virtual {p0, v4, v5}, Ligq;->b(J)V

    .line 186
    const-string/jumbo v3, "WebSocketClient"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "WebSocketHandshark timing: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 194
    new-instance v3, Ljava/lang/Thread;

    new-instance v8, Ligq$a;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Ligq$a;-><init>(Ligq;B)V

    invoke-direct {v3, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Ligq;->i:Ljava/lang/Thread;

    .line 195
    iget-object v3, p0, Ligq;->i:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 197
    sget v3, Ligj;->a:I

    new-array v1, v3, [B

    .line 2484
    .local v1, "rawbuffer":[B
    :cond_6
    :try_start_c
    iget-object v3, p0, Ligq;->c:Ligj;

    .line 2690
    iget-object v3, v3, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    sget-object v8, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->CLOSED:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    if-ne v3, v8, :cond_8

    const/4 v3, 0x1

    .line 201
    :goto_1
    if-nez v3, :cond_10

    .line 3489
    iget-object v3, p0, Ligq;->c:Ligj;

    invoke-virtual {v3}, Ligj;->d()Z

    move-result v3

    .line 201
    if-nez v3, :cond_10

    iget-object v3, p0, Ligq;->f:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "readBytes":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    .line 202
    iget-object v8, p0, Ligq;->c:Ligj;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 4147
    sget-boolean v3, Ligj;->n:Z

    if-nez v3, :cond_9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 206
    .end local v2    # "readBytes":I
    :catch_1
    move-exception v3

    iget-object v3, p0, Ligq;->c:Ligj;

    invoke-virtual {v3}, Ligj;->b()V

    .line 212
    :goto_2
    sget-boolean v3, Ligq;->e:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Ligq;->a:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2229
    .end local v1    # "rawbuffer":[B
    .end local v4    # "wsHandShakeCost":J
    .end local v6    # "wsHandShakeStartTime":J
    :cond_7
    :try_start_d
    const-string/jumbo v3, " null "

    goto/16 :goto_0

    .line 2239
    :catchall_1
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v8

    .line 2240
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 2241
    invoke-virtual {p0, v10, v8, v9}, Ligq;->b(Ljava/lang/String;J)V

    .line 2242
    const-string/jumbo v11, "WebSocketClient"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Connection timing: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ip: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    throw v3

    .line 2256
    :catchall_2
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v8

    .line 2257
    invoke-virtual {p0, v8, v9}, Ligq;->a(J)V

    .line 2258
    const-string/jumbo v11, "WebSocketClient"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "SSL timing: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ip: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    throw v3

    .line 184
    .restart local v6    # "wsHandShakeStartTime":J
    :catchall_3
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v6

    .line 185
    .restart local v4    # "wsHandShakeCost":J
    invoke-virtual {p0, v4, v5}, Ligq;->b(J)V

    .line 186
    const-string/jumbo v8, "WebSocketClient"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "WebSocketHandshark timing: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    throw v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 2690
    .restart local v1    # "rawbuffer":[B
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 4149
    .restart local v2    # "readBytes":I
    :cond_9
    :try_start_e
    sget-boolean v3, Ligj;->b:Z

    if-eqz v3, :cond_a

    .line 4150
    const-string/jumbo v10, "WebSocketImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "process("

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v11, "): {"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v12, 0x3e8

    if-le v3, v12, :cond_c

    const-string/jumbo v3, "too big to display"

    :goto_3
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v11, "}"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lihq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4153
    :cond_a
    iget-object v3, v8, Ligj;->g:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    sget-object v10, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$READYSTATE;

    if-eq v3, v10, :cond_d

    .line 4154
    invoke-virtual {v8, v9}, Ligj;->b(Ljava/nio/ByteBuffer;)V

    .line 4166
    :cond_b
    :goto_4
    sget-boolean v3, Ligj;->n:Z

    if-nez v3, :cond_6

    invoke-virtual {v8}, Ligj;->d()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4685
    iget-boolean v3, v8, Ligj;->f:Z

    .line 4166
    if-nez v3, :cond_6

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    .line 207
    .end local v2    # "readBytes":I
    :catch_2
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Ligq;->b(Ljava/lang/Exception;)V

    .line 210
    iget-object v3, p0, Ligq;->c:Ligj;

    const/16 v8, 0x3ee

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ligj;->b(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 4150
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "readBytes":I
    :cond_c
    :try_start_f
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-direct {v3, v12, v13, v14}, Ljava/lang/String;-><init>([BII)V

    goto :goto_3

    .line 4156
    :cond_d
    invoke-virtual {v8, v9}, Ligj;->a(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4157
    sget-boolean v3, Ligj;->n:Z

    if-nez v3, :cond_e

    iget-object v3, v8, Ligj;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-ne v3, v10, :cond_e

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 4159
    :cond_e
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4160
    invoke-virtual {v8, v9}, Ligj;->b(Ljava/nio/ByteBuffer;)V

    goto :goto_4

    .line 4161
    :cond_f
    iget-object v3, v8, Ligj;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4162
    iget-object v3, v8, Ligj;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v3}, Ligj;->b(Ljava/nio/ByteBuffer;)V

    goto :goto_4

    .line 204
    .end local v2    # "readBytes":I
    :cond_10
    iget-object v3, p0, Ligq;->c:Ligj;

    invoke-virtual {v3}, Ligj;->b()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_2
.end method
