.class public Lcom/laiwang/protocol/android/w;
.super Ljava/lang/Object;
.source "Transmission.java"

# interfaces
.implements Lcom/laiwang/protocol/network/Network$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/w$c;,
        Lcom/laiwang/protocol/android/w$b;,
        Lcom/laiwang/protocol/android/w$a;
    }
.end annotation


# instance fields
.field a:Lcom/laiwang/protocol/android/n;

.field b:Lcom/laiwang/protocol/android/bu;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/ResetListener;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/laiwang/protocol/android/bn;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/NetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/laiwang/protocol/android/Extension;

.field private g:Lcom/laiwang/protocol/android/ax;

.field private h:Lcom/laiwang/protocol/android/bg;

.field private volatile i:Z


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bn;Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;
    .param p2, "extension"    # Lcom/laiwang/protocol/android/Extension;
    .param p3, "scheduleEngine"    # Lcom/laiwang/protocol/android/bn;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "appKeepAliveIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/w;->i:Z

    .line 54
    iput-object p2, p0, Lcom/laiwang/protocol/android/w;->f:Lcom/laiwang/protocol/android/Extension;

    .line 55
    iput-object p1, p0, Lcom/laiwang/protocol/android/w;->b:Lcom/laiwang/protocol/android/bu;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/w;->e:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/w;->c:Ljava/util/List;

    .line 58
    iput-object p3, p0, Lcom/laiwang/protocol/android/w;->d:Lcom/laiwang/protocol/android/bn;

    .line 59
    invoke-static {p4}, Lcom/laiwang/protocol/android/ae;->a(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p2}, Lcom/laiwang/protocol/android/Extension;->noAuthUris()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/android/bf;->a(Ljava/util/List;)V

    .line 62
    new-instance v3, Lcom/laiwang/protocol/android/bt;

    const-string/jumbo v0, "conn-worker"

    invoke-direct {v3, v0}, Lcom/laiwang/protocol/android/bt;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, "connExecutor":Lcom/laiwang/protocol/android/bu;
    new-instance v6, Lcom/laiwang/protocol/android/bt;

    const-string/jumbo v0, "read-worker"

    invoke-direct {v6, v0}, Lcom/laiwang/protocol/android/bt;-><init>(Ljava/lang/String;)V

    .line 64
    .local v6, "readExecutor":Lcom/laiwang/protocol/android/bu;
    new-instance v0, Lcom/laiwang/protocol/android/p;

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/laiwang/protocol/android/p;-><init>(Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bn;Lcom/laiwang/protocol/android/bu;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/laiwang/protocol/android/bu;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    .line 65
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    new-instance v1, Lcom/laiwang/protocol/android/w$a;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/w$a;-><init>(Lcom/laiwang/protocol/android/w;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 66
    new-instance v0, Lcom/laiwang/protocol/android/ax;

    move-object v1, p2

    move-object v2, p3

    move-object v4, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/laiwang/protocol/android/ax;-><init>(Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bn;Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/w;Lcom/laiwang/protocol/android/bu;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/w;->g:Lcom/laiwang/protocol/android/ax;

    .line 67
    invoke-static {}, Lcom/laiwang/protocol/connection/ConnectionFactory;->getInstance()Lcom/laiwang/protocol/connection/ConnectionFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/w;->g:Lcom/laiwang/protocol/android/ax;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/connection/ConnectionFactory;->init(Lcom/laiwang/protocol/android/ax;)V

    .line 68
    new-instance v0, Lcom/laiwang/protocol/android/bg;

    invoke-direct {v0, p2, p3, p1}, Lcom/laiwang/protocol/android/bg;-><init>(Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bn;Lcom/laiwang/protocol/android/bu;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/w;->h:Lcom/laiwang/protocol/android/bg;

    .line 70
    invoke-virtual {p0, p2}, Lcom/laiwang/protocol/android/w;->a(Lcom/laiwang/protocol/android/Extension;)V

    .line 72
    if-eqz p3, :cond_0

    .line 73
    new-instance v0, Lcom/laiwang/protocol/android/w$1;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/w$1;-><init>(Lcom/laiwang/protocol/android/w;)V

    invoke-virtual {p3, v0}, Lcom/laiwang/protocol/android/bn;->a(Lcom/laiwang/protocol/android/bm$a;)V

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/w;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/w;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/laiwang/protocol/android/w;->k()V

    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/w;Lcom/laiwang/protocol/android/bd;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/w;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/bd;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/w;->b(Lcom/laiwang/protocol/android/bd;)V

    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/w;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/w;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/w;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->b:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/w$b;

    sget-object v2, Lcom/laiwang/protocol/android/w$c;->b:Lcom/laiwang/protocol/android/w$c;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/laiwang/protocol/android/w$b;-><init>(Lcom/laiwang/protocol/android/w;Lcom/laiwang/protocol/android/w$c;Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 241
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/w;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/w;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/laiwang/protocol/android/w;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/w;)Lcom/laiwang/protocol/android/ax;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/w;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->g:Lcom/laiwang/protocol/android/ax;

    return-object v0
.end method

.method private b(Lcom/laiwang/protocol/android/bd;)V
    .locals 6
    .param p1, "message"    # Lcom/laiwang/protocol/android/bd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 186
    const-string/jumbo v1, "[Tran] send %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    sget-object v1, Lcom/laiwang/protocol/attribute/Attributes;->SLAVER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v1}, Lcom/laiwang/protocol/android/bd;->hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    sget-object v1, Lcom/laiwang/protocol/attribute/Attributes;->RETRY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v1}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Lcom/laiwang/protocol/connection/ConnectionFactory;->getInstance()Lcom/laiwang/protocol/connection/ConnectionFactory;

    move-result-object v1

    sget-object v2, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DEFAULT:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/connection/ConnectionFactory;->create(Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;)Lcom/laiwang/protocol/connection/LWPConnection;

    move-result-object v0

    .line 190
    .local v0, "slaver":Lcom/laiwang/protocol/connection/LWPConnection;
    invoke-virtual {v0, v5}, Lcom/laiwang/protocol/connection/LWPConnection;->setAutoRelease(Z)V

    .line 191
    invoke-virtual {v0}, Lcom/laiwang/protocol/connection/LWPConnection;->connect()V

    .line 192
    check-cast p1, Lcom/laiwang/protocol/core/Request;

    .end local p1    # "message":Lcom/laiwang/protocol/android/bd;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/laiwang/protocol/connection/LWPConnection;->send(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V

    .line 196
    .end local v0    # "slaver":Lcom/laiwang/protocol/connection/LWPConnection;
    :goto_0
    return-void

    .line 194
    .restart local p1    # "message":Lcom/laiwang/protocol/android/bd;
    :cond_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    invoke-virtual {v1, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/bd;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/w;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/w;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/w;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/io/IOException;)V
    .locals 4
    .param p1, "cause"    # Ljava/io/IOException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    const-string/jumbo v1, "[Tran] reset"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    invoke-virtual {v1, p1}, Lcom/laiwang/protocol/android/n;->a(Ljava/io/IOException;)V

    .line 141
    iget-object v1, p0, Lcom/laiwang/protocol/android/w;->g:Lcom/laiwang/protocol/android/ax;

    invoke-virtual {v1, p1}, Lcom/laiwang/protocol/android/ax;->b(Ljava/io/IOException;)V

    .line 142
    iget-object v1, p0, Lcom/laiwang/protocol/android/w;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/ResetListener;

    .line 143
    .local v0, "listener":Lcom/laiwang/protocol/ResetListener;
    invoke-interface {v0}, Lcom/laiwang/protocol/ResetListener;->onReset()V

    goto :goto_0

    .line 145
    .end local v0    # "listener":Lcom/laiwang/protocol/ResetListener;
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->b:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/w$b;

    sget-object v2, Lcom/laiwang/protocol/android/w$c;->d:Lcom/laiwang/protocol/android/w$c;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/laiwang/protocol/android/w$b;-><init>(Lcom/laiwang/protocol/android/w;Lcom/laiwang/protocol/android/w$c;Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 245
    return-void
.end method

.method static synthetic c(Lcom/laiwang/protocol/android/w;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/w;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/laiwang/protocol/android/w;->j()V

    return-void
.end method

.method static synthetic d(Lcom/laiwang/protocol/android/w;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/w;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/laiwang/protocol/android/w;->l()V

    return-void
.end method

.method static synthetic e(Lcom/laiwang/protocol/android/w;)Lcom/laiwang/protocol/android/bg;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/w;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->h:Lcom/laiwang/protocol/android/bg;

    return-object v0
.end method

.method private j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->b:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/w$b;

    sget-object v2, Lcom/laiwang/protocol/android/w$c;->a:Lcom/laiwang/protocol/android/w$c;

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/laiwang/protocol/android/w$b;-><init>(Lcom/laiwang/protocol/android/w;Lcom/laiwang/protocol/android/w$c;Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 237
    return-void
.end method

.method private k()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->b:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/w$b;

    sget-object v2, Lcom/laiwang/protocol/android/w$c;->c:Lcom/laiwang/protocol/android/w$c;

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/laiwang/protocol/android/w$b;-><init>(Lcom/laiwang/protocol/android/w;Lcom/laiwang/protocol/android/w$c;Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 249
    return-void
.end method

.method private l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->b:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/w$b;

    sget-object v2, Lcom/laiwang/protocol/android/w$c;->e:Lcom/laiwang/protocol/android/w$c;

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/laiwang/protocol/android/w$b;-><init>(Lcom/laiwang/protocol/android/w;Lcom/laiwang/protocol/android/w$c;Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 253
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/laiwang/protocol/android/ab;->g:Lcom/laiwang/protocol/android/ab$l;

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/w;->b(Ljava/io/IOException;)V

    .line 128
    return-void
.end method

.method public a(Lcom/laiwang/protocol/ResetListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/ResetListener;

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/laiwang/protocol/android/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/laiwang/protocol/android/Extension;

    .prologue
    .line 123
    new-instance v0, Lcom/laiwang/protocol/android/ExtensionWrap;

    invoke-direct {v0, p1}, Lcom/laiwang/protocol/android/ExtensionWrap;-><init>(Lcom/laiwang/protocol/android/Extension;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/w;->f:Lcom/laiwang/protocol/android/Extension;

    .line 124
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->b:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/w$b;

    sget-object v2, Lcom/laiwang/protocol/android/w$c;->f:Lcom/laiwang/protocol/android/w$c;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/laiwang/protocol/android/w$b;-><init>(Lcom/laiwang/protocol/android/w;Lcom/laiwang/protocol/android/w$c;Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 257
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/laiwang/protocol/android/bd;)V
    .locals 3
    .param p1, "message"    # Lcom/laiwang/protocol/android/bd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->b:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/w$2;

    const-string/jumbo v2, "send-msg-task"

    invoke-direct {v1, p0, v2, p1}, Lcom/laiwang/protocol/android/w$2;-><init>(Lcom/laiwang/protocol/android/w;Ljava/lang/String;Lcom/laiwang/protocol/android/bd;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/w;->b(Lcom/laiwang/protocol/android/bd;)V

    goto :goto_0
.end method

.method public a(Ljava/io/IOException;)V
    .locals 3
    .param p1, "cause"    # Ljava/io/IOException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    const-string/jumbo v0, "[Tran] close"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/n;->b(Ljava/io/IOException;)V

    .line 203
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->g:Lcom/laiwang/protocol/android/ax;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/ax;->a(Ljava/io/IOException;)V

    .line 204
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    const-string/jumbo v0, "[Tran] auth %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/n;->a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V

    .line 150
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->g:Lcom/laiwang/protocol/android/ax;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/ax;->a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V

    .line 151
    return-void
.end method

.method public b()Lcom/laiwang/protocol/android/n$b;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/n;->b()Lcom/laiwang/protocol/android/n$b;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    const-string/jumbo v0, "[Tran] dev auth %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/n;->b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V

    .line 156
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->g:Lcom/laiwang/protocol/android/ax;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/ax;->b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V

    .line 157
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/laiwang/protocol/android/ab;->h:Lcom/laiwang/protocol/android/ab$c;

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/w;->b(Ljava/io/IOException;)V

    .line 136
    return-void
.end method

.method public c(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 319
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->b:Lcom/laiwang/protocol/android/bu;

    new-instance v1, Lcom/laiwang/protocol/android/w$3;

    const-string/jumbo v2, "detect-network-task"

    invoke-direct {v1, p0, v2, p1}, Lcom/laiwang/protocol/android/w$3;-><init>(Lcom/laiwang/protocol/android/w;Ljava/lang/String;Lcom/laiwang/protocol/android/NetworkListener;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->h:Lcom/laiwang/protocol/android/bg;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/bg;->a(Lcom/laiwang/protocol/android/NetworkListener;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 160
    const-string/jumbo v0, "[Tran] touch"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/n;->a()V

    .line 162
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->g:Lcom/laiwang/protocol/android/ax;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/ax;->a()V

    .line 163
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 207
    const-string/jumbo v0, "[Tran] refresh cache header"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/n;->d()V

    .line 209
    return-void
.end method

.method public f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    const-string/jumbo v0, "[Tran] refresh aladdin cache"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->d:Lcom/laiwang/protocol/android/bn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bn;->a(Z)V

    .line 214
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/w;->i:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->g:Lcom/laiwang/protocol/android/ax;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/ax;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/n;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onChange(Lcom/laiwang/protocol/network/Network$State;)V
    .locals 1
    .param p1, "state"    # Lcom/laiwang/protocol/network/Network$State;

    .prologue
    .line 167
    const-string/jumbo v0, "[Tran] network change"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->a:Lcom/laiwang/protocol/android/n;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/network/Network$State;)V

    .line 169
    iget-object v0, p0, Lcom/laiwang/protocol/android/w;->g:Lcom/laiwang/protocol/android/ax;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/ax;->a(Lcom/laiwang/protocol/network/Network$State;)V

    .line 170
    return-void
.end method
