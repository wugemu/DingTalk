.class public Lcom/laiwang/protocol/android/u;
.super Ljava/lang/Object;
.source "TCPBioConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/u$b;,
        Lcom/laiwang/protocol/android/u$a;
    }
.end annotation


# instance fields
.field private c:Ljava/net/InetSocketAddress;

.field private d:Ljava/net/Socket;

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/OutputStream;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/k$c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/laiwang/protocol/android/bu;

.field private k:Lcom/laiwang/protocol/android/bu;

.field private l:Lcom/laiwang/protocol/android/bu;

.field private m:Ljava/net/URI;

.field private n:Lcom/laiwang/protocol/android/bu$a;

.field private volatile o:Lcom/laiwang/protocol/android/k$d;

.field private p:Lcom/laiwang/protocol/android/bu$a;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "trafficTag"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v1, -0x1

    iput v1, p0, Lcom/laiwang/protocol/android/u;->g:I

    .line 36
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/u;->h:Ljava/util/List;

    .line 52
    invoke-direct {p0}, Lcom/laiwang/protocol/android/u;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laiwang/protocol/android/u;->i:Ljava/lang/String;

    .line 53
    iput p1, p0, Lcom/laiwang/protocol/android/u;->g:I

    .line 54
    sget-object v1, Lcom/laiwang/protocol/android/k$d;->b:Lcom/laiwang/protocol/android/k$d;

    iput-object v1, p0, Lcom/laiwang/protocol/android/u;->o:Lcom/laiwang/protocol/android/k$d;

    .line 56
    new-instance v1, Lcom/laiwang/protocol/android/bt;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tcp_bio-manager"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/laiwang/protocol/android/bt;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/u;->l:Lcom/laiwang/protocol/android/bu;

    .line 57
    new-instance v1, Lcom/laiwang/protocol/android/bt;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tcp_bio-read"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/laiwang/protocol/android/bt;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/u;->k:Lcom/laiwang/protocol/android/bu;

    .line 58
    new-instance v1, Lcom/laiwang/protocol/android/bt;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tcp_bio-write"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/laiwang/protocol/android/bt;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/u;->j:Lcom/laiwang/protocol/android/bu;

    .line 59
    new-instance v1, Lcom/laiwang/protocol/android/u$a;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/u$a;-><init>(Lcom/laiwang/protocol/android/u;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/u;->n:Lcom/laiwang/protocol/android/bu$a;

    .line 60
    new-instance v1, Lcom/laiwang/protocol/android/u$b;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/u$b;-><init>(Lcom/laiwang/protocol/android/u;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/u;->p:Lcom/laiwang/protocol/android/bu$a;

    .line 62
    :try_start_0
    new-instance v1, Ljava/net/URI;

    const-string/jumbo v2, "null"

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/u;->m:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/k$d;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->o:Lcom/laiwang/protocol/android/k$d;

    return-object v0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/u;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/k$d;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/laiwang/protocol/android/u;->o:Lcom/laiwang/protocol/android/k$d;

    return-object p1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/u;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/laiwang/protocol/android/u;->e:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/u;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/laiwang/protocol/android/u;->f:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/u;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;
    .param p1, "x1"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/laiwang/protocol/android/u;->c:Ljava/net/InetSocketAddress;

    return-object p1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/u;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/laiwang/protocol/android/u;->d:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/u;Ljava/net/URI;)Ljava/net/URI;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;
    .param p1, "x1"    # Ljava/net/URI;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/laiwang/protocol/android/u;->m:Ljava/net/URI;

    return-object p1
.end method

.method private a(Ljava/net/Socket;)V
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x10000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    const v0, 0x927c0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 159
    const/4 v0, 0x4

    invoke-virtual {p1, v2, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 160
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 161
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 162
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 163
    invoke-virtual {p1, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 164
    invoke-virtual {p1, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 165
    return-void
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/u;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/u;Ljava/net/Socket;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;
    .param p1, "x1"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/u;->a(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic c(Lcom/laiwang/protocol/android/u;)I
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 29
    iget v0, p0, Lcom/laiwang/protocol/android/u;->g:I

    return v0
.end method

.method static synthetic d(Lcom/laiwang/protocol/android/u;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->d:Ljava/net/Socket;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    const-string/jumbo v1, "[io] T_B start RW %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    new-instance v0, Lcom/laiwang/protocol/android/u$2;

    const-string/jumbo v1, "tcp-bio-read"

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/laiwang/protocol/android/u$2;-><init>(Lcom/laiwang/protocol/android/u;Ljava/lang/String;J)V

    .line 205
    .local v0, "read":Lcom/laiwang/protocol/android/bu$a;
    iget-object v1, p0, Lcom/laiwang/protocol/android/u;->k:Lcom/laiwang/protocol/android/bu;

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/bu;->c(Lcom/laiwang/protocol/android/bu$a;)V

    .line 206
    iget-object v1, p0, Lcom/laiwang/protocol/android/u;->l:Lcom/laiwang/protocol/android/bu;

    iget-object v2, p0, Lcom/laiwang/protocol/android/u;->p:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 207
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 323
    .local v1, "rand":Ljava/util/Random;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 324
    .local v0, "buf":[B
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 325
    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic e(Lcom/laiwang/protocol/android/u;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->c:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic f(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/bu$a;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->n:Lcom/laiwang/protocol/android/bu$a;

    return-object v0
.end method

.method static synthetic g(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/bu;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->j:Lcom/laiwang/protocol/android/bu;

    return-object v0
.end method

.method static synthetic h(Lcom/laiwang/protocol/android/u;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/laiwang/protocol/android/u;->d()V

    return-void
.end method

.method static synthetic i(Lcom/laiwang/protocol/android/u;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->e:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic j(Lcom/laiwang/protocol/android/u;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->f:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic k(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/bu;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->l:Lcom/laiwang/protocol/android/bu;

    return-object v0
.end method

.method static synthetic l(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/bu;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->k:Lcom/laiwang/protocol/android/bu;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->l:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/u;->p:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->l:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/u;->p:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 258
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k$c;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/android/k$c;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 262
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->o:Lcom/laiwang/protocol/android/k$d;

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    if-ne v0, v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->l:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/u$4;

    const-string/jumbo v2, "tcp-bio-close"

    invoke-direct {v1, p0, v2, p1}, Lcom/laiwang/protocol/android/u$4;-><init>(Lcom/laiwang/protocol/android/u;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    goto :goto_0
.end method

.method public a(Ljava/net/URI;)V
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->o:Lcom/laiwang/protocol/android/k$d;

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->b:Lcom/laiwang/protocol/android/k$d;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->o:Lcom/laiwang/protocol/android/k$d;

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->a:Lcom/laiwang/protocol/android/k$d;

    if-eq v0, v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->l:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/u$1;

    const-string/jumbo v2, "tcp_bio_connect"

    invoke-direct {v1, p0, v2, p1}, Lcom/laiwang/protocol/android/u$1;-><init>(Lcom/laiwang/protocol/android/u;Ljava/lang/String;Ljava/net/URI;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 154
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->j:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/u;->n:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/laiwang/protocol/android/u;->a(Ljava/nio/ByteBuffer;Z)V

    .line 212
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Z)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "first"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->o:Lcom/laiwang/protocol/android/k$d;

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    if-ne v0, v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->j:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/u$3;

    const-string/jumbo v3, "tcp-bio-write"

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/laiwang/protocol/android/u$3;-><init>(Lcom/laiwang/protocol/android/u;Ljava/lang/String;JLjava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/laiwang/protocol/android/k$c;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/android/k$c;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method public c()Ljava/net/URI;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->m:Ljava/net/URI;

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->j:Lcom/laiwang/protocol/android/bu;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->j:Lcom/laiwang/protocol/android/bu;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bu;->d()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->k:Lcom/laiwang/protocol/android/bu;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->k:Lcom/laiwang/protocol/android/bu;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bu;->d()V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->l:Lcom/laiwang/protocol/android/bu;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/laiwang/protocol/android/u;->l:Lcom/laiwang/protocol/android/bu;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bu;->d()V

    .line 77
    :cond_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/laiwang/protocol/android/u;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/laiwang/protocol/android/u;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_0
    const-string/jumbo v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/u;->o:Lcom/laiwang/protocol/android/k$d;

    iget v2, v2, Lcom/laiwang/protocol/android/k$d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v1, p0, Lcom/laiwang/protocol/android/u;->d:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/laiwang/protocol/android/u;->d:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v1, p0, Lcom/laiwang/protocol/android/u;->d:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    :cond_1
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
