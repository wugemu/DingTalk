.class public final Lknr;
.super Lkom$b;
.source "RealConnection.java"

# interfaces
.implements Lkml;


# instance fields
.field public final a:Lkng;

.field public b:Ljava/net/Socket;

.field public c:Lkmu;

.field d:Lkom;

.field e:Lokio/BufferedSource;

.field f:Lokio/BufferedSink;

.field public g:Z

.field public h:I

.field public i:I

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lknu;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:J

.field private final m:Lkmm;

.field private n:Ljava/net/Socket;

.field private o:Lokhttp3/Protocol;


# direct methods
.method public constructor <init>(Lkmm;Lkng;)V
    .locals 2
    .param p1, "connectionPool"    # Lkmm;
    .param p2, "route"    # Lkng;

    .prologue
    .line 117
    invoke-direct {p0}, Lkom$b;-><init>()V

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lknr;->i:I

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lknr;->j:Ljava/util/List;

    .line 115
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lknr;->k:J

    .line 118
    iput-object p1, p0, Lknr;->m:Lkmm;

    .line 119
    iput-object p2, p0, Lknr;->a:Lkng;

    .line 120
    return-void
.end method

.method private a(I)V
    .locals 7
    .param p1, "pingIntervalMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const v5, 0xffff

    const/4 v6, 0x0

    .line 291
    iget-object v0, p0, Lknr;->b:Ljava/net/Socket;

    invoke-virtual {v0, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 292
    new-instance v0, Lkom$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkom$a;-><init>(Z)V

    iget-object v1, p0, Lknr;->b:Ljava/net/Socket;

    iget-object v2, p0, Lknr;->a:Lkng;

    .line 24058
    iget-object v2, v2, Lkng;->a:Lkme;

    .line 24093
    iget-object v2, v2, Lkme;->a:Lkmw;

    .line 24486
    iget-object v2, v2, Lkmw;->b:Ljava/lang/String;

    .line 293
    iget-object v3, p0, Lknr;->e:Lokio/BufferedSource;

    iget-object v4, p0, Lknr;->f:Lokio/BufferedSink;

    .line 24565
    iput-object v1, v0, Lkom$a;->a:Ljava/net/Socket;

    .line 24566
    iput-object v2, v0, Lkom$a;->b:Ljava/lang/String;

    .line 24567
    iput-object v3, v0, Lkom$a;->c:Lokio/BufferedSource;

    .line 24568
    iput-object v4, v0, Lkom$a;->d:Lokio/BufferedSink;

    .line 24573
    iput-object p0, v0, Lkom$a;->e:Lkom$b;

    .line 24583
    iput p1, v0, Lkom$a;->h:I

    .line 24588
    new-instance v1, Lkom;

    invoke-direct {v1, v0}, Lkom;-><init>(Lkom$a;)V

    .line 296
    iput-object v1, p0, Lknr;->d:Lkom;

    .line 297
    iget-object v0, p0, Lknr;->d:Lkom;

    .line 25513
    iget-object v1, v0, Lkom;->p:Lkop;

    invoke-virtual {v1}, Lkop;->a()V

    .line 25514
    iget-object v1, v0, Lkom;->p:Lkop;

    iget-object v2, v0, Lkom;->l:Lkos;

    invoke-virtual {v1, v2}, Lkop;->b(Lkos;)V

    .line 25515
    iget-object v1, v0, Lkom;->l:Lkos;

    invoke-virtual {v1}, Lkos;->b()I

    move-result v1

    .line 25516
    if-eq v1, v5, :cond_0

    .line 25517
    iget-object v2, v0, Lkom;->p:Lkop;

    sub-int/2addr v1, v5

    int-to-long v4, v1

    invoke-virtual {v2, v6, v4, v5}, Lkop;->a(IJ)V

    .line 25520
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    iget-object v0, v0, Lkom;->q:Lkom$d;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 298
    return-void
.end method

.method private a(IIILkmi;Lkms;)V
    .locals 10
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "call"    # Lkmi;
    .param p5, "eventListener"    # Lkms;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 214
    .line 9421
    new-instance v3, Lknc$a;

    invoke-direct {v3}, Lknc$a;-><init>()V

    iget-object v4, p0, Lknr;->a:Lkng;

    .line 10058
    iget-object v4, v4, Lkng;->a:Lkme;

    .line 10093
    iget-object v4, v4, Lkme;->a:Lkmw;

    .line 9422
    invoke-virtual {v3, v4}, Lknc$a;->a(Lkmw;)Lknc$a;

    move-result-object v3

    const-string/jumbo v4, "Host"

    iget-object v5, p0, Lknr;->a:Lkng;

    .line 11058
    iget-object v5, v5, Lkng;->a:Lkme;

    .line 11093
    iget-object v5, v5, Lkme;->a:Lkmw;

    .line 9423
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lknj;->a(Lkmw;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lknc$a;->a(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    move-result-object v3

    const-string/jumbo v4, "Proxy-Connection"

    const-string/jumbo v5, "Keep-Alive"

    .line 9424
    invoke-virtual {v3, v4, v5}, Lknc$a;->a(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    move-result-object v3

    const-string/jumbo v4, "User-Agent"

    .line 12020
    const-string/jumbo v5, "okhttp/3.11.0"

    .line 9425
    invoke-virtual {v3, v4, v5}, Lknc$a;->a(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    move-result-object v3

    .line 9426
    invoke-virtual {v3}, Lknc$a;->a()Lknc;

    move-result-object v1

    .line 12049
    .local v1, "tunnelRequest":Lknc;
    iget-object v2, v1, Lknc;->a:Lkmw;

    .line 216
    .local v2, "url":Lkmw;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x15

    if-ge v0, v3, :cond_3

    .line 217
    invoke-direct {p0, p1, p2, p4, p5}, Lknr;->a(IILkmi;Lkms;)V

    .line 12368
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CONNECT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lknj;->a(Lkmw;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " HTTP/1.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12370
    new-instance v6, Lkoh;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lknr;->e:Lokio/BufferedSource;

    iget-object v8, p0, Lknr;->f:Lokio/BufferedSink;

    invoke-direct {v6, v4, v5, v7, v8}, Lkoh;-><init>(Lkna;Lknu;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 12371
    iget-object v4, p0, Lknr;->e:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v4

    int-to-long v8, p2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v8, v9, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 12372
    iget-object v4, p0, Lknr;->f:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v4

    int-to-long v8, p3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v8, v9, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 13057
    iget-object v4, v1, Lknc;->c:Lkmv;

    .line 12373
    invoke-virtual {v6, v4, v3}, Lkoh;->a(Lkmv;Ljava/lang/String;)V

    .line 12374
    invoke-virtual {v6}, Lkoh;->b()V

    .line 12375
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lkoh;->a(Z)Lkne$a;

    move-result-object v3

    .line 13332
    iput-object v1, v3, Lkne$a;->a:Lknc;

    .line 12377
    invoke-virtual {v3}, Lkne$a;->a()Lkne;

    move-result-object v3

    .line 12380
    invoke-static {v3}, Lknz;->a(Lkne;)J

    move-result-wide v4

    .line 12381
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_0

    .line 12382
    const-wide/16 v4, 0x0

    .line 12384
    :cond_0
    invoke-virtual {v6, v4, v5}, Lkoh;->a(J)Lokio/Source;

    move-result-object v4

    .line 12385
    const v5, 0x7fffffff

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v6}, Lknj;->b(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 12386
    invoke-interface {v4}, Lokio/Source;->close()V

    .line 14098
    iget v4, v3, Lkne;->c:I

    .line 12388
    sparse-switch v4, :sswitch_data_0

    .line 12409
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unexpected response code for CONNECT: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16098
    iget v3, v3, Lkne;->c:I

    .line 12410
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 12394
    :sswitch_0
    iget-object v3, p0, Lknr;->e:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->exhausted()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lknr;->f:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->exhausted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 12395
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "TLS tunnel buffered too many bytes!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 12397
    :cond_2
    const/4 v1, 0x0

    .line 220
    if-eqz v1, :cond_3

    .line 224
    iget-object v3, p0, Lknr;->n:Ljava/net/Socket;

    invoke-static {v3}, Lknj;->a(Ljava/net/Socket;)V

    .line 225
    const/4 v3, 0x0

    iput-object v3, p0, Lknr;->n:Ljava/net/Socket;

    .line 226
    const/4 v3, 0x0

    iput-object v3, p0, Lknr;->f:Lokio/BufferedSink;

    .line 227
    const/4 v3, 0x0

    iput-object v3, p0, Lknr;->e:Lokio/BufferedSource;

    .line 228
    iget-object v3, p0, Lknr;->a:Lkng;

    .line 17072
    iget-object v3, v3, Lkng;->c:Ljava/net/InetSocketAddress;

    .line 228
    iget-object v4, p0, Lknr;->a:Lkng;

    .line 18068
    iget-object v4, v4, Lkng;->b:Ljava/net/Proxy;

    .line 228
    const/4 v5, 0x0

    invoke-virtual {p5, p4, v3, v4, v5}, Lkms;->connectEnd(Lkmi;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 12400
    :sswitch_1
    iget-object v3, p0, Lknr;->a:Lkng;

    .line 15058
    iget-object v3, v3, Lkng;->a:Lkme;

    .line 15108
    iget-object v3, v3, Lkme;->d:Lkmf;

    .line 12400
    invoke-interface {v3}, Lkmf;->a()Lknc;

    .line 12401
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Failed to authenticate with proxy"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :cond_3
    return-void

    .line 12388
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(IILkmi;Lkms;)V
    .locals 8
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "call"    # Lkmi;
    .param p4, "eventListener"    # Lkms;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 235
    iget-object v5, p0, Lknr;->a:Lkng;

    .line 19068
    iget-object v4, v5, Lkng;->b:Ljava/net/Proxy;

    .line 236
    .local v4, "proxy":Ljava/net/Proxy;
    iget-object v5, p0, Lknr;->a:Lkng;

    .line 20058
    iget-object v0, v5, Lkng;->a:Lkme;

    .line 238
    .local v0, "address":Lkme;
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_2

    .line 20103
    :cond_0
    iget-object v5, v0, Lkme;->c:Ljavax/net/SocketFactory;

    .line 239
    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    .line 240
    :goto_0
    iput-object v5, p0, Lknr;->n:Ljava/net/Socket;

    .line 242
    iget-object v5, p0, Lknr;->a:Lkng;

    .line 21072
    iget-object v5, v5, Lkng;->c:Ljava/net/InetSocketAddress;

    .line 242
    invoke-virtual {p4, p3, v5, v4}, Lkms;->connectStart(Lkmi;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 243
    iget-object v5, p0, Lknr;->n:Ljava/net/Socket;

    invoke-virtual {v5, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 245
    :try_start_0
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v5

    iget-object v6, p0, Lknr;->n:Ljava/net/Socket;

    iget-object v7, p0, Lknr;->a:Lkng;

    .line 22072
    iget-object v7, v7, Lkng;->c:Ljava/net/InetSocketAddress;

    .line 245
    invoke-virtual {v5, v6, v7, p1}, Lkoy;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :try_start_1
    iget-object v5, p0, Lknr;->n:Ljava/net/Socket;

    invoke-static {v5}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    iput-object v5, p0, Lknr;->e:Lokio/BufferedSource;

    .line 258
    iget-object v5, p0, Lknr;->n:Ljava/net/Socket;

    invoke-static {v5}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5

    iput-object v5, p0, Lknr;->f:Lokio/BufferedSink;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    :cond_1
    return-void

    .line 240
    :cond_2
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    .line 246
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/net/ConnectException;
    new-instance v1, Ljava/net/ConnectException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to connect to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lknr;->a:Lkng;

    .line 23072
    iget-object v6, v6, Lkng;->c:Ljava/net/InetSocketAddress;

    .line 247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, "ce":Ljava/net/ConnectException;
    invoke-virtual {v1, v2}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 249
    throw v1

    .line 259
    .end local v1    # "ce":Ljava/net/ConnectException;
    .end local v2    # "e":Ljava/net/ConnectException;
    :catch_1
    move-exception v3

    .line 260
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "throw with null exception"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private a(Lknq;)V
    .locals 14
    .param p1, "connectionSpecSelector"    # Lknq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 301
    iget-object v10, p0, Lknr;->a:Lkng;

    .line 26058
    iget-object v1, v10, Lkng;->a:Lkme;

    .line 26141
    .local v1, "address":Lkme;
    iget-object v7, v1, Lkme;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 304
    .local v7, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v6, 0x0

    .line 307
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    iget-object v10, p0, Lknr;->n:Ljava/net/Socket;

    .line 27093
    iget-object v11, v1, Lkme;->a:Lkmw;

    .line 27486
    iget-object v11, v11, Lkmw;->b:Ljava/lang/String;

    .line 28093
    iget-object v12, v1, Lkme;->a:Lkmw;

    .line 28502
    iget v12, v12, Lkmw;->c:I

    .line 308
    const/4 v13, 0x1

    .line 307
    invoke-virtual {v7, v10, v11, v12, v13}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v6, v0

    .line 29057
    iget v10, p1, Lknq;->b:I

    iget-object v11, p1, Lknq;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_9

    .line 29058
    iget-object v10, p1, Lknq;->a:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkmn;

    .line 29059
    invoke-virtual {v10, v6}, Lkmn;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 29061
    add-int/lit8 v11, v11, 0x1

    iput v11, p1, Lknq;->b:I

    move-object v3, v10

    .line 29066
    :goto_1
    if-nez v3, :cond_2

    .line 29070
    new-instance v10, Ljava/net/UnknownServiceException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Unable to find acceptable protocols. isFallback="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, p1, Lknq;->d:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", modes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lknq;->a:Ljava/util/List;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", supported protocols="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 29073
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :catch_0
    move-exception v4

    .line 349
    .local v4, "e":Ljava/lang/AssertionError;
    :try_start_1
    invoke-static {v4}, Lknj;->a(Ljava/lang/AssertionError;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    .end local v4    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v10

    if-eqz v6, :cond_0

    .line 353
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v11

    invoke-virtual {v11, v6}, Lkoy;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 356
    :cond_0
    invoke-static {v6}, Lknj;->a(Ljava/net/Socket;)V

    throw v10

    .line 29057
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 29076
    :cond_2
    :try_start_2
    invoke-virtual {p1, v6}, Lknq;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v10

    iput-boolean v10, p1, Lknq;->c:Z

    .line 29078
    sget-object v10, Lknh;->a:Lknh;

    iget-boolean v11, p1, Lknq;->d:Z

    invoke-virtual {v10, v3, v6, v11}, Lknh;->a(Lkmn;Ljavax/net/ssl/SSLSocket;Z)V

    .line 29132
    .local v3, "connectionSpec":Lkmn;
    iget-boolean v10, v3, Lkmn;->f:Z

    .line 312
    if-eqz v10, :cond_3

    .line 313
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v10

    .line 30093
    iget-object v11, v1, Lkme;->a:Lkmw;

    .line 30486
    iget-object v11, v11, Lkmw;->b:Ljava/lang/String;

    .line 31116
    iget-object v12, v1, Lkme;->e:Ljava/util/List;

    .line 313
    invoke-virtual {v10, v6, v11, v12}, Lkoy;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 318
    :cond_3
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 320
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    .line 321
    .local v8, "sslSocketSession":Ljavax/net/ssl/SSLSession;
    invoke-static {v8}, Lkmu;->a(Ljavax/net/ssl/SSLSession;)Lkmu;

    move-result-object v9

    .line 31146
    .local v9, "unverifiedHandshake":Lkmu;
    iget-object v10, v1, Lkme;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 32093
    iget-object v11, v1, Lkme;->a:Lkmw;

    .line 32486
    iget-object v11, v11, Lkmw;->b:Ljava/lang/String;

    .line 324
    invoke-interface {v10, v11, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 33104
    iget-object v10, v9, Lkmu;->b:Ljava/util/List;

    .line 325
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 326
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v10, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Hostname "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34093
    iget-object v12, v1, Lkme;->a:Lkmw;

    .line 34486
    iget-object v12, v12, Lkmw;->b:Ljava/lang/String;

    .line 326
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " not verified:\n    certificate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 327
    invoke-static {v2}, Lkmj;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n    DN: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 328
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n    subjectAltNames: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 329
    invoke-static {v2}, Lkpd;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 35151
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_4
    iget-object v10, v1, Lkme;->k:Lkmj;

    .line 36093
    iget-object v11, v1, Lkme;->a:Lkmw;

    .line 36486
    iget-object v11, v11, Lkmw;->b:Ljava/lang/String;

    .line 37104
    iget-object v12, v9, Lkmu;->b:Ljava/util/List;

    .line 333
    invoke-virtual {v10, v11, v12}, Lkmj;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 37132
    iget-boolean v10, v3, Lkmn;->f:Z

    .line 337
    if-eqz v10, :cond_5

    .line 338
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v10

    invoke-virtual {v10, v6}, Lkoy;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "maybeProtocol":Ljava/lang/String;
    :cond_5
    iput-object v6, p0, Lknr;->b:Ljava/net/Socket;

    .line 341
    iget-object v10, p0, Lknr;->b:Ljava/net/Socket;

    invoke-static {v10}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v10

    invoke-static {v10}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v10

    iput-object v10, p0, Lknr;->e:Lokio/BufferedSource;

    .line 342
    iget-object v10, p0, Lknr;->b:Ljava/net/Socket;

    invoke-static {v10}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v10

    invoke-static {v10}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v10

    iput-object v10, p0, Lknr;->f:Lokio/BufferedSink;

    .line 343
    iput-object v9, p0, Lknr;->c:Lkmu;

    .line 344
    if-eqz v5, :cond_7

    .line 345
    invoke-static {v5}, Lokhttp3/Protocol;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v10

    .line 346
    :goto_2
    iput-object v10, p0, Lknr;->o:Lokhttp3/Protocol;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    if-eqz v6, :cond_6

    .line 353
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v10

    invoke-virtual {v10, v6}, Lkoy;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 355
    :cond_6
    return-void

    .line 346
    :cond_7
    :try_start_3
    sget-object v10, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 350
    .end local v3    # "connectionSpec":Lkmn;
    .end local v5    # "maybeProtocol":Ljava/lang/String;
    .end local v8    # "sslSocketSession":Ljavax/net/ssl/SSLSession;
    .end local v9    # "unverifiedHandshake":Lkmu;
    .restart local v4    # "e":Ljava/lang/AssertionError;
    :cond_8
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v4    # "e":Ljava/lang/AssertionError;
    :cond_9
    move-object v3, v5

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(IIIIZLkmi;Lkms;)V
    .locals 22
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .param p6, "call"    # Lkmi;
    .param p7, "eventListener"    # Lkms;

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->o:Lokhttp3/Protocol;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "already connected"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 135
    :cond_0
    const/16 v21, 0x0

    .line 136
    .local v21, "routeException":Lokhttp3/internal/connection/RouteException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->a:Lkng;

    .line 1058
    iget-object v5, v5, Lkng;->a:Lkme;

    .line 1120
    iget-object v0, v5, Lkme;->f:Ljava/util/List;

    move-object/from16 v18, v0

    .line 137
    .local v18, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lkmn;>;"
    new-instance v17, Lknq;

    invoke-direct/range {v17 .. v18}, Lknq;-><init>(Ljava/util/List;)V

    .line 139
    .local v17, "connectionSpecSelector":Lknq;
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->a:Lkng;

    .line 2058
    iget-object v5, v5, Lkng;->a:Lkme;

    .line 2141
    iget-object v5, v5, Lkme;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 139
    if-nez v5, :cond_2

    .line 140
    sget-object v5, Lkmn;->d:Lkmn;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    new-instance v5, Lokhttp3/internal/connection/RouteException;

    new-instance v6, Ljava/net/UnknownServiceException;

    const-string/jumbo v7, "CLEARTEXT communication not enabled for client"

    invoke-direct {v6, v7}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v5

    .line 144
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->a:Lkng;

    .line 3058
    iget-object v5, v5, Lkng;->a:Lkme;

    .line 3093
    iget-object v5, v5, Lkme;->a:Lkmw;

    .line 3486
    iget-object v0, v5, Lkmw;->b:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 145
    .local v20, "host":Ljava/lang/String;
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lkoy;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 146
    new-instance v5, Lokhttp3/internal/connection/RouteException;

    new-instance v6, Ljava/net/UnknownServiceException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "CLEARTEXT communication to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not permitted by network security policy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v5

    .line 150
    .end local v20    # "host":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->a:Lkng;

    .line 4058
    iget-object v5, v5, Lkng;->a:Lkme;

    .line 4116
    iget-object v5, v5, Lkme;->e:Ljava/util/List;

    .line 150
    sget-object v6, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 151
    new-instance v5, Lokhttp3/internal/connection/RouteException;

    new-instance v6, Ljava/net/UnknownServiceException;

    const-string/jumbo v7, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v6, v7}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v5

    .line 158
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->a:Lkng;

    invoke-virtual {v5}, Lkng;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    .line 159
    invoke-direct/range {v11 .. v16}, Lknr;->a(IIILkmi;Lkms;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->n:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_5

    .line 195
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->a:Lkng;

    invoke-virtual {v5}, Lkng;->a()Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->n:Ljava/net/Socket;

    if-nez v5, :cond_e

    .line 196
    new-instance v19, Ljava/net/ProtocolException;

    const-string/jumbo v5, "Too many tunnel connections attempted: 21"

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 198
    .local v19, "exception":Ljava/net/ProtocolException;
    new-instance v5, Lokhttp3/internal/connection/RouteException;

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v5

    .line 165
    .end local v19    # "exception":Ljava/net/ProtocolException;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lknr;->a(IILkmi;Lkms;)V

    .line 4268
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->a:Lkng;

    .line 5058
    iget-object v5, v5, Lkng;->a:Lkme;

    .line 5141
    iget-object v5, v5, Lkme;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 4268
    if-nez v5, :cond_b

    .line 4269
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->a:Lkng;

    .line 6058
    iget-object v5, v5, Lkng;->a:Lkme;

    .line 6116
    iget-object v5, v5, Lkme;->e:Ljava/util/List;

    .line 4269
    sget-object v6, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4270
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->n:Ljava/net/Socket;

    move-object/from16 v0, p0

    iput-object v5, v0, Lknr;->b:Ljava/net/Socket;

    .line 4271
    sget-object v5, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    move-object/from16 v0, p0

    iput-object v5, v0, Lknr;->o:Lokhttp3/Protocol;

    .line 4272
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lknr;->a(I)V

    .line 168
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->a:Lkng;

    .line 7072
    iget-object v5, v5, Lkng;->c:Ljava/net/InetSocketAddress;

    .line 168
    move-object/from16 v0, p0

    iget-object v6, v0, Lknr;->a:Lkng;

    .line 8068
    iget-object v6, v6, Lkng;->b:Ljava/net/Proxy;

    .line 168
    move-object/from16 v0, p0

    iget-object v7, v0, Lknr;->o:Lokhttp3/Protocol;

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v5, v6, v7}, Lkms;->connectEnd(Lkmi;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v10

    .line 171
    .local v10, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->b:Ljava/net/Socket;

    invoke-static {v5}, Lknj;->a(Ljava/net/Socket;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->n:Ljava/net/Socket;

    invoke-static {v5}, Lknj;->a(Ljava/net/Socket;)V

    .line 173
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lknr;->b:Ljava/net/Socket;

    .line 174
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lknr;->n:Ljava/net/Socket;

    .line 175
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lknr;->e:Lokio/BufferedSource;

    .line 176
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lknr;->f:Lokio/BufferedSink;

    .line 177
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lknr;->c:Lkmu;

    .line 178
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lknr;->o:Lokhttp3/Protocol;

    .line 179
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lknr;->d:Lkom;

    .line 181
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->a:Lkng;

    .line 8072
    iget-object v7, v5, Lkng;->c:Ljava/net/InetSocketAddress;

    .line 181
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->a:Lkng;

    .line 9068
    iget-object v8, v5, Lkng;->b:Ljava/net/Proxy;

    .line 181
    const/4 v9, 0x0

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    invoke-virtual/range {v5 .. v10}, Lkms;->connectFailed(Lkmi;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    .line 183
    if-nez v21, :cond_c

    .line 184
    new-instance v21, Lokhttp3/internal/connection/RouteException;

    .end local v21    # "routeException":Lokhttp3/internal/connection/RouteException;
    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 189
    .restart local v21    # "routeException":Lokhttp3/internal/connection/RouteException;
    :goto_2
    if-eqz p5, :cond_9

    .line 9092
    const/4 v5, 0x1

    move-object/from16 v0, v17

    iput-boolean v5, v0, Lknq;->d:Z

    .line 9094
    move-object/from16 v0, v17

    iget-boolean v5, v0, Lknq;->c:Z

    if-eqz v5, :cond_d

    .line 9099
    instance-of v5, v10, Ljava/net/ProtocolException;

    if-nez v5, :cond_d

    .line 9106
    instance-of v5, v10, Ljava/io/InterruptedIOException;

    if-nez v5, :cond_d

    .line 9112
    instance-of v5, v10, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v5, :cond_7

    .line 9115
    invoke-virtual {v10}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/security/cert/CertificateException;

    if-nez v5, :cond_d

    .line 9119
    :cond_7
    instance-of v5, v10, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v5, :cond_d

    .line 9126
    instance-of v5, v10, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v5, :cond_8

    instance-of v5, v10, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v5, :cond_d

    :cond_8
    const/4 v5, 0x1

    .line 189
    :goto_3
    if-nez v5, :cond_3

    .line 190
    :cond_9
    throw v21

    .line 4276
    .end local v10    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->n:Ljava/net/Socket;

    move-object/from16 v0, p0

    iput-object v5, v0, Lknr;->b:Ljava/net/Socket;

    .line 4277
    sget-object v5, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    move-object/from16 v0, p0

    iput-object v5, v0, Lknr;->o:Lokhttp3/Protocol;

    goto/16 :goto_1

    .line 4281
    :cond_b
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lkms;->secureConnectStart(Lkmi;)V

    .line 4282
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lknr;->a(Lknq;)V

    .line 4283
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->c:Lkmu;

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v5}, Lkms;->secureConnectEnd(Lkmi;Lkmu;)V

    .line 4285
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->o:Lokhttp3/Protocol;

    sget-object v6, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v5, v6, :cond_6

    .line 4286
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lknr;->a(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 186
    .restart local v10    # "e":Ljava/io/IOException;
    :cond_c
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    goto :goto_2

    .line 9126
    :cond_d
    const/4 v5, 0x0

    goto :goto_3

    .line 201
    .end local v10    # "e":Ljava/io/IOException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->d:Lkom;

    if-eqz v5, :cond_f

    .line 202
    move-object/from16 v0, p0

    iget-object v6, v0, Lknr;->m:Lkmm;

    monitor-enter v6

    .line 203
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lknr;->d:Lkom;

    invoke-virtual {v5}, Lkom;->a()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lknr;->i:I

    .line 204
    monitor-exit v6

    .line 206
    :cond_f
    return-void

    .line 204
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method public final a(Lkom;)V
    .locals 2
    .param p1, "connection"    # Lkom;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 561
    iget-object v1, p0, Lknr;->m:Lkmm;

    monitor-enter v1

    .line 562
    :try_start_0
    invoke-virtual {p1}, Lkom;->a()I

    move-result v0

    iput v0, p0, Lknr;->i:I

    .line 563
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lkoo;)V
    .locals 1
    .param p1, "stream"    # Lkoo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lkoo;->a(Lokhttp3/internal/http2/ErrorCode;)V

    .line 557
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lknr;->d:Lkom;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lkme;Lkng;)Z
    .locals 5
    .param p1, "address"    # Lkme;
    .param p2, "route"    # Lkng;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 435
    iget-object v2, p0, Lknr;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lknr;->i:I

    if-ge v2, v3, :cond_0

    iget-boolean v2, p0, Lknr;->g:Z

    if-eqz v2, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    sget-object v2, Lknh;->a:Lknh;

    iget-object v3, p0, Lknr;->a:Lkng;

    .line 38058
    iget-object v3, v3, Lkng;->a:Lkme;

    .line 438
    invoke-virtual {v2, v3, p1}, Lknh;->a(Lkme;Lkme;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38093
    iget-object v2, p1, Lkme;->a:Lkmw;

    .line 38486
    iget-object v2, v2, Lkmw;->b:Ljava/lang/String;

    .line 38510
    iget-object v3, p0, Lknr;->a:Lkng;

    .line 39058
    iget-object v3, v3, Lkng;->a:Lkme;

    .line 39093
    iget-object v3, v3, Lkme;->a:Lkmw;

    .line 39486
    iget-object v3, v3, Lkmw;->b:Ljava/lang/String;

    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 442
    goto :goto_0

    .line 451
    :cond_2
    iget-object v2, p0, Lknr;->d:Lkom;

    if-eqz v2, :cond_0

    .line 456
    if-eqz p2, :cond_0

    .line 40068
    iget-object v2, p2, Lkng;->b:Ljava/net/Proxy;

    .line 457
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    .line 458
    iget-object v2, p0, Lknr;->a:Lkng;

    .line 41068
    iget-object v2, v2, Lkng;->b:Ljava/net/Proxy;

    .line 458
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    .line 459
    iget-object v2, p0, Lknr;->a:Lkng;

    .line 41072
    iget-object v2, v2, Lkng;->c:Ljava/net/InetSocketAddress;

    .line 42072
    iget-object v3, p2, Lkng;->c:Ljava/net/InetSocketAddress;

    .line 459
    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43058
    iget-object v2, p2, Lkng;->a:Lkme;

    .line 43146
    iget-object v2, v2, Lkme;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 462
    sget-object v3, Lkpd;->a:Lkpd;

    if-ne v2, v3, :cond_0

    .line 44093
    iget-object v2, p1, Lkme;->a:Lkmw;

    .line 463
    invoke-virtual {p0, v2}, Lknr;->a(Lkmw;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44151
    :try_start_0
    iget-object v2, p1, Lkme;->k:Lkmj;

    .line 45093
    iget-object v3, p1, Lkme;->a:Lkmw;

    .line 45486
    iget-object v3, v3, Lkmw;->b:Ljava/lang/String;

    .line 45567
    iget-object v4, p0, Lknr;->c:Lkmu;

    .line 46104
    iget-object v4, v4, Lkmu;->b:Ljava/util/List;

    .line 467
    invoke-virtual {v2, v3, v4}, Lkmj;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 472
    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Lkmw;)Z
    .locals 5
    .param p1, "url"    # Lkmw;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 476
    .line 46502
    iget v0, p1, Lkmw;->c:I

    .line 476
    iget-object v3, p0, Lknr;->a:Lkng;

    .line 47058
    iget-object v3, v3, Lkng;->a:Lkme;

    .line 47093
    iget-object v3, v3, Lkme;->a:Lkmw;

    .line 47502
    iget v3, v3, Lkmw;->c:I

    .line 476
    if-eq v0, v3, :cond_0

    move v0, v1

    .line 486
    :goto_0
    return v0

    .line 48486
    :cond_0
    iget-object v0, p1, Lkmw;->b:Ljava/lang/String;

    .line 480
    iget-object v3, p0, Lknr;->a:Lkng;

    .line 49058
    iget-object v3, v3, Lkng;->a:Lkme;

    .line 49093
    iget-object v3, v3, Lkme;->a:Lkmw;

    .line 49486
    iget-object v3, v3, Lkmw;->b:Ljava/lang/String;

    .line 480
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 482
    iget-object v0, p0, Lknr;->c:Lkmu;

    if-eqz v0, :cond_1

    sget-object v3, Lkpd;->a:Lkpd;

    .line 50486
    iget-object v4, p1, Lkmw;->b:Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lknr;->c:Lkmu;

    .line 50487
    iget-object v0, v0, Lkmu;->b:Ljava/util/List;

    .line 483
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 482
    invoke-virtual {v3, v4, v0}, Lkpd;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 486
    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 5
    .param p1, "doExtensiveChecks"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 524
    iget-object v3, p0, Lknr;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lknr;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lknr;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 551
    :cond_1
    :goto_0
    return v1

    .line 528
    :cond_2
    iget-object v3, p0, Lknr;->d:Lkom;

    if-eqz v3, :cond_3

    .line 529
    iget-object v3, p0, Lknr;->d:Lkom;

    invoke-virtual {v3}, Lkom;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 532
    :cond_3
    if-eqz p1, :cond_1

    .line 534
    :try_start_0
    iget-object v3, p0, Lknr;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 536
    .local v0, "readTimeout":I
    :try_start_1
    iget-object v3, p0, Lknr;->b:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 537
    iget-object v3, p0, Lknr;->e:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 542
    :try_start_2
    iget-object v3, p0, Lknr;->b:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    move v1, v2

    .line 538
    goto :goto_0

    .line 542
    :cond_4
    iget-object v3, p0, Lknr;->b:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 548
    .end local v0    # "readTimeout":I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 542
    .restart local v0    # "readTimeout":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lknr;->b:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 547
    .end local v0    # "readTimeout":I
    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lknr;->a:Lkng;

    .line 50488
    iget-object v1, v1, Lkng;->a:Lkme;

    .line 50489
    iget-object v1, v1, Lkme;->a:Lkmw;

    .line 50490
    iget-object v1, v1, Lkmw;->b:Ljava/lang/String;

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lknr;->a:Lkng;

    .line 50491
    iget-object v1, v1, Lkng;->a:Lkme;

    .line 50492
    iget-object v1, v1, Lkme;->a:Lkmw;

    .line 50493
    iget v1, v1, Lkmw;->c:I

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lknr;->a:Lkng;

    .line 50494
    iget-object v1, v1, Lkng;->b:Ljava/net/Proxy;

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lknr;->a:Lkng;

    .line 50495
    iget-object v1, v1, Lkng;->c:Ljava/net/InetSocketAddress;

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 590
    iget-object v0, p0, Lknr;->c:Lkmu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lknr;->c:Lkmu;

    .line 50496
    iget-object v0, v0, Lkmu;->a:Lkmk;

    .line 590
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lknr;->o:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    return-object v0

    .line 590
    :cond_0
    const-string/jumbo v0, "none"

    goto :goto_0
.end method
