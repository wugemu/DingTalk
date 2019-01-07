.class public Lcom/laiwang/protocol/android/v;
.super Ljava/lang/Object;
.source "TCPNioConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/v$c;,
        Lcom/laiwang/protocol/android/v$b;,
        Lcom/laiwang/protocol/android/v$a;
    }
.end annotation


# instance fields
.field private c:Lcom/laiwang/protocol/android/q;

.field private d:Ljava/nio/channels/SocketChannel;

.field private e:Ljava/nio/channels/SelectionKey;

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/k$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/net/URI;

.field private j:Lcom/laiwang/protocol/android/bu;

.field private k:Lcom/laiwang/protocol/android/bu$a;

.field private l:Lcom/laiwang/protocol/android/bu$a;

.field private m:Lcom/laiwang/protocol/android/bu$a;

.field private n:Ljava/nio/ByteBuffer;

.field private volatile o:Lcom/laiwang/protocol/android/k$d;

.field private p:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/laiwang/protocol/android/bu;)V
    .locals 3
    .param p1, "trafficTag"    # I
    .param p2, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, -0x1

    iput v1, p0, Lcom/laiwang/protocol/android/v;->f:I

    .line 33
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->g:Ljava/util/List;

    .line 40
    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->n:Ljava/nio/ByteBuffer;

    .line 102
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->p:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 49
    invoke-direct {p0}, Lcom/laiwang/protocol/android/v;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->h:Ljava/lang/String;

    .line 50
    iput p1, p0, Lcom/laiwang/protocol/android/v;->f:I

    .line 51
    invoke-static {}, Lcom/laiwang/protocol/android/q;->a()Lcom/laiwang/protocol/android/q;

    move-result-object v1

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->c:Lcom/laiwang/protocol/android/q;

    .line 52
    iput-object p2, p0, Lcom/laiwang/protocol/android/v;->j:Lcom/laiwang/protocol/android/bu;

    .line 53
    new-instance v1, Lcom/laiwang/protocol/android/v$a;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/v$a;-><init>(Lcom/laiwang/protocol/android/v;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->k:Lcom/laiwang/protocol/android/bu$a;

    .line 54
    new-instance v1, Lcom/laiwang/protocol/android/v$c;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/v$c;-><init>(Lcom/laiwang/protocol/android/v;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->l:Lcom/laiwang/protocol/android/bu$a;

    .line 55
    new-instance v1, Lcom/laiwang/protocol/android/v$b;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/v$b;-><init>(Lcom/laiwang/protocol/android/v;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->m:Lcom/laiwang/protocol/android/bu$a;

    .line 56
    sget-object v1, Lcom/laiwang/protocol/android/k$d;->b:Lcom/laiwang/protocol/android/k$d;

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    .line 58
    :try_start_0
    new-instance v1, Ljava/net/URI;

    const-string/jumbo v2, "null"

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->i:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/v;)Ljava/nio/channels/SelectionKey;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/v;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->e:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/v;)Lcom/laiwang/protocol/android/q;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/v;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->c:Lcom/laiwang/protocol/android/q;

    return-object v0
.end method

.method static synthetic c(Lcom/laiwang/protocol/android/v;)Lcom/laiwang/protocol/android/k$d;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/v;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    return-object v0
.end method

.method static synthetic d(Lcom/laiwang/protocol/android/v;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/v;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->g:Ljava/util/List;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 314
    .local v1, "rand":Ljava/util/Random;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 315
    .local v0, "buf":[B
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 316
    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->j:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->m:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 132
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k$c;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/android/k$c;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k;)V
    .locals 2
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->j:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->l:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 266
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->j:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->l:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 267
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    sget-object v1, Lcom/laiwang/protocol/android/k$d;->a:Lcom/laiwang/protocol/android/k$d;

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[tcp] nio connect err >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->j:Lcom/laiwang/protocol/android/bu;

    iget-object v2, p0, Lcom/laiwang/protocol/android/v;->k:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 210
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/k$c;

    .line 211
    .local v0, "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0, p0, p2}, Lcom/laiwang/protocol/android/k$c;->a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 213
    .end local v0    # "listener":Lcom/laiwang/protocol/android/k$c;
    :cond_1
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "readBuffer"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    if-eq v1, v2, :cond_1

    .line 253
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/k$c;

    .line 254
    .local v0, "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, p0, p2}, Lcom/laiwang/protocol/android/k$c;->a(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 257
    .end local v0    # "listener":Lcom/laiwang/protocol/android/k$c;
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    if-ne v0, v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->c:Lcom/laiwang/protocol/android/q;

    invoke-virtual {v0, p0, p1}, Lcom/laiwang/protocol/android/q;->a(Lcom/laiwang/protocol/android/r;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/net/URI;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->b:Lcom/laiwang/protocol/android/k$d;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->a:Lcom/laiwang/protocol/android/k$d;

    if-eq v0, v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/laiwang/protocol/android/v;->i:Ljava/net/URI;

    .line 71
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->j:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->k:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 72
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->c:Lcom/laiwang/protocol/android/q;

    invoke-virtual {v0, p0}, Lcom/laiwang/protocol/android/q;->a(Lcom/laiwang/protocol/android/r;)V

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/laiwang/protocol/android/v;->a(Ljava/nio/ByteBuffer;Z)V

    .line 112
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "first"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    if-ne v0, v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    if-eqz p2, :cond_1

    .line 119
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->p:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 123
    :goto_1
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/v;->a()V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->p:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/laiwang/protocol/android/k$c;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/android/k$c;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/k;)V
    .locals 5
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    sget-object v1, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    .line 189
    const-string/jumbo v1, "[tcp] nio connect suc >> %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/v;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->j:Lcom/laiwang/protocol/android/bu;

    iget-object v2, p0, Lcom/laiwang/protocol/android/v;->k:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 192
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/k$c;

    .line 193
    .local v0, "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    if-eq v2, v3, :cond_0

    .line 194
    invoke-interface {v0, p0}, Lcom/laiwang/protocol/android/k$c;->b(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 197
    .end local v0    # "listener":Lcom/laiwang/protocol/android/k$c;
    :cond_1
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    iget-object v2, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    if-ne v2, v3, :cond_1

    .line 243
    :cond_0
    return-void

    .line 224
    :cond_1
    sget-object v2, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    iput-object v2, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    .line 225
    const-string/jumbo v2, "[tcp] nio close >> %s buffer size %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/v;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/laiwang/protocol/android/v;->p:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object v2, p0, Lcom/laiwang/protocol/android/v;->e:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_2

    .line 229
    iget-object v3, p0, Lcom/laiwang/protocol/android/v;->e:Ljava/nio/channels/SelectionKey;

    monitor-enter v3

    .line 230
    :try_start_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/v;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 231
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_2
    iget-object v2, p0, Lcom/laiwang/protocol/android/v;->d:Ljava/nio/channels/SocketChannel;

    if-eqz v2, :cond_3

    .line 235
    :try_start_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/v;->d:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/v;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/k$c;

    .line 241
    .local v1, "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v1, :cond_4

    .line 242
    invoke-interface {v1, p0, p2}, Lcom/laiwang/protocol/android/k$c;->b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 231
    .end local v1    # "listener":Lcom/laiwang/protocol/android/k$c;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public c()Ljava/net/URI;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->i:Ljava/net/URI;

    return-object v0
.end method

.method public c(Lcom/laiwang/protocol/android/k;)V
    .locals 5
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    sget-object v1, Lcom/laiwang/protocol/android/k$d;->c:Lcom/laiwang/protocol/android/k$d;

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    .line 176
    const-string/jumbo v1, "[tcp] nio connect start >> %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/v;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/k$c;

    .line 178
    .local v0, "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0, p0}, Lcom/laiwang/protocol/android/k$c;->c(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 180
    .end local v0    # "listener":Lcom/laiwang/protocol/android/k$c;
    :cond_1
    return-void
.end method

.method public d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    iget v1, p0, Lcom/laiwang/protocol/android/v;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 78
    iget v1, p0, Lcom/laiwang/protocol/android/v;->f:I

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 80
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->i:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/v;->i:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 81
    .local v0, "address":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->d:Ljava/nio/channels/SocketChannel;

    .line 82
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->d:Ljava/nio/channels/SocketChannel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 83
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->d:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 84
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->c:Lcom/laiwang/protocol/android/q;

    invoke-virtual {v1, p0}, Lcom/laiwang/protocol/android/q;->b(Lcom/laiwang/protocol/android/r;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    iput-object v1, p0, Lcom/laiwang/protocol/android/v;->e:Ljava/nio/channels/SelectionKey;

    .line 85
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->d:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 86
    return-void
.end method

.method public e()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->p:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->n:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 345
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 346
    return-void
.end method

.method public g()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/laiwang/protocol/android/v;->d:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_0
    const-string/jumbo v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/v;->o:Lcom/laiwang/protocol/android/k$d;

    iget v2, v2, Lcom/laiwang/protocol/android/k$d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->d:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->d:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v1, p0, Lcom/laiwang/protocol/android/v;->d:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    :cond_1
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
