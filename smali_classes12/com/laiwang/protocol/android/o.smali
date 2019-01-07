.class public Lcom/laiwang/protocol/android/o;
.super Lcom/laiwang/protocol/attribute/DefaultAttributeMap;
.source "LwsConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/aa;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/o$a;,
        Lcom/laiwang/protocol/android/o$c;,
        Lcom/laiwang/protocol/android/o$b;
    }
.end annotation


# static fields
.field private static u:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/laiwang/protocol/android/ay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:Lizo;

.field private e:Lcom/laiwang/protocol/android/ay;

.field private f:Lcom/laiwang/protocol/android/bu;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/ab$h;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/laiwang/protocol/android/j;

.field private i:J

.field private j:J

.field private volatile k:Z

.field private final l:Ljava/lang/Object;

.field private m:Z

.field private n:Lcom/laiwang/protocol/android/k;

.field private volatile o:Lcom/laiwang/protocol/android/k$d;

.field private p:Ljava/lang/String;

.field private q:Lcom/laiwang/protocol/android/av;

.field private volatile r:Ljava/lang/String;

.field private s:Lcom/laiwang/protocol/android/bu$a;

.field private t:Lcom/laiwang/protocol/android/bu$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/o;->u:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/android/j;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/android/bu;Ljava/lang/String;ZLcom/laiwang/protocol/android/av;)V
    .locals 4
    .param p1, "stat"    # Lcom/laiwang/protocol/android/j;
    .param p2, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p3, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;
    .param p4, "vhost"    # Ljava/lang/String;
    .param p5, "sessionReuse"    # Z
    .param p6, "codecHandler"    # Lcom/laiwang/protocol/android/av;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/o;->g:Ljava/util/List;

    .line 47
    iput-wide v2, p0, Lcom/laiwang/protocol/android/o;->i:J

    iput-wide v2, p0, Lcom/laiwang/protocol/android/o;->j:J

    .line 48
    iput-boolean v1, p0, Lcom/laiwang/protocol/android/o;->k:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/o;->l:Ljava/lang/Object;

    .line 50
    iput-boolean v1, p0, Lcom/laiwang/protocol/android/o;->m:Z

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/o;->c:Ljava/util/List;

    .line 66
    sget-object v0, Lcom/laiwang/protocol/android/k$d;->b:Lcom/laiwang/protocol/android/k$d;

    iput-object v0, p0, Lcom/laiwang/protocol/android/o;->o:Lcom/laiwang/protocol/android/k$d;

    .line 67
    iput-object p1, p0, Lcom/laiwang/protocol/android/o;->h:Lcom/laiwang/protocol/android/j;

    .line 68
    iput-object p3, p0, Lcom/laiwang/protocol/android/o;->f:Lcom/laiwang/protocol/android/bu;

    .line 69
    if-eqz p5, :cond_0

    .line 70
    sget-object v0, Lcom/laiwang/protocol/android/o;->u:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/ay;

    iput-object v0, p0, Lcom/laiwang/protocol/android/o;->e:Lcom/laiwang/protocol/android/ay;

    .line 71
    :cond_0
    iput-object p4, p0, Lcom/laiwang/protocol/android/o;->p:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lcom/laiwang/protocol/android/o;->q:Lcom/laiwang/protocol/android/av;

    .line 73
    iput-object p2, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    .line 74
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    new-instance v1, Lcom/laiwang/protocol/android/o$a;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/o$a;-><init>(Lcom/laiwang/protocol/android/o;)V

    invoke-interface {v0, v1}, Lcom/laiwang/protocol/android/k;->a(Lcom/laiwang/protocol/android/k$c;)V

    .line 75
    new-instance v0, Lcom/laiwang/protocol/android/o$b;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/o$b;-><init>(Lcom/laiwang/protocol/android/o;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/o;->s:Lcom/laiwang/protocol/android/bu$a;

    .line 76
    new-instance v0, Lcom/laiwang/protocol/android/o$c;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/o$c;-><init>(Lcom/laiwang/protocol/android/o;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/o;->t:Lcom/laiwang/protocol/android/bu$a;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/o;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/k$d;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/laiwang/protocol/android/o;->o:Lcom/laiwang/protocol/android/k$d;

    return-object p1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/k;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    return-object v0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/laiwang/protocol/android/o;->r:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 382
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 383
    const-string/jumbo v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 384
    .local v0, "param":Ljava/lang/String;
    const-string/jumbo v4, "sni="

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 389
    .end local v0    # "param":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 383
    .restart local v0    # "param":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "param":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "default"

    goto :goto_1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/o;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/laiwang/protocol/android/o;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/o;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->f:Lcom/laiwang/protocol/android/bu;

    return-object v0
.end method

.method static synthetic d(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/k$d;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->o:Lcom/laiwang/protocol/android/k$d;

    return-object v0
.end method

.method static synthetic e(Lcom/laiwang/protocol/android/o;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/j;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->h:Lcom/laiwang/protocol/android/j;

    return-object v0
.end method

.method static synthetic g(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu$a;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->s:Lcom/laiwang/protocol/android/bu$a;

    return-object v0
.end method

.method static synthetic h(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu$a;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->t:Lcom/laiwang/protocol/android/bu$a;

    return-object v0
.end method

.method static synthetic i(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/ay;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->e:Lcom/laiwang/protocol/android/ay;

    return-object v0
.end method

.method static synthetic j(Lcom/laiwang/protocol/android/o;)Lizo;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->d:Lizo;

    return-object v0
.end method

.method static synthetic j()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/laiwang/protocol/android/o;->u:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic k(Lcom/laiwang/protocol/android/o;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->r:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/k;->a()V

    .line 335
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k$c;)V
    .locals 2
    .param p1, "listener"    # Lcom/laiwang/protocol/android/k$c;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    instance-of v0, p1, Lcom/laiwang/protocol/android/ab$h;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please use LwsListener"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->g:Ljava/util/List;

    check-cast p1, Lcom/laiwang/protocol/android/ab$h;

    .end local p1    # "listener":Lcom/laiwang/protocol/android/k$c;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    return-void
.end method

.method protected a(Lcom/laiwang/protocol/android/k;)V
    .locals 13
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 123
    :try_start_0
    iget-object v9, p0, Lcom/laiwang/protocol/android/o;->h:Lcom/laiwang/protocol/android/j;

    iget-object v9, v9, Lcom/laiwang/protocol/android/j;->c:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v9}, Lcom/laiwang/protocol/android/j$a;->a()V

    .line 124
    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->c()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/laiwang/protocol/android/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "sni":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/laiwang/protocol/android/o;->p:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/laiwang/protocol/Config;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "lwsUa":Ljava/lang/String;
    new-instance v9, Lizo;

    invoke-static {v6}, Lcom/laiwang/protocol/android/cj;->a(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v6, v10, v2, v11}, Lizo;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/laiwang/lws/protocol/LwsSession;)V

    iput-object v9, p0, Lcom/laiwang/protocol/android/o;->d:Lizo;

    .line 127
    const-string/jumbo v9, "[Wtls] %s lws handshake ua %s sni is %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v9, p0, Lcom/laiwang/protocol/android/o;->e:Lcom/laiwang/protocol/android/ay;

    if-nez v9, :cond_2

    .line 130
    .local v3, "oldSni":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 131
    :cond_0
    iget-object v9, p0, Lcom/laiwang/protocol/android/o;->e:Lcom/laiwang/protocol/android/ay;

    if-eqz v9, :cond_1

    .line 132
    iget-object v9, p0, Lcom/laiwang/protocol/android/o;->e:Lcom/laiwang/protocol/android/ay;

    invoke-virtual {v9}, Lcom/laiwang/protocol/android/ay;->b()Lcom/laiwang/lws/protocol/LwsSession;

    move-result-object v1

    .line 133
    .local v1, "lwsSession":Lcom/laiwang/lws/protocol/LwsSession;
    iget-object v9, p0, Lcom/laiwang/protocol/android/o;->d:Lizo;

    .line 1181
    iput-object v1, v9, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    .line 134
    iget-object v9, p0, Lcom/laiwang/protocol/android/o;->e:Lcom/laiwang/protocol/android/ay;

    invoke-virtual {v9, v6}, Lcom/laiwang/protocol/android/ay;->a(Ljava/lang/String;)V

    .line 135
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/laiwang/lws/protocol/LwsSession;->getId()[B

    move-result-object v9

    if-eqz v9, :cond_1

    .line 136
    invoke-virtual {v1}, Lcom/laiwang/lws/protocol/LwsSession;->getId()[B

    move-result-object v9

    invoke-static {v9}, Lcom/laiwang/protocol/android/cj;->b([B)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "sid":Ljava/lang/String;
    const-string/jumbo v9, "[Wtls] %s lws handshake sid %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .end local v1    # "lwsSession":Lcom/laiwang/lws/protocol/LwsSession;
    .end local v5    # "sid":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/laiwang/protocol/android/o;->d:Lizo;

    invoke-virtual {v9}, Lizo;->a()Lizv;

    move-result-object v4

    .line 2041
    .local v4, "request":Lizv;
    iget-object v9, v4, Lizv;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v10, Lcom/laiwang/lws/protocol/Attributes$Name;->SESSION_ID:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v9, v10}, Lcom/laiwang/lws/protocol/Attributes;->b(Lcom/laiwang/lws/protocol/Attributes$Name;)[B

    move-result-object v9

    .line 143
    if-eqz v9, :cond_3

    :goto_1
    iput-boolean v7, p0, Lcom/laiwang/protocol/android/o;->k:Z

    .line 144
    iget-object v7, p0, Lcom/laiwang/protocol/android/o;->h:Lcom/laiwang/protocol/android/j;

    iget-boolean v8, p0, Lcom/laiwang/protocol/android/o;->k:Z

    invoke-virtual {v7, v8}, Lcom/laiwang/protocol/android/j;->b(Z)V

    .line 146
    const-string/jumbo v7, "[Handshake] %s with reuse %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-boolean v10, p0, Lcom/laiwang/protocol/android/o;->k:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v7, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    invoke-static {v4}, Lizp;->a(Lizy;)Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Lcom/laiwang/protocol/android/k;->a(Ljava/nio/ByteBuffer;Z)V

    .line 148
    iget-object v7, p0, Lcom/laiwang/protocol/android/o;->f:Lcom/laiwang/protocol/android/bu;

    iget-object v8, p0, Lcom/laiwang/protocol/android/o;->s:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v7, v8}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 153
    .end local v2    # "lwsUa":Ljava/lang/String;
    .end local v3    # "oldSni":Ljava/lang/String;
    .end local v4    # "request":Lizv;
    .end local v6    # "sni":Ljava/lang/String;
    :goto_2
    return-void

    .line 129
    .restart local v2    # "lwsUa":Ljava/lang/String;
    .restart local v6    # "sni":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/laiwang/protocol/android/o;->e:Lcom/laiwang/protocol/android/ay;

    invoke-virtual {v9}, Lcom/laiwang/protocol/android/ay;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .restart local v3    # "oldSni":Ljava/lang/String;
    .restart local v4    # "request":Lizv;
    :cond_3
    move v7, v8

    .line 143
    goto :goto_1

    .line 149
    .end local v2    # "lwsUa":Ljava/lang/String;
    .end local v3    # "oldSni":Ljava/lang/String;
    .end local v4    # "request":Lizv;
    .end local v6    # "sni":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[Wtls] "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " handshake error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    iget-object v7, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    invoke-interface {v7, v0}, Lcom/laiwang/protocol/android/k;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method a(Lcom/laiwang/protocol/core/Request$Processor;II)V
    .locals 0
    .param p1, "processor"    # Lcom/laiwang/protocol/core/Request$Processor;
    .param p2, "offset"    # I
    .param p3, "total"    # I

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/laiwang/protocol/core/Request$Processor;->on(II)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[LwsConn] close conn >> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    invoke-interface {v0, p1}, Lcom/laiwang/protocol/android/k;->a(Ljava/lang/Throwable;)V

    .line 341
    return-void
.end method

.method public a(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 81
    const-string/jumbo v0, "[Wtls] start lws con 2.0"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    invoke-interface {v0, p1}, Lcom/laiwang/protocol/android/k;->a(Ljava/net/URI;)V

    .line 84
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 324
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please call lwsControl | lws Data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/nio/ByteBuffer;Lcom/laiwang/protocol/core/Request$Processor;)V
    .locals 6
    .param p1, "req"    # Ljava/nio/ByteBuffer;
    .param p2, "processor"    # Lcom/laiwang/protocol/core/Request$Processor;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 252
    .local v2, "total":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v1, "datas":Ljava/util/List;, "Ljava/util/List<Lizt;>;"
    iget-object v3, p0, Lcom/laiwang/protocol/android/o;->d:Lizo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lizo;->a([BLjava/util/List;)V

    .line 254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lizt;

    .line 255
    .local v0, "data":Lizt;
    iget-object v4, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    invoke-static {v0}, Lizp;->a(Lizy;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/laiwang/protocol/android/k;->a(Ljava/nio/ByteBuffer;)V

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/laiwang/protocol/android/o;->i:J

    .line 257
    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4, v2}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/core/Request$Processor;II)V

    goto :goto_0

    .line 260
    .end local v0    # "data":Lizt;
    :cond_0
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
    .line 329
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please call lwsControl | lws Data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([BI)V
    .locals 7
    .param p1, "req"    # [B
    .param p2, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    if-eqz p1, :cond_0

    :try_start_0
    array-length v3, p1

    if-nez v3, :cond_1

    .line 228
    :cond_0
    const-string/jumbo v3, "[Wtls] %s lwsControl send error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :cond_1
    if-eqz p1, :cond_2

    array-length v3, p1

    if-nez v3, :cond_3

    .line 231
    :cond_2
    const-string/jumbo v3, "[Wtls] %s lwsControl send empty data"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :goto_0
    return-void

    .line 235
    :cond_3
    const-string/jumbo v3, "[Wtls] %s lwsControl"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    new-instance v1, Lizs;

    iget-object v3, p0, Lcom/laiwang/protocol/android/o;->d:Lizo;

    invoke-virtual {v3}, Lizo;->d()Ljaa;

    move-result-object v3

    iget-object v4, p0, Lcom/laiwang/protocol/android/o;->d:Lizo;

    iget v4, v4, Lizo;->d:I

    invoke-direct {v1, v3, v4}, Lizs;-><init>(Ljaa;I)V

    .line 238
    .local v1, "control":Lizs;
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 239
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    and-int/lit16 v3, p2, 0xff

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 241
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 242
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lizs;->a_([B)V

    .line 243
    iget-object v3, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    invoke-static {v1}, Lizp;->a(Lizy;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/laiwang/protocol/android/k;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "control":Lizs;
    :catch_0
    move-exception v2

    .line 245
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[wtls] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " lws control extra error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/k;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/laiwang/protocol/android/k$c;)V
    .locals 2
    .param p1, "listener"    # Lcom/laiwang/protocol/android/k$c;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 376
    instance-of v0, p1, Lcom/laiwang/protocol/android/ab$h;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please use LwsListener"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method protected b(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/laiwang/protocol/android/o;->j:J

    .line 403
    iget-object v2, p0, Lcom/laiwang/protocol/android/o;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 404
    iget-object v2, p0, Lcom/laiwang/protocol/android/o;->d:Lizo;

    iget-object v3, p0, Lcom/laiwang/protocol/android/o;->c:Ljava/util/List;

    new-instance v4, Lcom/laiwang/protocol/android/o$1;

    invoke-direct {v4, p0}, Lcom/laiwang/protocol/android/o$1;-><init>(Lcom/laiwang/protocol/android/o;)V

    invoke-virtual {v2, p1, v3, v4}, Lizo;->a(Ljava/nio/ByteBuffer;Ljava/util/List;Lizx;)V

    .line 503
    iget-object v2, p0, Lcom/laiwang/protocol/android/o;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 504
    .local v1, "payload":[B
    iget-object v3, p0, Lcom/laiwang/protocol/android/o;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/ab$h;

    .line 505
    .local v0, "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v0, :cond_1

    .line 506
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v0, p0, v4}, Lcom/laiwang/protocol/android/ab$h;->a(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 510
    .end local v0    # "listener":Lcom/laiwang/protocol/android/ab$h;
    .end local v1    # "payload":[B
    :cond_2
    return-void
.end method

.method public c()Ljava/net/URI;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/k;->c()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 159
    iget-object v1, p0, Lcom/laiwang/protocol/android/o;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/o;->m:Z

    if-eqz v0, :cond_0

    .line 161
    monitor-exit v1

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/o;->m:Z

    .line 163
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    const-string/jumbo v0, "[Wtls] lws h_b ping %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    invoke-interface {v3}, Lcom/laiwang/protocol/android/k;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    iget-object v1, p0, Lcom/laiwang/protocol/android/o;->d:Lizo;

    invoke-virtual {v1}, Lizo;->b()Lizs;

    move-result-object v1

    invoke-static {v1}, Lizp;->a(Lizy;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/laiwang/protocol/android/k;->a(Ljava/nio/ByteBuffer;Z)V

    .line 166
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->f:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/o;->t:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Lcom/laiwang/protocol/core/Request;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 171
    iget-object v4, p0, Lcom/laiwang/protocol/android/o;->l:Ljava/lang/Object;

    monitor-enter v4

    .line 172
    :try_start_0
    iget-boolean v5, p0, Lcom/laiwang/protocol/android/o;->m:Z

    if-eqz v5, :cond_0

    .line 173
    monitor-exit v4

    move-object v2, v3

    .line 186
    :goto_0
    return-object v2

    .line 174
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/laiwang/protocol/android/o;->m:Z

    .line 175
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    const-string/jumbo v4, "[Wtls] lws data ping %s"

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    invoke-interface {v7}, Lcom/laiwang/protocol/android/k;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :try_start_1
    const-string/jumbo v4, "/!"

    invoke-static {v4}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v2

    .line 179
    .local v2, "request":Lcom/laiwang/protocol/core/Request;
    iget-object v4, p0, Lcom/laiwang/protocol/android/o;->q:Lcom/laiwang/protocol/android/av;

    invoke-virtual {v4, v2}, Lcom/laiwang/protocol/android/av;->a(Lcom/laiwang/protocol/android/bd;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 180
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/laiwang/protocol/android/o;->a(Ljava/nio/ByteBuffer;Lcom/laiwang/protocol/core/Request$Processor;)V

    .line 181
    iget-object v4, p0, Lcom/laiwang/protocol/android/o;->f:Lcom/laiwang/protocol/android/bu;

    iget-object v5, p0, Lcom/laiwang/protocol/android/o;->t:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 183
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "request":Lcom/laiwang/protocol/core/Request;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "[LwpConn] dataPing err"

    invoke-static {v4, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 186
    goto :goto_0

    .line 175
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    iget-object v2, p0, Lcom/laiwang/protocol/android/o;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 192
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/laiwang/protocol/android/o;->m:Z

    .line 193
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v1, p0, Lcom/laiwang/protocol/android/o;->f:Lcom/laiwang/protocol/android/bu;

    iget-object v2, p0, Lcom/laiwang/protocol/android/o;->t:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 195
    iget-object v1, p0, Lcom/laiwang/protocol/android/o;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/ab$h;

    .line 196
    .local v0, "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0, p0}, Lcom/laiwang/protocol/android/ab$h;->e(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 193
    .end local v0    # "listener":Lcom/laiwang/protocol/android/ab$h;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 199
    :cond_1
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->r:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    const-string/jumbo v0, "[Wtls] lws h_b pong"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    iget-object v1, p0, Lcom/laiwang/protocol/android/o;->d:Lizo;

    invoke-virtual {v1}, Lizo;->c()Lizs;

    move-result-object v1

    invoke-static {v1}, Lizp;->a(Lizy;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/laiwang/protocol/android/k;->a(Ljava/nio/ByteBuffer;Z)V

    .line 209
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/laiwang/protocol/android/o;->n:Lcom/laiwang/protocol/android/k;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
