.class public Lcom/laiwang/protocol/android/ab;
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
        Lcom/laiwang/protocol/android/ab$b;,
        Lcom/laiwang/protocol/android/ab$f;,
        Lcom/laiwang/protocol/android/ab$k;,
        Lcom/laiwang/protocol/android/ab$g;,
        Lcom/laiwang/protocol/android/ab$i;,
        Lcom/laiwang/protocol/android/ab$c;,
        Lcom/laiwang/protocol/android/ab$l;,
        Lcom/laiwang/protocol/android/ab$j;,
        Lcom/laiwang/protocol/android/ab$h;,
        Lcom/laiwang/protocol/android/ab$a;,
        Lcom/laiwang/protocol/android/ab$e;,
        Lcom/laiwang/protocol/android/ab$d;
    }
.end annotation


# static fields
.field public static final f:Lcom/laiwang/protocol/android/ab$j;

.field public static final g:Lcom/laiwang/protocol/android/ab$l;

.field public static final h:Lcom/laiwang/protocol/android/ab$c;

.field public static final i:Lcom/laiwang/protocol/android/ab$i;

.field public static final j:Lcom/laiwang/protocol/android/ab$g;

.field public static final k:Lcom/laiwang/protocol/android/ab$b;

.field public static final l:Lcom/laiwang/protocol/android/ab$f;

.field private static y:Ljava/util/concurrent/atomic/AtomicReference;
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
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/ab$h;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/laiwang/protocol/android/j;

.field public volatile e:Z

.field private m:Lcom/laiwang/protocol/android/bu;

.field private final n:Ljava/lang/Object;

.field private o:Z

.field private p:Lcom/laiwang/protocol/android/y;

.field private q:Lcom/laiwang/protocol/android/k;

.field private volatile r:Lcom/laiwang/protocol/android/k$d;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Lcom/laiwang/protocol/android/av;

.field private volatile v:Ljava/lang/String;

.field private w:Lcom/laiwang/protocol/android/bu$a;

.field private x:Lcom/laiwang/protocol/android/bu$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/laiwang/protocol/android/ab;->y:Ljava/util/concurrent/atomic/AtomicReference;

    .line 576
    new-instance v1, Lcom/laiwang/protocol/android/ab$j;

    invoke-direct {v1}, Lcom/laiwang/protocol/android/ab$j;-><init>()V

    sput-object v1, Lcom/laiwang/protocol/android/ab;->f:Lcom/laiwang/protocol/android/ab$j;

    .line 577
    new-instance v1, Lcom/laiwang/protocol/android/ab$l;

    invoke-direct {v1}, Lcom/laiwang/protocol/android/ab$l;-><init>()V

    sput-object v1, Lcom/laiwang/protocol/android/ab;->g:Lcom/laiwang/protocol/android/ab$l;

    .line 578
    new-instance v1, Lcom/laiwang/protocol/android/ab$c;

    invoke-direct {v1}, Lcom/laiwang/protocol/android/ab$c;-><init>()V

    sput-object v1, Lcom/laiwang/protocol/android/ab;->h:Lcom/laiwang/protocol/android/ab$c;

    .line 580
    new-instance v1, Lcom/laiwang/protocol/android/ab$i;

    invoke-direct {v1}, Lcom/laiwang/protocol/android/ab$i;-><init>()V

    sput-object v1, Lcom/laiwang/protocol/android/ab;->i:Lcom/laiwang/protocol/android/ab$i;

    .line 581
    new-instance v1, Lcom/laiwang/protocol/android/ab$g;

    invoke-direct {v1}, Lcom/laiwang/protocol/android/ab$g;-><init>()V

    sput-object v1, Lcom/laiwang/protocol/android/ab;->j:Lcom/laiwang/protocol/android/ab$g;

    .line 582
    new-instance v1, Lcom/laiwang/protocol/android/ab$b;

    invoke-direct {v1}, Lcom/laiwang/protocol/android/ab$b;-><init>()V

    sput-object v1, Lcom/laiwang/protocol/android/ab;->k:Lcom/laiwang/protocol/android/ab$b;

    .line 584
    new-instance v1, Lcom/laiwang/protocol/android/ab$f;

    invoke-direct {v1}, Lcom/laiwang/protocol/android/ab$f;-><init>()V

    sput-object v1, Lcom/laiwang/protocol/android/ab;->l:Lcom/laiwang/protocol/android/ab$f;

    .line 589
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 590
    .local v0, "EMPTY":[Ljava/lang/StackTraceElement;
    sget-object v1, Lcom/laiwang/protocol/android/ab;->f:Lcom/laiwang/protocol/android/ab$j;

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/ab$j;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 591
    sget-object v1, Lcom/laiwang/protocol/android/ab;->g:Lcom/laiwang/protocol/android/ab$l;

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/ab$l;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 592
    sget-object v1, Lcom/laiwang/protocol/android/ab;->i:Lcom/laiwang/protocol/android/ab$i;

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/ab$i;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 593
    sget-object v1, Lcom/laiwang/protocol/android/ab;->j:Lcom/laiwang/protocol/android/ab$g;

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/ab$g;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 594
    sget-object v1, Lcom/laiwang/protocol/android/ab;->k:Lcom/laiwang/protocol/android/ab$b;

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/ab$b;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 595
    sget-object v1, Lcom/laiwang/protocol/android/ab;->h:Lcom/laiwang/protocol/android/ab$c;

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/ab$c;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 596
    sget-object v1, Lcom/laiwang/protocol/android/ab;->l:Lcom/laiwang/protocol/android/ab$f;

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/ab$f;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 597
    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/android/j;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/android/bu;Ljava/lang/String;ZLcom/laiwang/protocol/android/av;)V
    .locals 2
    .param p1, "stat"    # Lcom/laiwang/protocol/android/j;
    .param p2, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p3, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;
    .param p4, "vhost"    # Ljava/lang/String;
    .param p5, "sessionReuse"    # Z
    .param p6, "codecHandler"    # Lcom/laiwang/protocol/android/av;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/laiwang/protocol/attribute/DefaultAttributeMap;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ab;->c:Ljava/util/List;

    .line 38
    iput-boolean v1, p0, Lcom/laiwang/protocol/android/ab;->e:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ab;->n:Ljava/lang/Object;

    .line 40
    iput-boolean v1, p0, Lcom/laiwang/protocol/android/ab;->o:Z

    .line 47
    iput-boolean v1, p0, Lcom/laiwang/protocol/android/ab;->t:Z

    .line 59
    sget-object v0, Lcom/laiwang/protocol/android/k$d;->b:Lcom/laiwang/protocol/android/k$d;

    iput-object v0, p0, Lcom/laiwang/protocol/android/ab;->r:Lcom/laiwang/protocol/android/k$d;

    .line 60
    iput-boolean p5, p0, Lcom/laiwang/protocol/android/ab;->t:Z

    .line 61
    iput-object p6, p0, Lcom/laiwang/protocol/android/ab;->u:Lcom/laiwang/protocol/android/av;

    .line 62
    iput-object p1, p0, Lcom/laiwang/protocol/android/ab;->d:Lcom/laiwang/protocol/android/j;

    .line 63
    iput-object p3, p0, Lcom/laiwang/protocol/android/ab;->m:Lcom/laiwang/protocol/android/bu;

    .line 64
    iput-object p4, p0, Lcom/laiwang/protocol/android/ab;->s:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    .line 66
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    new-instance v1, Lcom/laiwang/protocol/android/ab$a;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/ab$a;-><init>(Lcom/laiwang/protocol/android/ab;)V

    invoke-interface {v0, v1}, Lcom/laiwang/protocol/android/k;->a(Lcom/laiwang/protocol/android/k$c;)V

    .line 67
    new-instance v0, Lcom/laiwang/protocol/android/ab$d;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/ab$d;-><init>(Lcom/laiwang/protocol/android/ab;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ab;->w:Lcom/laiwang/protocol/android/bu$a;

    .line 68
    new-instance v0, Lcom/laiwang/protocol/android/ab$e;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/ab$e;-><init>(Lcom/laiwang/protocol/android/ab;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ab;->x:Lcom/laiwang/protocol/android/bu$a;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/ab;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ab;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/k$d;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/laiwang/protocol/android/ab;->r:Lcom/laiwang/protocol/android/k$d;

    return-object p1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/ab;)Lcom/laiwang/protocol/android/k;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ab;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    return-object v0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/ab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ab;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/laiwang/protocol/android/ab;->v:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 375
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 376
    const-string/jumbo v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 377
    .local v0, "param":Ljava/lang/String;
    const-string/jumbo v4, "sni="

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 382
    .end local v0    # "param":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 376
    .restart local v0    # "param":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "param":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "default"

    goto :goto_1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/ab;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ab;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/laiwang/protocol/android/ab;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/ab;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ab;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/laiwang/protocol/android/ab;)Lcom/laiwang/protocol/android/bu;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ab;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->m:Lcom/laiwang/protocol/android/bu;

    return-object v0
.end method

.method static synthetic d(Lcom/laiwang/protocol/android/ab;)Lcom/laiwang/protocol/android/k$d;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ab;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->r:Lcom/laiwang/protocol/android/k$d;

    return-object v0
.end method

.method static synthetic e(Lcom/laiwang/protocol/android/ab;)Lcom/laiwang/protocol/android/bu$a;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ab;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->w:Lcom/laiwang/protocol/android/bu$a;

    return-object v0
.end method

.method static synthetic f(Lcom/laiwang/protocol/android/ab;)Lcom/laiwang/protocol/android/bu$a;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ab;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->x:Lcom/laiwang/protocol/android/bu$a;

    return-object v0
.end method

.method static synthetic g(Lcom/laiwang/protocol/android/ab;)Lcom/laiwang/protocol/android/y;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ab;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->p:Lcom/laiwang/protocol/android/y;

    return-object v0
.end method

.method static synthetic h(Lcom/laiwang/protocol/android/ab;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ab;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->v:Ljava/lang/String;

    return-object v0
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/laiwang/protocol/android/ab;->y:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 119
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/k;->a()V

    .line 327
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k$c;)V
    .locals 2
    .param p1, "listener"    # Lcom/laiwang/protocol/android/k$c;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 361
    instance-of v0, p1, Lcom/laiwang/protocol/android/ab$h;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please use LwsListener"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->c:Ljava/util/List;

    check-cast p1, Lcom/laiwang/protocol/android/ab$h;

    .end local p1    # "listener":Lcom/laiwang/protocol/android/k$c;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method protected a(Lcom/laiwang/protocol/android/k;)V
    .locals 13
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    :try_start_0
    iget-object v9, p0, Lcom/laiwang/protocol/android/ab;->d:Lcom/laiwang/protocol/android/j;

    iget-object v9, v9, Lcom/laiwang/protocol/android/j;->c:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v9}, Lcom/laiwang/protocol/android/j$a;->a()V

    .line 124
    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->c()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/laiwang/protocol/android/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "sni":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/laiwang/protocol/android/ab;->s:Ljava/lang/String;

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
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/ab;->c()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/ab;->c()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->getPort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "via":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/android/ae;->a()Lcom/laiwang/protocol/android/ae$a;

    move-result-object v5

    .line 128
    .local v5, "session":Lcom/laiwang/protocol/android/ae$a;
    iget-boolean v9, p0, Lcom/laiwang/protocol/android/ab;->t:Z

    if-eqz v9, :cond_2

    if-eqz v5, :cond_2

    iget-object v9, v5, Lcom/laiwang/protocol/android/ae$a;->a:[B

    if-eqz v9, :cond_2

    iget-object v9, v5, Lcom/laiwang/protocol/android/ae$a;->b:[B

    if-eqz v9, :cond_2

    .line 129
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/laiwang/protocol/android/ab;->e:Z

    .line 130
    new-instance v6, Ljava/lang/String;

    iget-object v9, v5, Lcom/laiwang/protocol/android/ae$a;->a:[B

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([B)V

    .line 131
    .local v6, "sid":Ljava/lang/String;
    const-string/jumbo v9, "[Wtls] %s lws handshake sid %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    new-instance v9, Lcom/laiwang/protocol/android/y;

    iget-object v10, v5, Lcom/laiwang/protocol/android/ae$a;->a:[B

    iget-object v11, v5, Lcom/laiwang/protocol/android/ae$a;->b:[B

    invoke-direct {v9, v10, v11, v2, v8}, Lcom/laiwang/protocol/android/y;-><init>([B[BLjava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/laiwang/protocol/android/ab;->p:Lcom/laiwang/protocol/android/y;

    .line 133
    iget-object v9, p0, Lcom/laiwang/protocol/android/ab;->d:Lcom/laiwang/protocol/android/j;

    iget-boolean v10, p0, Lcom/laiwang/protocol/android/ab;->e:Z

    invoke-virtual {v9, v10}, Lcom/laiwang/protocol/android/j;->b(Z)V

    .line 146
    .end local v6    # "sid":Ljava/lang/String;
    :goto_0
    const-string/jumbo v9, "[Wtls] %s handshake ua %s sni is %s with reuse %s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    iget-boolean v12, p0, Lcom/laiwang/protocol/android/ab;->e:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v9, p0, Lcom/laiwang/protocol/android/ab;->p:Lcom/laiwang/protocol/android/y;

    invoke-virtual {v9}, Lcom/laiwang/protocol/android/y;->b()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 149
    .local v4, "request":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    const/4 v10, 0x1

    invoke-interface {v9, v4, v10}, Lcom/laiwang/protocol/android/k;->a(Ljava/nio/ByteBuffer;Z)V

    .line 151
    iget-object v9, p0, Lcom/laiwang/protocol/android/ab;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/ab$h;

    .line 152
    .local v1, "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v1, :cond_0

    .line 153
    invoke-interface {v1, p0}, Lcom/laiwang/protocol/android/ab$h;->f(Lcom/laiwang/protocol/android/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    .end local v1    # "listener":Lcom/laiwang/protocol/android/ab$h;
    .end local v2    # "lwsUa":Ljava/lang/String;
    .end local v4    # "request":Ljava/nio/ByteBuffer;
    .end local v5    # "session":Lcom/laiwang/protocol/android/ae$a;
    .end local v7    # "sni":Ljava/lang/String;
    .end local v8    # "via":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[Wtls] "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " handshake error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    iget-object v9, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    invoke-interface {v9, v0}, Lcom/laiwang/protocol/android/k;->a(Ljava/lang/Throwable;)V

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 135
    .restart local v2    # "lwsUa":Ljava/lang/String;
    .restart local v5    # "session":Lcom/laiwang/protocol/android/ae$a;
    .restart local v7    # "sni":Ljava/lang/String;
    .restart local v8    # "via":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v7}, Lcom/laiwang/protocol/android/ad;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 136
    .local v3, "pubkey":[B
    if-nez v3, :cond_4

    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[Wtls] lws handshake pubkey empty >> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 138
    iget-object v9, p0, Lcom/laiwang/protocol/android/ab;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/ab$h;

    .line 139
    .restart local v1    # "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v1, :cond_3

    .line 140
    invoke-interface {v1, p0}, Lcom/laiwang/protocol/android/ab$h;->h(Lcom/laiwang/protocol/android/k;)V

    goto :goto_3

    .line 144
    .end local v1    # "listener":Lcom/laiwang/protocol/android/ab$h;
    :cond_4
    new-instance v9, Lcom/laiwang/protocol/android/y;

    invoke-direct {v9, v3, v7, v2, v8}, Lcom/laiwang/protocol/android/y;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/laiwang/protocol/android/ab;->p:Lcom/laiwang/protocol/android/y;

    goto/16 :goto_0

    .line 155
    .end local v3    # "pubkey":[B
    .restart local v4    # "request":Ljava/nio/ByteBuffer;
    :cond_5
    iget-object v9, p0, Lcom/laiwang/protocol/android/ab;->m:Lcom/laiwang/protocol/android/bu;

    iget-object v10, p0, Lcom/laiwang/protocol/android/ab;->w:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v9, v10}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[LwsConn]  close conn >> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/ab;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    invoke-interface {v0, p1}, Lcom/laiwang/protocol/android/k;->a(Ljava/lang/Throwable;)V

    .line 333
    return-void
.end method

.method public a(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 73
    const-string/jumbo v0, "[Wtls] start lws con 3.0"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    invoke-interface {v0, p1}, Lcom/laiwang/protocol/android/k;->a(Ljava/net/URI;)V

    .line 76
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 316
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please call lwsControl | lws Data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/nio/ByteBuffer;Lcom/laiwang/protocol/core/Request$Processor;)V
    .locals 4
    .param p1, "req"    # Ljava/nio/ByteBuffer;
    .param p2, "processor"    # Lcom/laiwang/protocol/core/Request$Processor;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    iget-object v2, p0, Lcom/laiwang/protocol/android/ab;->p:Lcom/laiwang/protocol/android/y;

    invoke-virtual {v2, p1}, Lcom/laiwang/protocol/android/y;->a(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 245
    .local v0, "datas":[Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lcom/laiwang/protocol/android/k;->a(Ljava/nio/ByteBuffer;)V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
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
    .line 321
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please call lwsControl | lws Data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([BI)V
    .locals 0
    .param p1, "req"    # [B
    .param p2, "type"    # I

    .prologue
    .line 252
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

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
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 372
    return-void
.end method

.method protected b(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 386
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->p:Lcom/laiwang/protocol/android/y;

    new-instance v1, Lcom/laiwang/protocol/android/ab$1;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/ab$1;-><init>(Lcom/laiwang/protocol/android/ab;)V

    invoke-virtual {v0, p1, v1}, Lcom/laiwang/protocol/android/y;->a(Ljava/nio/ByteBuffer;Lcom/laiwang/protocol/android/y$a;)V

    .line 491
    return-void
.end method

.method public c()Ljava/net/URI;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

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

    .line 166
    iget-object v1, p0, Lcom/laiwang/protocol/android/ab;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/ab;->o:Z

    if-eqz v0, :cond_0

    .line 168
    monitor-exit v1

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/ab;->o:Z

    .line 170
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    const-string/jumbo v0, "[Wtls] lws h_b ping %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    invoke-interface {v3}, Lcom/laiwang/protocol/android/k;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    iget-object v1, p0, Lcom/laiwang/protocol/android/ab;->p:Lcom/laiwang/protocol/android/y;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/y;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/laiwang/protocol/android/k;->a(Ljava/nio/ByteBuffer;Z)V

    .line 173
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->m:Lcom/laiwang/protocol/android/bu;

    iget-object v1, p0, Lcom/laiwang/protocol/android/ab;->x:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    goto :goto_0

    .line 170
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

    .line 178
    iget-object v4, p0, Lcom/laiwang/protocol/android/ab;->n:Ljava/lang/Object;

    monitor-enter v4

    .line 179
    :try_start_0
    iget-boolean v5, p0, Lcom/laiwang/protocol/android/ab;->o:Z

    if-eqz v5, :cond_0

    .line 180
    monitor-exit v4

    move-object v2, v3

    .line 193
    :goto_0
    return-object v2

    .line 181
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/laiwang/protocol/android/ab;->o:Z

    .line 182
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const-string/jumbo v4, "[Wtls] lws data ping %s"

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    invoke-interface {v7}, Lcom/laiwang/protocol/android/k;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :try_start_1
    const-string/jumbo v4, "/!"

    invoke-static {v4}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v2

    .line 186
    .local v2, "request":Lcom/laiwang/protocol/core/Request;
    iget-object v4, p0, Lcom/laiwang/protocol/android/ab;->u:Lcom/laiwang/protocol/android/av;

    invoke-virtual {v4, v2}, Lcom/laiwang/protocol/android/av;->a(Lcom/laiwang/protocol/android/bd;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/laiwang/protocol/android/ab;->a(Ljava/nio/ByteBuffer;Lcom/laiwang/protocol/core/Request$Processor;)V

    .line 188
    iget-object v4, p0, Lcom/laiwang/protocol/android/ab;->m:Lcom/laiwang/protocol/android/bu;

    iget-object v5, p0, Lcom/laiwang/protocol/android/ab;->x:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 190
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "request":Lcom/laiwang/protocol/core/Request;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "[LwpConn] dataPing err"

    invoke-static {v4, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 193
    goto :goto_0

    .line 182
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
    .line 198
    iget-object v2, p0, Lcom/laiwang/protocol/android/ab;->n:Ljava/lang/Object;

    monitor-enter v2

    .line 199
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/laiwang/protocol/android/ab;->o:Z

    .line 200
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v1, p0, Lcom/laiwang/protocol/android/ab;->m:Lcom/laiwang/protocol/android/bu;

    iget-object v2, p0, Lcom/laiwang/protocol/android/ab;->x:Lcom/laiwang/protocol/android/bu$a;

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 202
    iget-object v1, p0, Lcom/laiwang/protocol/android/ab;->c:Ljava/util/List;

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

    .line 203
    .local v0, "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0, p0}, Lcom/laiwang/protocol/android/ab$h;->e(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 200
    .end local v0    # "listener":Lcom/laiwang/protocol/android/ab$h;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 206
    :cond_1
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->v:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x2

    return v0
.end method

.method public j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    const-string/jumbo v0, "[Wtls] lws h_b pong"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    iget-object v1, p0, Lcom/laiwang/protocol/android/ab;->p:Lcom/laiwang/protocol/android/y;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/y;->d()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/laiwang/protocol/android/k;->a(Ljava/nio/ByteBuffer;Z)V

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/laiwang/protocol/android/ab;->q:Lcom/laiwang/protocol/android/k;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
