.class public Lcom/laiwang/protocol/android/m;
.super Ljava/lang/Object;
.source "LwpConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/m$c;,
        Lcom/laiwang/protocol/android/m$e;,
        Lcom/laiwang/protocol/android/m$a;,
        Lcom/laiwang/protocol/android/m$d;,
        Lcom/laiwang/protocol/android/m$b;,
        Lcom/laiwang/protocol/android/m$f;
    }
.end annotation


# static fields
.field public static c:Lcom/laiwang/protocol/android/m$c;

.field private static volatile s:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile t:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/content/Context;

.field private B:Landroid/app/PendingIntent;

.field private C:I

.field private D:Lcom/laiwang/protocol/android/Extension;

.field private E:Z

.field private d:Lcom/laiwang/protocol/android/bu;

.field private e:Lcom/laiwang/protocol/android/bu;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/m$e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/laiwang/protocol/android/aa;

.field private k:Lcom/laiwang/protocol/android/j;

.field private l:Lcom/laiwang/protocol/android/k$d;

.field private m:Lcom/laiwang/protocol/android/av;

.field private n:Lcom/laiwang/protocol/b;

.field private o:Lcom/laiwang/protocol/core/Request;

.field private p:Lcom/laiwang/protocol/core/Request;

.field private final q:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Lcom/laiwang/protocol/android/m$b;

.field private y:Z

.field private z:Lcom/laiwang/protocol/android/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/m;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/m;->t:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1056
    new-instance v0, Lcom/laiwang/protocol/android/m$c;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/m$c;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/m;->c:Lcom/laiwang/protocol/android/m$c;

    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/b;IZZZLandroid/content/Context;Landroid/app/PendingIntent;Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bu;)V
    .locals 9
    .param p1, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;
    .param p2, "cacheHeaders"    # Lcom/laiwang/protocol/b;
    .param p3, "trafficTag"    # I
    .param p4, "needSubscribe"    # Z
    .param p5, "isKeepAlive"    # Z
    .param p6, "sessionReuse"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "appKeepAliveIntent"    # Landroid/app/PendingIntent;
    .param p9, "extension"    # Lcom/laiwang/protocol/android/Extension;
    .param p10, "readExecutor"    # Lcom/laiwang/protocol/android/bu;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/m;->i:Ljava/util/List;

    .line 83
    sget-object v1, Lcom/laiwang/protocol/android/k$d;->b:Lcom/laiwang/protocol/android/k$d;

    iput-object v1, p0, Lcom/laiwang/protocol/android/m;->l:Lcom/laiwang/protocol/android/k$d;

    .line 92
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/m;->q:Ljava/util/Queue;

    .line 93
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/m;->r:Ljava/util/Queue;

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/laiwang/protocol/android/m;->C:I

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/laiwang/protocol/android/m;->E:Z

    .line 114
    iput-object p1, p0, Lcom/laiwang/protocol/android/m;->d:Lcom/laiwang/protocol/android/bu;

    .line 115
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/laiwang/protocol/android/m;->e:Lcom/laiwang/protocol/android/bu;

    .line 116
    new-instance v1, Lcom/laiwang/protocol/android/av;

    const/16 v2, 0x96

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/laiwang/protocol/android/av;-><init>(III)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/m;->m:Lcom/laiwang/protocol/android/av;

    .line 117
    iput-object p2, p0, Lcom/laiwang/protocol/android/m;->n:Lcom/laiwang/protocol/b;

    .line 118
    invoke-virtual/range {p9 .. p9}, Lcom/laiwang/protocol/android/Extension;->noAckPushUri()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/laiwang/protocol/android/m;->g:Ljava/util/Map;

    .line 119
    invoke-virtual/range {p9 .. p9}, Lcom/laiwang/protocol/android/Extension;->noAckRpcUri()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/laiwang/protocol/android/m;->h:Ljava/util/Map;

    .line 120
    new-instance v2, Lcom/laiwang/protocol/android/j;

    const v1, 0xa001

    if-ne p3, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v1}, Lcom/laiwang/protocol/android/j;-><init>(Z)V

    iput-object v2, p0, Lcom/laiwang/protocol/android/m;->k:Lcom/laiwang/protocol/android/j;

    .line 121
    iput-boolean p4, p0, Lcom/laiwang/protocol/android/m;->w:Z

    .line 122
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/laiwang/protocol/android/m;->D:Lcom/laiwang/protocol/android/Extension;

    .line 123
    const/4 v8, 0x1

    .line 124
    .local v8, "lwsV3":Z
    invoke-static {}, Lcom/laiwang/protocol/android/y;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    const/4 v8, 0x0

    .line 127
    :cond_0
    invoke-virtual/range {p9 .. p9}, Lcom/laiwang/protocol/android/Extension;->vhost()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "vhost":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 129
    new-instance v1, Lcom/laiwang/protocol/android/ab;

    iget-object v2, p0, Lcom/laiwang/protocol/android/m;->k:Lcom/laiwang/protocol/android/j;

    new-instance v3, Lcom/laiwang/protocol/android/v;

    invoke-direct {v3, p3, p1}, Lcom/laiwang/protocol/android/v;-><init>(ILcom/laiwang/protocol/android/bu;)V

    iget-object v7, p0, Lcom/laiwang/protocol/android/m;->m:Lcom/laiwang/protocol/android/av;

    move-object v4, p1

    move v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/laiwang/protocol/android/ab;-><init>(Lcom/laiwang/protocol/android/j;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/android/bu;Ljava/lang/String;ZLcom/laiwang/protocol/android/av;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    .line 137
    :goto_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    new-instance v2, Lcom/laiwang/protocol/android/m$f;

    invoke-direct {v2, p0}, Lcom/laiwang/protocol/android/m$f;-><init>(Lcom/laiwang/protocol/android/m;)V

    invoke-interface {v1, v2}, Lcom/laiwang/protocol/android/aa;->a(Lcom/laiwang/protocol/android/k$c;)V

    .line 138
    iput-boolean p5, p0, Lcom/laiwang/protocol/android/m;->y:Z

    .line 139
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/laiwang/protocol/android/m;->A:Landroid/content/Context;

    .line 140
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/laiwang/protocol/android/m;->B:Landroid/app/PendingIntent;

    .line 141
    new-instance v1, Lcom/laiwang/protocol/android/m$b;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/m$b;-><init>(Lcom/laiwang/protocol/android/m;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/m;->x:Lcom/laiwang/protocol/android/m$b;

    .line 142
    return-void

    .line 120
    .end local v5    # "vhost":Ljava/lang/String;
    .end local v8    # "lwsV3":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 131
    .restart local v5    # "vhost":Ljava/lang/String;
    .restart local v8    # "lwsV3":Z
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_3

    .line 132
    new-instance v1, Lcom/laiwang/protocol/android/o;

    iget-object v2, p0, Lcom/laiwang/protocol/android/m;->k:Lcom/laiwang/protocol/android/j;

    new-instance v3, Lcom/laiwang/protocol/android/v;

    invoke-direct {v3, p3, p1}, Lcom/laiwang/protocol/android/v;-><init>(ILcom/laiwang/protocol/android/bu;)V

    iget-object v7, p0, Lcom/laiwang/protocol/android/m;->m:Lcom/laiwang/protocol/android/av;

    move-object v4, p1

    move v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/laiwang/protocol/android/o;-><init>(Lcom/laiwang/protocol/android/j;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/android/bu;Ljava/lang/String;ZLcom/laiwang/protocol/android/av;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    goto :goto_1

    .line 134
    :cond_3
    new-instance v1, Lcom/laiwang/protocol/android/o;

    iget-object v2, p0, Lcom/laiwang/protocol/android/m;->k:Lcom/laiwang/protocol/android/j;

    new-instance v3, Lcom/laiwang/protocol/android/u;

    invoke-direct {v3, p3}, Lcom/laiwang/protocol/android/u;-><init>(I)V

    iget-object v7, p0, Lcom/laiwang/protocol/android/m;->m:Lcom/laiwang/protocol/android/av;

    move-object v4, p1

    move v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/laiwang/protocol/android/o;-><init>(Lcom/laiwang/protocol/android/j;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/android/bu;Ljava/lang/String;ZLcom/laiwang/protocol/android/av;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    goto :goto_1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/m;I)I
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/laiwang/protocol/android/m;->C:I

    return p1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/ac;)Lcom/laiwang/protocol/android/ac;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/ac;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/laiwang/protocol/android/m;->z:Lcom/laiwang/protocol/android/ac;

    return-object p1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/av;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->m:Lcom/laiwang/protocol/android/av;

    return-object v0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/k$d;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/laiwang/protocol/android/m;->l:Lcom/laiwang/protocol/android/k$d;

    return-object p1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/core/Request;)Lcom/laiwang/protocol/core/Request;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;
    .param p1, "x1"    # Lcom/laiwang/protocol/core/Request;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/laiwang/protocol/android/m;->o:Lcom/laiwang/protocol/core/Request;

    return-object p1
.end method

.method private a(Lcom/laiwang/protocol/android/Reply;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 738
    .local p1, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    if-eqz p1, :cond_0

    .line 739
    new-instance v0, Lcom/laiwang/protocol/core/Response;

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    iget v1, v1, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/laiwang/protocol/core/Response;-><init>(Ljava/lang/Integer;)V

    .line 740
    .local v0, "response":Lcom/laiwang/protocol/core/Response;
    const-string/jumbo v1, "uid"

    sget-object v2, Lcom/laiwang/protocol/Config;->_UID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/laiwang/protocol/core/Response;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 741
    invoke-interface {p1, v0}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    .line 743
    .end local v0    # "response":Lcom/laiwang/protocol/core/Response;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/bd;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/bd;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/m;->b(Lcom/laiwang/protocol/android/bd;)V

    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/core/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;
    .param p1, "x1"    # Lcom/laiwang/protocol/core/Response;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method

.method private a(Lcom/laiwang/protocol/core/Request;)V
    .locals 8
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 777
    iget-object v5, p0, Lcom/laiwang/protocol/android/m;->n:Lcom/laiwang/protocol/b;

    invoke-interface {v5}, Lcom/laiwang/protocol/b;->b()Ljava/util/Map;

    move-result-object v0

    .line 778
    .local v0, "authHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 779
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 780
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 781
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 782
    .local v4, "value":Ljava/lang/String;
    invoke-static {v3}, Lcom/laiwang/protocol/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/laiwang/protocol/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 783
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    goto :goto_0

    .line 788
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_2

    .line 789
    invoke-static {}, Lcom/laiwang/protocol/android/Foreground;->get()Lcom/laiwang/protocol/android/Foreground;

    move-result-object v2

    .line 790
    .local v2, "foreground":Lcom/laiwang/protocol/android/Foreground;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/Foreground;->isBackground()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 791
    const-string/jumbo v5, "app-stat"

    const-string/jumbo v6, "1"

    invoke-virtual {p1, v5, v6}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 796
    .end local v2    # "foreground":Lcom/laiwang/protocol/android/Foreground;
    :cond_2
    :goto_1
    return-void

    .line 793
    .restart local v2    # "foreground":Lcom/laiwang/protocol/android/Foreground;
    :cond_3
    const-string/jumbo v5, "app-stat"

    const-string/jumbo v6, "0"

    invoke-virtual {p1, v5, v6}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    goto :goto_1
.end method

.method private a(Lcom/laiwang/protocol/core/Response;)V
    .locals 10
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 746
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v4

    if-nez v4, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    const-string/jumbo v4, "p"

    invoke-static {v4}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v0

    .line 751
    .local v0, "cast":Ljac;
    :try_start_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v4

    const-class v5, Lcom/laiwang/protocol/android/as;

    invoke-interface {v0, v4, v5}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/as;

    .line 756
    .local v1, "deliveryRegModel":Lcom/laiwang/protocol/android/as;
    iget-object v4, v1, Lcom/laiwang/protocol/android/as;->c:Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 757
    const-string/jumbo v4, "[proto_config] stime %s ltime %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/laiwang/protocol/android/as;->c:Ljava/lang/Long;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    iget-object v4, v1, Lcom/laiwang/protocol/android/as;->c:Ljava/lang/Long;

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/laiwang/protocol/util/StringUtils;->longValue(Ljava/lang/Long;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/s;->a(J)V

    .line 760
    :cond_2
    iget-object v4, v1, Lcom/laiwang/protocol/android/as;->d:Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 761
    const-string/jumbo v4, "[proto_config] from china %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/laiwang/protocol/android/as;->d:Ljava/lang/Boolean;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    iget-object v4, v1, Lcom/laiwang/protocol/android/as;->d:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/laiwang/protocol/android/s;->a(Z)V

    .line 765
    :cond_3
    const-string/jumbo v4, "[proto_config] unit name %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/laiwang/protocol/android/as;->e:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    const-string/jumbo v4, "unit_name"

    invoke-static {v4}, Lcom/laiwang/protocol/android/cg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 767
    .local v3, "localUnitName":Ljava/lang/String;
    iget-object v4, v1, Lcom/laiwang/protocol/android/as;->e:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 768
    const-string/jumbo v4, "unit_name"

    iget-object v5, v1, Lcom/laiwang/protocol/android/as;->e:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/cg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 770
    .end local v1    # "deliveryRegModel":Lcom/laiwang/protocol/android/as;
    .end local v3    # "localUnitName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 771
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[proto_config] parse failed"

    invoke-static {v4, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private a(ILcom/laiwang/protocol/android/Reply;)Z
    .locals 2
    .param p1, "delay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 544
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    const-string/jumbo v0, "[LwpConn] start dev reg"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/laiwang/protocol/android/m;->t:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const-string/jumbo v0, "[LwpConn] no dev token"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    .line 550
    :cond_0
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/m;->w:Z

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->d:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/m$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/laiwang/protocol/android/m$d;-><init>(Lcom/laiwang/protocol/android/m;ILcom/laiwang/protocol/android/Reply;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 554
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/m;ILcom/laiwang/protocol/android/Reply;)Z
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/laiwang/protocol/android/Reply;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/android/m;->b(ILcom/laiwang/protocol/android/Reply;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/core/Request;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->o:Lcom/laiwang/protocol/core/Request;

    return-object v0
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/core/Request;)Lcom/laiwang/protocol/core/Request;
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;
    .param p1, "x1"    # Lcom/laiwang/protocol/core/Request;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/laiwang/protocol/android/m;->p:Lcom/laiwang/protocol/core/Request;

    return-object p1
.end method

.method private b(Lcom/laiwang/protocol/android/bd;)V
    .locals 10
    .param p1, "message"    # Lcom/laiwang/protocol/android/bd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 965
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 966
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    const/4 v2, 0x0

    .line 968
    .local v2, "isRequest":Z
    instance-of v6, p1, Lcom/laiwang/protocol/core/Request;

    if-eqz v6, :cond_2

    .line 969
    const/4 v2, 0x1

    .line 970
    const-string/jumbo v6, "LWP "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, p1

    check-cast v6, Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v6}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    :goto_0
    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 976
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 977
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 978
    .local v5, "v":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 979
    .local v3, "key":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v6, "token"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 980
    if-nez v5, :cond_3

    const/4 v5, 0x0

    .line 982
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 972
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "v":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->startLine()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 980
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "v":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 985
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "v":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 987
    return-void
.end method

.method private b(ILcom/laiwang/protocol/android/Reply;)Z
    .locals 2
    .param p1, "delay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 724
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    const-string/jumbo v0, "[LwpConn] start account reg"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 725
    sget-object v0, Lcom/laiwang/protocol/android/m;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    const-string/jumbo v0, "[LwpConn] no auth token"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 727
    const/4 v0, 0x0

    .line 732
    :goto_0
    return v0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->d:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/m$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/laiwang/protocol/android/m$a;-><init>(Lcom/laiwang/protocol/android/m;ILcom/laiwang/protocol/android/Reply;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 732
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/m;ILcom/laiwang/protocol/android/Reply;)Z
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/laiwang/protocol/android/Reply;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/android/m;->a(ILcom/laiwang/protocol/android/Reply;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/m$b;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->x:Lcom/laiwang/protocol/android/m$b;

    return-object v0
.end method

.method static synthetic c(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/core/Request;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;
    .param p1, "x1"    # Lcom/laiwang/protocol/core/Request;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/core/Request;)V

    return-void
.end method

.method static synthetic d(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bu;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->d:Lcom/laiwang/protocol/android/bu;

    return-object v0
.end method

.method static synthetic e(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/core/Request;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->p:Lcom/laiwang/protocol/core/Request;

    return-object v0
.end method

.method static synthetic f(Lcom/laiwang/protocol/android/m;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->q:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic g(Lcom/laiwang/protocol/android/m;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->r:Ljava/util/Queue;

    return-object v0
.end method

.method public static g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 489
    sget-object v0, Lcom/laiwang/protocol/android/m;->t:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 490
    sget-object v0, Lcom/laiwang/protocol/android/m;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 491
    invoke-static {}, Lcom/laiwang/protocol/android/ab;->h()V

    .line 493
    return-void
.end method

.method static synthetic h(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/aa;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    return-object v0
.end method

.method static synthetic i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bu;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->e:Lcom/laiwang/protocol/android/bu;

    return-object v0
.end method

.method static synthetic k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->k:Lcom/laiwang/protocol/android/j;

    return-object v0
.end method

.method static synthetic l()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/laiwang/protocol/android/m;->t:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic l(Lcom/laiwang/protocol/android/m;)Z
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/m;->y:Z

    return v0
.end method

.method static synthetic m(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/ac;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->z:Lcom/laiwang/protocol/android/ac;

    return-object v0
.end method

.method static synthetic m()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/laiwang/protocol/android/m;->s:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic n(Lcom/laiwang/protocol/android/m;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->A:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lcom/laiwang/protocol/android/m;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->B:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic p(Lcom/laiwang/protocol/android/m;)Z
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/m;->E:Z

    return v0
.end method

.method static synthetic q(Lcom/laiwang/protocol/android/m;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic r(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/k$d;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->l:Lcom/laiwang/protocol/android/k$d;

    return-object v0
.end method

.method static synthetic s(Lcom/laiwang/protocol/android/m;)I
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget v0, p0, Lcom/laiwang/protocol/android/m;->C:I

    return v0
.end method

.method static synthetic t(Lcom/laiwang/protocol/android/m;)Z
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/m;->w:Z

    return v0
.end method

.method static synthetic u(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/Extension;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->D:Lcom/laiwang/protocol/android/Extension;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/aa;->a()V

    .line 1002
    return-void
.end method

.method public declared-synchronized a(Lcom/laiwang/protocol/android/bd;)V
    .locals 17
    .param p1, "msg"    # Lcom/laiwang/protocol/android/bd;

    .prologue
    .line 873
    monitor-enter p0

    :try_start_0
    const-string/jumbo v13, "[LwpConn] send %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/m;->q:Ljava/util/Queue;

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 876
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/laiwang/protocol/core/Request;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 877
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/m;->n:Lcom/laiwang/protocol/b;

    if-nez v13, :cond_1

    const/4 v2, 0x0

    .line 878
    .local v2, "cacheHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 879
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 880
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 881
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/laiwang/protocol/android/bd;->contains(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 882
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13}, Lcom/laiwang/protocol/android/bd;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 873
    .end local v2    # "cacheHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 877
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/m;->n:Lcom/laiwang/protocol/b;

    invoke-interface {v13}, Lcom/laiwang/protocol/b;->a()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 885
    .restart local v2    # "cacheHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v13, "cache-header"

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v15, 0x20

    invoke-static {v14, v15}, Lcom/laiwang/protocol/util/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/laiwang/protocol/android/bd;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 886
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[CACHE-HEADER] "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " req "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bd;->startLine()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 890
    .end local v2    # "cacheHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const/4 v5, 0x0

    .line 891
    .local v5, "isControl":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/m;->h:Ljava/util/Map;

    if-eqz v13, :cond_4

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/laiwang/protocol/core/Request;

    if-eqz v13, :cond_4

    .line 892
    move-object/from16 v0, p1

    check-cast v0, Lcom/laiwang/protocol/core/Request;

    move-object v9, v0

    .line 893
    .local v9, "req":Lcom/laiwang/protocol/core/Request;
    invoke-virtual {v9}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 894
    .local v11, "startLine":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/m;->h:Ljava/util/Map;

    invoke-interface {v13, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 895
    sget-object v13, Lcom/laiwang/protocol/attribute/Attributes;->NO_ACK:Lcom/laiwang/protocol/attribute/AttributeKey;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v13}, Lcom/laiwang/protocol/android/aa;->i()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_4

    .line 897
    const/4 v5, 0x1

    .line 898
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/m;->h:Ljava/util/Map;

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 899
    .local v12, "type":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bd;->payload()[B

    move-result-object v14

    invoke-interface {v13, v14, v12}, Lcom/laiwang/protocol/android/aa;->a([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    .end local v9    # "req":Lcom/laiwang/protocol/core/Request;
    .end local v11    # "startLine":Ljava/lang/String;
    .end local v12    # "type":I
    :cond_4
    if-nez v5, :cond_5

    .line 907
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/m;->m:Lcom/laiwang/protocol/android/av;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/laiwang/protocol/android/av;->a(Lcom/laiwang/protocol/android/bd;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 908
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    const/4 v14, 0x0

    invoke-interface {v13, v1, v14}, Lcom/laiwang/protocol/android/aa;->a(Ljava/nio/ByteBuffer;Lcom/laiwang/protocol/core/Request$Processor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 917
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_5
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/laiwang/protocol/android/m;->b(Lcom/laiwang/protocol/android/bd;)V

    .line 918
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/laiwang/protocol/core/Request;

    if-eqz v13, :cond_7

    .line 919
    move-object/from16 v0, p1

    check-cast v0, Lcom/laiwang/protocol/core/Request;

    move-object v9, v0

    .line 920
    .restart local v9    # "req":Lcom/laiwang/protocol/core/Request;
    sget-object v13, Lcom/laiwang/protocol/attribute/Attributes;->NO_ACK:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v9, v13}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v13

    invoke-interface {v13}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 921
    .local v8, "noAck":Ljava/lang/Boolean;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 922
    sget-object v13, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {v9, v13}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v10

    .line 923
    .local v10, "response":Lcom/laiwang/protocol/core/Response;
    invoke-virtual {v9}, Lcom/laiwang/protocol/core/Request;->getMessageID()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/laiwang/protocol/core/Response;->setMessageID(Lcom/laiwang/protocol/core/MessageID;)V

    .line 924
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/laiwang/protocol/android/m;->b(Lcom/laiwang/protocol/android/bd;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/m;->i:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/laiwang/protocol/android/m$e;

    .line 926
    .local v7, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v7, :cond_6

    .line 927
    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v10}, Lcom/laiwang/protocol/android/m$e;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/bd;)V

    goto :goto_2

    .line 909
    .end local v7    # "listener":Lcom/laiwang/protocol/android/m$e;
    .end local v8    # "noAck":Ljava/lang/Boolean;
    .end local v9    # "req":Lcom/laiwang/protocol/core/Request;
    .end local v10    # "response":Lcom/laiwang/protocol/core/Response;
    :catch_0
    move-exception v3

    .line 910
    .local v3, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 931
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    .line 912
    :catch_1
    move-exception v3

    .line 913
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[LwpConn] lwsData err "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public a(Lcom/laiwang/protocol/android/k$c;)V
    .locals 3
    .param p1, "listener"    # Lcom/laiwang/protocol/android/k$c;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1036
    instance-of v0, p1, Lcom/laiwang/protocol/android/m$e;

    if-nez v0, :cond_0

    .line 1037
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "please use "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/laiwang/protocol/android/m$e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->i:Ljava/util/List;

    check-cast p1, Lcom/laiwang/protocol/android/m$e;

    .end local p1    # "listener":Lcom/laiwang/protocol/android/k$c;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 7
    .param p1, "deviceToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 497
    monitor-enter p0

    if-nez p2, :cond_0

    .line 499
    :try_start_0
    const-string/jumbo v1, "[LwpConn] callback empty"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 500
    new-instance v0, Lcom/laiwang/protocol/android/m$1;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/m$1;-><init>(Lcom/laiwang/protocol/android/m;)V

    .end local p2    # "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    .local v0, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    move-object p2, v0

    .line 507
    .end local v0    # "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    .restart local p2    # "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    :cond_0
    invoke-static {p1}, Lcom/laiwang/protocol/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    const-string/jumbo v1, "[LwpConn] token is null"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 509
    new-instance v1, Lcom/laiwang/protocol/core/Response;

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/laiwang/protocol/core/Response;-><init>(Ljava/lang/Integer;)V

    invoke-interface {p2, v1}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 512
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/m;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 513
    const-string/jumbo v1, "[LwpConn] same dev auth token %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    new-instance v1, Lcom/laiwang/protocol/core/Response;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/laiwang/protocol/core/Response;-><init>(Ljava/lang/Integer;)V

    invoke-interface {p2, v1}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 518
    :cond_3
    :try_start_2
    const-string/jumbo v2, "[LwpConn] new dev token %s last dev token %s"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    sget-object v1, Lcom/laiwang/protocol/android/m;->t:Ljava/util/concurrent/atomic/AtomicReference;

    .line 519
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "null"

    :goto_1
    aput-object v1, v3, v4

    .line 518
    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    iput-object p1, p0, Lcom/laiwang/protocol/android/m;->v:Ljava/lang/String;

    .line 521
    sget-object v1, Lcom/laiwang/protocol/android/m;->t:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 523
    iget v1, p0, Lcom/laiwang/protocol/android/m;->C:I

    if-eq v1, v6, :cond_4

    iget v1, p0, Lcom/laiwang/protocol/android/m;->C:I

    if-ne v1, v5, :cond_6

    .line 524
    :cond_4
    const-string/jumbo v1, "[LwpConn] authed"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 525
    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/Reply;)V

    goto :goto_0

    .line 519
    :cond_5
    sget-object v1, Lcom/laiwang/protocol/android/m;->t:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 529
    :cond_6
    iget-object v1, p0, Lcom/laiwang/protocol/android/m;->l:Lcom/laiwang/protocol/android/k$d;

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    if-ne v1, v2, :cond_1

    .line 530
    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, Lcom/laiwang/protocol/android/m;->a(ILcom/laiwang/protocol/android/Reply;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v0, p1}, Lcom/laiwang/protocol/android/aa;->a(Ljava/lang/Throwable;)V

    .line 1008
    return-void
.end method

.method public declared-synchronized a(Ljava/net/URI;)V
    .locals 8
    .param p1, "uri"    # Ljava/net/URI;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->l:Lcom/laiwang/protocol/android/k$d;

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->c:Lcom/laiwang/protocol/android/k$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 169
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_0
    :try_start_1
    sget-object v0, Lcom/laiwang/protocol/android/k$d;->c:Lcom/laiwang/protocol/android/k$d;

    iput-object v0, p0, Lcom/laiwang/protocol/android/m;->l:Lcom/laiwang/protocol/android/k$d;

    .line 161
    const-string/jumbo v0, "[LwpConn] start conn %s to %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/laiwang/protocol/android/cg;->b(Landroid/content/Context;)Lcom/laiwang/protocol/network/Network$State;

    move-result-object v7

    .line 163
    .local v7, "networkState":Lcom/laiwang/protocol/network/Network$State;
    iget-object v0, v7, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    sget-object v1, Lcom/laiwang/protocol/network/Network$Type;->NONE:Lcom/laiwang/protocol/network/Network$Type;

    if-ne v0, v1, :cond_2

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->k:Lcom/laiwang/protocol/android/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/j;->c(Z)V

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->k:Lcom/laiwang/protocol/android/j;

    iget-object v0, v0, Lcom/laiwang/protocol/android/j;->a:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/j$a;->a()V

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v7, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    iget-object v2, v2, Lcom/laiwang/protocol/network/Network$Type;->name:Ljava/lang/String;

    iget-object v3, v7, Lcom/laiwang/protocol/network/Network$State;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/laiwang/protocol/android/m;->D:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/Extension;->vhost()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/laiwang/protocol/Config;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v6}, Lcom/laiwang/protocol/android/aa;->i()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/laiwang/protocol/android/log/PerfLogger;->logHead(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v0, p1}, Lcom/laiwang/protocol/android/aa;->a(Ljava/net/URI;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    .end local v7    # "networkState":Lcom/laiwang/protocol/network/Network$State;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 991
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please call send method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "first"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 996
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please call send method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/aa;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/laiwang/protocol/android/k$c;)V
    .locals 3
    .param p1, "listener"    # Lcom/laiwang/protocol/android/k$c;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1044
    instance-of v0, p1, Lcom/laiwang/protocol/android/m$e;

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "please use "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/laiwang/protocol/android/m$e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1048
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 7
    .param p1, "accountToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    const/4 v6, 0x2

    .line 559
    monitor-enter p0

    if-nez p2, :cond_0

    .line 561
    :try_start_0
    const-string/jumbo v2, "[LwpConn] callback empty"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 562
    new-instance v1, Lcom/laiwang/protocol/android/m$2;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/m$2;-><init>(Lcom/laiwang/protocol/android/m;)V

    .end local p2    # "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    .local v1, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    move-object p2, v1

    .line 570
    .end local v1    # "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    .restart local p2    # "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    :cond_0
    if-nez p1, :cond_2

    .line 571
    const-string/jumbo v2, "[LwpConn] token is null"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 572
    new-instance v2, Lcom/laiwang/protocol/core/Response;

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/laiwang/protocol/core/Response;-><init>(Ljava/lang/Integer;)V

    invoke-interface {p2, v2}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 576
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/m;->u:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 577
    const-string/jumbo v2, "[LwpConn] same auth token %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/Reply;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 582
    :cond_3
    :try_start_2
    sget-object v2, Lcom/laiwang/protocol/android/m;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 583
    .local v0, "_lastTk":Ljava/lang/String;
    const-string/jumbo v3, "[LwpConn] new token %s last token %s"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    if-nez v0, :cond_4

    const-string/jumbo v2, "null"

    .line 584
    :goto_1
    aput-object v2, v4, v5

    .line 583
    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    sget-object v2, Lcom/laiwang/protocol/android/m;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 587
    iput-object p1, p0, Lcom/laiwang/protocol/android/m;->u:Ljava/lang/String;

    .line 588
    iget v2, p0, Lcom/laiwang/protocol/android/m;->C:I

    if-ne v2, v6, :cond_5

    .line 589
    const-string/jumbo v2, "[LwpConn] authed"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 590
    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/Reply;)V

    goto :goto_0

    .line 584
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 594
    :cond_5
    iget-object v2, p0, Lcom/laiwang/protocol/android/m;->l:Lcom/laiwang/protocol/android/k$d;

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->c:Lcom/laiwang/protocol/android/k$d;

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v2}, Lcom/laiwang/protocol/android/aa;->i()I

    move-result v2

    if-ge v2, v6, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/laiwang/protocol/android/m;->l:Lcom/laiwang/protocol/android/k$d;

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    if-ne v2, v3, :cond_1

    .line 595
    :cond_7
    const/4 v2, 0x0

    invoke-direct {p0, v2, p2}, Lcom/laiwang/protocol/android/m;->b(ILcom/laiwang/protocol/android/Reply;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public c()Ljava/net/URI;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/aa;->c()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 151
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/laiwang/protocol/android/m;->C:I

    return v0
.end method

.method public h()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 867
    const-string/jumbo v0, "[LwpConn]cache-header %s refresh"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 937
    iget-boolean v1, p0, Lcom/laiwang/protocol/android/m;->y:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/laiwang/protocol/android/m;->z:Lcom/laiwang/protocol/android/ac;

    if-eqz v1, :cond_2

    .line 938
    iget-object v1, p0, Lcom/laiwang/protocol/android/m;->z:Lcom/laiwang/protocol/android/ac;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/ac;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 941
    iget-object v1, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v1}, Lcom/laiwang/protocol/android/aa;->e()Lcom/laiwang/protocol/core/Request;

    move-result-object v0

    .line 942
    .local v0, "req":Lcom/laiwang/protocol/core/Request;
    if-eqz v0, :cond_0

    .line 943
    iget-object v1, p0, Lcom/laiwang/protocol/android/m;->r:Ljava/util/Queue;

    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 945
    :cond_0
    iget-boolean v1, p0, Lcom/laiwang/protocol/android/m;->E:Z

    if-eqz v1, :cond_1

    .line 947
    const-string/jumbo v1, "ThirdPartHB"

    iget-object v2, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v2}, Lcom/laiwang/protocol/android/aa;->c()Ljava/net/URI;

    move-result-object v2

    const-string/jumbo v3, "Request timeout and connection may died, send data ping."

    invoke-static {v1, v2, v3}, Lcom/laiwang/protocol/android/i;->a(Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    .line 953
    .end local v0    # "req":Lcom/laiwang/protocol/core/Request;
    :cond_1
    :goto_0
    return-void

    .line 951
    :cond_2
    iget-object v1, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v1}, Lcom/laiwang/protocol/android/aa;->d()V

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/aa;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/laiwang/protocol/android/k$d;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->l:Lcom/laiwang/protocol/android/k$d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/laiwang/protocol/android/m;->j:Lcom/laiwang/protocol/android/aa;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
