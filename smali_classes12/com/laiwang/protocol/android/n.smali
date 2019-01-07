.class public abstract Lcom/laiwang/protocol/android/n;
.super Lcom/laiwang/protocol/android/m$e;
.source "LwpRequestConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/n$b;,
        Lcom/laiwang/protocol/android/n$a;,
        Lcom/laiwang/protocol/android/n$c;
    }
.end annotation


# instance fields
.field protected a:Lcom/laiwang/protocol/android/bf;

.field protected final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/core/Request;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile c:Lcom/laiwang/protocol/android/m;

.field protected d:Lcom/laiwang/protocol/android/bu;

.field protected e:Lcom/laiwang/protocol/android/bu;

.field protected f:Lcom/laiwang/protocol/android/bn;

.field protected g:Lcom/laiwang/protocol/android/Extension;

.field protected volatile h:Lcom/laiwang/protocol/network/Network$State;

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/core/Request;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Lcom/laiwang/protocol/android/NetworkListener;

.field protected k:Lcom/laiwang/protocol/android/n$b;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/bn;Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bu;)V
    .locals 2
    .param p1, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;
    .param p2, "scheduleEngine"    # Lcom/laiwang/protocol/android/bn;
    .param p3, "extension"    # Lcom/laiwang/protocol/android/Extension;
    .param p4, "readExecutor"    # Lcom/laiwang/protocol/android/bu;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/laiwang/protocol/android/m$e;-><init>()V

    .line 48
    new-instance v0, Lcom/laiwang/protocol/android/bf;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/bf;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/n;->a:Lcom/laiwang/protocol/android/bf;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    .line 50
    iput-object v1, p0, Lcom/laiwang/protocol/android/n;->c:Lcom/laiwang/protocol/android/m;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/n;->i:Ljava/util/List;

    .line 65
    iput-object p1, p0, Lcom/laiwang/protocol/android/n;->d:Lcom/laiwang/protocol/android/bu;

    .line 66
    iput-object p4, p0, Lcom/laiwang/protocol/android/n;->e:Lcom/laiwang/protocol/android/bu;

    .line 67
    iput-object p2, p0, Lcom/laiwang/protocol/android/n;->f:Lcom/laiwang/protocol/android/bn;

    .line 68
    iput-object p3, p0, Lcom/laiwang/protocol/android/n;->g:Lcom/laiwang/protocol/android/Extension;

    .line 69
    sget-object v0, Lcom/laiwang/protocol/android/n$b;->a:Lcom/laiwang/protocol/android/n$b;

    iput-object v0, p0, Lcom/laiwang/protocol/android/n;->k:Lcom/laiwang/protocol/android/n$b;

    .line 70
    invoke-static {v1}, Lcom/laiwang/protocol/android/cg;->b(Landroid/content/Context;)Lcom/laiwang/protocol/network/Network$State;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/n;->h:Lcom/laiwang/protocol/network/Network$State;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/n;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/n;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/laiwang/protocol/android/n;->h()V

    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/n;Lcom/laiwang/protocol/core/Request;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/n;
    .param p1, "x1"    # Lcom/laiwang/protocol/core/Request;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/core/Request;)V

    return-void
.end method

.method private a(Lcom/laiwang/protocol/core/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 526
    if-nez p1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    sget-object v1, Lcom/laiwang/protocol/attribute/Attributes;->SEND_BY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v1}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v1

    invoke-interface {v1}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/k;

    .line 530
    .local v0, "connection":Lcom/laiwang/protocol/android/k;
    if-eqz v0, :cond_2

    .line 531
    check-cast v0, Lcom/laiwang/protocol/android/m;

    .end local v0    # "connection":Lcom/laiwang/protocol/android/k;
    invoke-virtual {v0}, Lcom/laiwang/protocol/android/m;->i()V

    goto :goto_0

    .line 534
    .restart local v0    # "connection":Lcom/laiwang/protocol/android/k;
    :cond_2
    iget-object v1, p0, Lcom/laiwang/protocol/android/n;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v1, p1}, Lcom/laiwang/protocol/android/bf;->c(Lcom/laiwang/protocol/android/bd;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/laiwang/protocol/android/n;->k:Lcom/laiwang/protocol/android/n$b;

    sget-object v2, Lcom/laiwang/protocol/android/n$b;->c:Lcom/laiwang/protocol/android/n$b;

    if-ne v1, v2, :cond_0

    .line 535
    iget-object v1, p0, Lcom/laiwang/protocol/android/n;->g:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/Extension;->tokenRequired()V

    goto :goto_0
.end method

.method private a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/core/Constants$Status;[B)V
    .locals 8
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;
    .param p2, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p3, "status"    # Lcom/laiwang/protocol/core/Constants$Status;
    .param p4, "payload"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    :try_start_0
    const-string/jumbo v4, "[lwp] rev local resp %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v4, p0, Lcom/laiwang/protocol/android/n;->i:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 312
    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->TIMEOUT_TASK:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v4}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v4

    invoke-interface {v4}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/laiwang/protocol/android/bu$a;

    .line 313
    .local v3, "timeout":Lcom/laiwang/protocol/android/bu$a;
    if-eqz v3, :cond_0

    .line 314
    iget-object v4, p0, Lcom/laiwang/protocol/android/n;->d:Lcom/laiwang/protocol/android/bu;

    invoke-virtual {v4, v3}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 317
    :cond_0
    invoke-static {p1, p3}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v2

    .line 318
    .local v2, "response":Lcom/laiwang/protocol/core/Response;
    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->FROM_LOCAL:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v2, v4}, Lcom/laiwang/protocol/core/Response;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 319
    if-eqz p4, :cond_1

    .line 320
    invoke-virtual {v2, p4}, Lcom/laiwang/protocol/core/Response;->payload([B)V

    .line 321
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/laiwang/protocol/core/Request;->setEndTime(J)V

    .line 322
    invoke-virtual {p0, p1, v2, p2}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Response;Lcom/laiwang/protocol/android/k;)V

    .line 323
    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->REMOTE:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v4}, Lcom/laiwang/protocol/core/Request;->booleanAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    invoke-static {v2}, Lcom/laiwang/protocol/android/LWP;->onRemoteMessage(Lcom/laiwang/protocol/android/bd;)V

    .line 332
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "response":Lcom/laiwang/protocol/core/Response;
    .end local v3    # "timeout":Lcom/laiwang/protocol/android/bu$a;
    :cond_2
    :goto_0
    return-void

    .line 325
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "response":Lcom/laiwang/protocol/core/Response;
    .restart local v3    # "timeout":Lcom/laiwang/protocol/android/bu$a;
    :cond_3
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->getReply()Lcom/laiwang/protocol/android/Reply;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 326
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->getReply()Lcom/laiwang/protocol/android/Reply;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "response":Lcom/laiwang/protocol/core/Response;
    .end local v3    # "timeout":Lcom/laiwang/protocol/android/bu$a;
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[Request] local response error "

    invoke-static {v4, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/net/URI;)V
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 392
    const-string/jumbo v2, "[lwp] mk_uri_fail %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object v2, p0, Lcom/laiwang/protocol/android/n;->f:Lcom/laiwang/protocol/android/bn;

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/n;->e()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/laiwang/protocol/android/bn;->b(Ljava/net/URI;Z)V

    .line 394
    return-void

    :cond_0
    move v0, v1

    .line 393
    goto :goto_0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 349
    invoke-static {}, Lcom/laiwang/protocol/a;->a()Lcom/laiwang/protocol/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/a;->e()Lcom/laiwang/protocol/android/w;

    move-result-object v0

    .line 350
    .local v0, "transmission":Lcom/laiwang/protocol/android/w;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-static {}, Lcom/laiwang/protocol/android/IdleService;->getInstance()Lcom/laiwang/protocol/android/IdleService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/IdleService;->startTimer()V

    .line 353
    :cond_0
    return-void
.end method

.method private n(Lcom/laiwang/protocol/android/k;)V
    .locals 5
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "netType":Ljava/lang/String;
    iget-object v1, p0, Lcom/laiwang/protocol/android/n;->h:Lcom/laiwang/protocol/network/Network$State;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/laiwang/protocol/android/n;->h:Lcom/laiwang/protocol/network/Network$State;

    iget-object v1, v1, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    iget-object v0, v1, Lcom/laiwang/protocol/network/Network$Type;->name:Ljava/lang/String;

    .line 546
    iget-object v1, p0, Lcom/laiwang/protocol/android/n;->h:Lcom/laiwang/protocol/network/Network$State;

    invoke-virtual {v1}, Lcom/laiwang/protocol/network/Network$State;->resetFailed()V

    .line 548
    :cond_0
    const-string/jumbo v1, "[lwp] network connected %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/laiwang/protocol/android/n;->h:Lcom/laiwang/protocol/network/Network$State;

    iget-boolean v1, v1, Lcom/laiwang/protocol/network/Network$State;->connected:Z

    if-nez v1, :cond_2

    .line 550
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/laiwang/protocol/android/cg;->b(Landroid/content/Context;)Lcom/laiwang/protocol/network/Network$State;

    move-result-object v1

    iput-object v1, p0, Lcom/laiwang/protocol/android/n;->h:Lcom/laiwang/protocol/network/Network$State;

    .line 552
    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/laiwang/protocol/android/m;J)Lcom/laiwang/protocol/android/bd;
.end method

.method public abstract a()V
.end method

.method public a(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    .line 357
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/bd;)V
    .locals 8
    .param p1, "message"    # Lcom/laiwang/protocol/android/bd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    instance-of v5, p1, Lcom/laiwang/protocol/core/Request;

    if-eqz v5, :cond_2

    .line 103
    const-string/jumbo v5, "[lwp] send request"

    invoke-static {v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    move-object v1, p1

    .line 104
    check-cast v1, Lcom/laiwang/protocol/core/Request;

    .line 106
    .local v1, "request":Lcom/laiwang/protocol/core/Request;
    invoke-virtual {v1}, Lcom/laiwang/protocol/core/Request;->getMessageID()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v5

    if-nez v5, :cond_0

    .line 108
    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->newMid()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/core/Request;->setMessageID(Lcom/laiwang/protocol/core/MessageID;)V

    .line 111
    :cond_0
    const-string/jumbo v5, "stream"

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "streamType":Ljava/lang/String;
    const-string/jumbo v5, "new"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 113
    const-string/jumbo v5, "stream-id"

    invoke-virtual {v1}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 122
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/laiwang/protocol/core/Request;->setPendTime(J)V

    .line 123
    invoke-virtual {v1}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v5, Lcom/laiwang/protocol/attribute/Attributes;->WIFI_ONLY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/core/Request;->booleanAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->h:Lcom/laiwang/protocol/network/Network$State;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->h:Lcom/laiwang/protocol/network/Network$State;

    iget-object v5, v5, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    sget-object v6, Lcom/laiwang/protocol/network/Network$Type;->WIFI:Lcom/laiwang/protocol/network/Network$Type;

    if-eq v5, v6, :cond_2

    .line 129
    const/4 v5, 0x0

    sget-object v6, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_CANCELLED:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-virtual {p0, v1, v5, v6}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/core/Constants$Status;)V

    .line 134
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v3    # "streamType":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v5, p1}, Lcom/laiwang/protocol/android/bf;->a(Lcom/laiwang/protocol/android/bd;)V

    .line 137
    instance-of v5, p1, Lcom/laiwang/protocol/core/Request;

    if-eqz v5, :cond_3

    .line 138
    new-instance v4, Lcom/laiwang/protocol/android/n$c;

    check-cast p1, Lcom/laiwang/protocol/core/Request;

    .end local p1    # "message":Lcom/laiwang/protocol/android/bd;
    invoke-direct {v4, p0, p1}, Lcom/laiwang/protocol/android/n$c;-><init>(Lcom/laiwang/protocol/android/n;Lcom/laiwang/protocol/core/Request;)V

    .line 139
    .local v4, "task":Lcom/laiwang/protocol/android/bu$a;
    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->d:Lcom/laiwang/protocol/android/bu;

    invoke-virtual {v5, v4}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 141
    invoke-static {}, Lcom/laiwang/protocol/android/IdleService;->getInstance()Lcom/laiwang/protocol/android/IdleService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/laiwang/protocol/android/IdleService;->stopTimer()V

    .line 143
    .end local v4    # "task":Lcom/laiwang/protocol/android/bu$a;
    :cond_3
    :goto_1
    return-void

    .line 114
    .restart local v1    # "request":Lcom/laiwang/protocol/core/Request;
    .restart local v3    # "streamType":Ljava/lang/String;
    .restart local p1    # "message":Lcom/laiwang/protocol/android/bd;
    :cond_4
    const-string/jumbo v5, "cancel"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    const-string/jumbo v5, "stream-id"

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "streamId":Ljava/lang/String;
    invoke-static {v2}, Lcom/laiwang/protocol/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[lwp] stream cancel, but stream id empty, request "

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_5
    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/laiwang/protocol/android/bd;Lcom/laiwang/protocol/android/m;)V
    .locals 4
    .param p1, "message"    # Lcom/laiwang/protocol/android/bd;
    .param p2, "connection"    # Lcom/laiwang/protocol/android/m;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 623
    instance-of v1, p1, Lcom/laiwang/protocol/core/Request;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 624
    check-cast v0, Lcom/laiwang/protocol/core/Request;

    .line 625
    .local v0, "request":Lcom/laiwang/protocol/core/Request;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request;->setSendTime(J)V

    .line 626
    sget-object v1, Lcom/laiwang/protocol/attribute/Attributes;->SEND_BY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v1}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 628
    .end local v0    # "request":Lcom/laiwang/protocol/core/Request;
    :cond_0
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k;)V
    .locals 6
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 361
    move-object v2, p1

    check-cast v2, Lcom/laiwang/protocol/android/m;

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/m;J)Lcom/laiwang/protocol/android/bd;

    move-result-object v1

    .line 362
    .local v1, "req":Lcom/laiwang/protocol/android/bd;
    if-eqz v1, :cond_0

    .line 363
    const-string/jumbo v2, "[lwp] onWriteable %s >> %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    .line 364
    check-cast v0, Lcom/laiwang/protocol/android/m;

    .line 365
    .local v0, "lwpConnection":Lcom/laiwang/protocol/android/m;
    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/bd;)V

    .line 366
    check-cast p1, Lcom/laiwang/protocol/android/m;

    .end local p1    # "connection":Lcom/laiwang/protocol/android/k;
    invoke-virtual {p0, v1, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/bd;Lcom/laiwang/protocol/android/m;)V

    .line 367
    invoke-virtual {v0}, Lcom/laiwang/protocol/android/m;->a()V

    .line 369
    .end local v0    # "lwpConnection":Lcom/laiwang/protocol/android/m;
    :cond_0
    instance-of v2, v1, Lcom/laiwang/protocol/core/Response;

    if-eqz v2, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/laiwang/protocol/android/n;->h()V

    .line 372
    :cond_1
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
    .line 376
    sget-object v1, Lcom/laiwang/protocol/android/n$b;->a:Lcom/laiwang/protocol/android/n$b;

    iput-object v1, p0, Lcom/laiwang/protocol/android/n;->k:Lcom/laiwang/protocol/android/n$b;

    .line 378
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/laiwang/protocol/android/cg;->b(Landroid/content/Context;)Lcom/laiwang/protocol/network/Network$State;

    move-result-object v1

    iget-object v0, v1, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    .line 379
    .local v0, "type":Lcom/laiwang/protocol/network/Network$Type;
    if-eqz p2, :cond_0

    sget-object v1, Lcom/laiwang/protocol/network/Network$Type;->NONE:Lcom/laiwang/protocol/network/Network$Type;

    if-eq v0, v1, :cond_0

    .line 380
    const-string/jumbo v1, "ConnectFailed"

    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->c()Ljava/net/URI;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/laiwang/protocol/android/i;->a(Ljava/lang/String;Ljava/net/URI;Ljava/lang/Throwable;)V

    .line 383
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Network is unreachable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 384
    :cond_1
    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->c()Ljava/net/URI;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/laiwang/protocol/android/n;->a(Ljava/net/URI;)V

    .line 386
    :cond_2
    iget-object v1, p0, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    if-eqz v1, :cond_3

    .line 387
    iget-object v1, p0, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/laiwang/protocol/android/NetworkListener;->onConnectFailed(Ljava/lang/Exception;)V

    .line 388
    :cond_3
    return-void
.end method

.method protected declared-synchronized a(Lcom/laiwang/protocol/android/m;)V
    .locals 9
    .param p1, "connection"    # Lcom/laiwang/protocol/android/m;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->d()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 663
    :goto_0
    monitor-exit p0

    return-void

    .line 635
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->d()Ljava/util/Iterator;

    move-result-object v3

    .line 636
    .local v3, "sendingMessage":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 637
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 638
    .local v1, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 642
    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/core/Request;

    .line 643
    .local v2, "request":Lcom/laiwang/protocol/core/Request;
    const-string/jumbo v5, "[Request] retry none response request %s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    sget-object v5, Lcom/laiwang/protocol/attribute/Attributes;->RETRY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v2, v5}, Lcom/laiwang/protocol/core/Request;->booleanAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 645
    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->i:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 646
    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->NETWORK_BROKEN:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-virtual {p0, v2, p1, v5}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/core/Constants$Status;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 660
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v3    # "sendingMessage":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v5, "[Retrieve] error"

    invoke-static {v5, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 632
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 649
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "request":Lcom/laiwang/protocol/core/Request;
    .restart local v3    # "sendingMessage":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/laiwang/protocol/core/Request;->getMessageID()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v5

    invoke-virtual {v5}, Lcom/laiwang/protocol/core/MessageID;->increment()I

    move-result v4

    .line 650
    .local v4, "seq":I
    const/4 v5, 0x5

    if-le v4, v5, :cond_3

    .line 651
    const-string/jumbo v5, "[Request] retry than 5 times , ignore"

    invoke-static {v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 652
    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->i:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 653
    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->NETWORK_BROKEN:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-virtual {p0, v2, p1, v5}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/core/Constants$Status;)V

    goto :goto_1

    .line 655
    :cond_3
    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v5, p0, Lcom/laiwang/protocol/android/n;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v5, v2}, Lcom/laiwang/protocol/android/bf;->a(Lcom/laiwang/protocol/android/bd;)V

    goto/16 :goto_1

    .line 659
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v4    # "seq":I
    :cond_4
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->e()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/bd;)V
    .locals 13
    .param p1, "connection"    # Lcom/laiwang/protocol/android/m;
    .param p2, "message"    # Lcom/laiwang/protocol/android/bd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/n;->e()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 184
    const-string/jumbo v9, "cs-idx-ver"

    invoke-virtual {p2, v9}, Lcom/laiwang/protocol/android/bd;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "csVer":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 186
    const-string/jumbo v9, "cs-idx-url"

    invoke-virtual {p2, v9}, Lcom/laiwang/protocol/android/bd;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "csUrl":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v1, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "cs-idx-ver"

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v9, "cs-idx-url"

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {}, Lcom/laiwang/protocol/android/ar;->a()Lcom/laiwang/protocol/android/ar;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/laiwang/protocol/android/ar;->a(Ljava/util/Map;)V

    .line 193
    .end local v1    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "csUrl":Ljava/lang/String;
    .end local v3    # "csVer":Ljava/lang/String;
    :cond_0
    instance-of v9, p2, Lcom/laiwang/protocol/core/Response;

    if-eqz v9, :cond_8

    .line 194
    const-string/jumbo v9, "[lwp] rev resp %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p2}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p2}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v5

    .local v5, "id":Ljava/lang/String;
    move-object v7, p2

    .line 196
    check-cast v7, Lcom/laiwang/protocol/core/Response;

    .line 198
    .local v7, "response":Lcom/laiwang/protocol/core/Response;
    sget-object v9, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-virtual {v7}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v10

    if-ne v9, v10, :cond_2

    .line 199
    iget-object v9, p0, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/laiwang/protocol/core/Request;

    .line 203
    .local v6, "request":Lcom/laiwang/protocol/core/Request;
    :goto_0
    if-nez v6, :cond_3

    .line 204
    const-string/jumbo v9, "[lwp] Receive response after timeout %s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    check-cast p2, Lcom/laiwang/protocol/core/Response;

    .end local p2    # "message":Lcom/laiwang/protocol/android/bd;
    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Response;->startLine()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    .end local v5    # "id":Ljava/lang/String;
    .end local v7    # "response":Lcom/laiwang/protocol/core/Response;
    :cond_1
    :goto_1
    return-void

    .line 201
    .end local v6    # "request":Lcom/laiwang/protocol/core/Request;
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v7    # "response":Lcom/laiwang/protocol/core/Response;
    .restart local p2    # "message":Lcom/laiwang/protocol/android/bd;
    :cond_2
    iget-object v9, p0, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/laiwang/protocol/core/Request;

    .restart local v6    # "request":Lcom/laiwang/protocol/core/Request;
    goto :goto_0

    .line 207
    :cond_3
    iget-object v9, p0, Lcom/laiwang/protocol/android/n;->i:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    sget-object v9, Lcom/laiwang/protocol/attribute/Attributes;->TIMEOUT_TASK:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v6, v9}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v9

    invoke-interface {v9}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/laiwang/protocol/android/bu$a;

    .line 209
    .local v8, "timeout":Lcom/laiwang/protocol/android/bu$a;
    if-eqz v8, :cond_4

    .line 210
    iget-object v9, p0, Lcom/laiwang/protocol/android/n;->d:Lcom/laiwang/protocol/android/bu;

    invoke-virtual {v9, v8}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 212
    :cond_4
    sget-object v9, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-virtual {v7}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v10

    if-ne v9, v10, :cond_5

    .line 213
    iget-object v9, p0, Lcom/laiwang/protocol/android/n;->d:Lcom/laiwang/protocol/android/bu;

    new-instance v10, Lcom/laiwang/protocol/android/n$c;

    invoke-direct {v10, p0, v6}, Lcom/laiwang/protocol/android/n$c;-><init>(Lcom/laiwang/protocol/android/n;Lcom/laiwang/protocol/core/Request;)V

    invoke-virtual {v9, v10}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 215
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/laiwang/protocol/core/Request;->setEndTime(J)V

    .line 217
    invoke-static {}, Lcom/laiwang/protocol/android/l;->a()Lcom/laiwang/protocol/android/l;

    move-result-object v9

    invoke-virtual {v6}, Lcom/laiwang/protocol/core/Request;->url()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Lcom/laiwang/protocol/android/l;->a(Ljava/lang/String;Lcom/laiwang/protocol/core/Response;)V

    .line 218
    invoke-virtual {p0, v6, v7, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Response;Lcom/laiwang/protocol/android/k;)V

    .line 219
    sget-object v9, Lcom/laiwang/protocol/attribute/Attributes;->REMOTE:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v6, v9}, Lcom/laiwang/protocol/core/Request;->booleanAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 220
    invoke-static {v7}, Lcom/laiwang/protocol/android/LWP;->onRemoteMessage(Lcom/laiwang/protocol/android/bd;)V

    .line 230
    :goto_2
    check-cast p2, Lcom/laiwang/protocol/core/Response;

    .end local p2    # "message":Lcom/laiwang/protocol/android/bd;
    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Response;->startLine()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v10, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    iget v10, v10, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    if-eq v9, v10, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/laiwang/protocol/android/n;->h()V

    goto :goto_1

    .line 222
    .restart local p2    # "message":Lcom/laiwang/protocol/android/bd;
    :cond_6
    invoke-virtual {v6}, Lcom/laiwang/protocol/core/Request;->getReply()Lcom/laiwang/protocol/android/Reply;

    move-result-object v9

    if-nez v9, :cond_7

    .line 223
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[Request] Reply is null "

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 226
    :cond_7
    invoke-virtual {v6}, Lcom/laiwang/protocol/core/Request;->getReply()Lcom/laiwang/protocol/android/Reply;

    move-result-object v9

    invoke-interface {v9, v7}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    goto :goto_2

    .line 234
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v7    # "response":Lcom/laiwang/protocol/core/Response;
    .end local v8    # "timeout":Lcom/laiwang/protocol/android/bu$a;
    :cond_8
    invoke-static {}, Lcom/laiwang/protocol/android/IdleService;->getInstance()Lcom/laiwang/protocol/android/IdleService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/laiwang/protocol/android/IdleService;->stopTimer()V

    move-object v6, p2

    .line 236
    check-cast v6, Lcom/laiwang/protocol/core/Request;

    .line 237
    .restart local v6    # "request":Lcom/laiwang/protocol/core/Request;
    sget-object v9, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_HEADER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v6, v9}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v9

    invoke-interface {v9}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 238
    .local v4, "h":I
    sget-object v9, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_BODY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v6, v9}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v9

    invoke-interface {v9}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 239
    .local v0, "b":I
    const-string/jumbo v9, "[push] receive %s %s size %s %s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v6}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    new-instance v9, Lcom/laiwang/protocol/android/n$1;

    invoke-direct {v9, p0, v6, v4, v0}, Lcom/laiwang/protocol/android/n$1;-><init>(Lcom/laiwang/protocol/android/n;Lcom/laiwang/protocol/core/Request;II)V

    invoke-virtual {v6, v9}, Lcom/laiwang/protocol/core/Request;->setReply(Lcom/laiwang/protocol/android/Reply;)V

    .line 264
    invoke-static {v6}, Lcom/laiwang/protocol/push/PushDispatch;->dispatch(Lcom/laiwang/protocol/core/Request;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 265
    sget-object v9, Lcom/laiwang/protocol/attribute/Attributes;->REMOTE:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v6, v9}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 266
    invoke-static {v6}, Lcom/laiwang/protocol/android/LWP;->onRemoteMessage(Lcom/laiwang/protocol/android/bd;)V

    goto/16 :goto_1
.end method

.method public a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/core/Constants$Status;)V
    .locals 1
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;
    .param p2, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p3, "status"    # Lcom/laiwang/protocol/core/Constants$Status;

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/core/Constants$Status;[B)V

    .line 342
    invoke-direct {p0}, Lcom/laiwang/protocol/android/n;->h()V

    .line 343
    return-void
.end method

.method public a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Response;Lcom/laiwang/protocol/android/k;)V
    .locals 18
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;
    .param p2, "response"    # Lcom/laiwang/protocol/core/Response;
    .param p3, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 278
    sget-object v7, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_HEADER:Lcom/laiwang/protocol/attribute/AttributeKey;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/laiwang/protocol/core/Request;->intAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)I

    move-result v13

    .line 279
    .local v13, "rh":I
    sget-object v7, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_BODY:Lcom/laiwang/protocol/attribute/AttributeKey;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/laiwang/protocol/core/Request;->intAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)I

    move-result v10

    .line 280
    .local v10, "rb":I
    sget-object v7, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_HEADER:Lcom/laiwang/protocol/attribute/AttributeKey;

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/laiwang/protocol/core/Response;->intAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)I

    move-result v12

    .line 281
    .local v12, "resh":I
    sget-object v7, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_BODY:Lcom/laiwang/protocol/attribute/AttributeKey;

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/laiwang/protocol/core/Response;->intAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)I

    move-result v11

    .line 282
    .local v11, "resb":I
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Request;->getEndTime()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Request;->getPendTime()J

    move-result-wide v16

    sub-long v4, v14, v16

    .line 283
    .local v4, "rt":J
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Request;->getSendTime()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Request;->getPendTime()J

    move-result-wide v16

    sub-long v2, v14, v16

    .line 284
    .local v2, "wait2Send":J
    add-int v7, v10, v13

    add-int/2addr v7, v11

    add-int v6, v7, v12

    .line 285
    .local v6, "total":I
    invoke-virtual/range {p0 .. p0}, Lcom/laiwang/protocol/android/n;->e()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 286
    invoke-virtual/range {p2 .. p2}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v7

    iget v7, v7, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-static/range {v2 .. v7}, Lcom/laiwang/protocol/android/log/PerfLogger;->logRpc(JJII)V

    .line 289
    :cond_0
    if-eqz p3, :cond_2

    .line 290
    invoke-interface/range {p3 .. p3}, Lcom/laiwang/protocol/android/k;->b()Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, "cid":Ljava/lang/String;
    :goto_0
    const-string/jumbo v7, "[Access] %s %s %s %s %d %d (%d %d %d %d)"

    const/16 v14, 0xa

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-virtual/range {p2 .. p2}, Lcom/laiwang/protocol/core/Response;->startLine()Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v7, v14}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    if-eqz v7, :cond_1

    .line 296
    new-instance v9, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;

    invoke-direct {v9}, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;-><init>()V

    .line 297
    .local v9, "info":Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v9, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;->url:Ljava/lang/String;

    .line 298
    add-int v7, v13, v10

    int-to-long v14, v7

    iput-wide v14, v9, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;->requestDataLength:J

    .line 299
    add-int v7, v12, v11

    int-to-long v14, v7

    iput-wide v14, v9, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;->responseDataLength:J

    .line 300
    sget-object v7, Lcom/laiwang/protocol/attribute/Attributes;->REQUEST_BIZ_NAME:Lcom/laiwang/protocol/attribute/AttributeKey;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v7

    invoke-interface {v7}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v9, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;->bizName:Ljava/lang/String;

    .line 301
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    invoke-interface {v7, v9}, Lcom/laiwang/protocol/android/NetworkListener;->onRequest(Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;)V

    .line 304
    .end local v9    # "info":Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;
    :cond_1
    return-void

    .line 292
    .end local v8    # "cid":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "none"

    .restart local v8    # "cid":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public a(Lcom/laiwang/protocol/network/Network$State;)V
    .locals 0
    .param p1, "state"    # Lcom/laiwang/protocol/network/Network$State;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/laiwang/protocol/android/n;->h:Lcom/laiwang/protocol/network/Network$State;

    .line 154
    return-void
.end method

.method public a(Ljava/io/IOException;)V
    .locals 1
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 159
    const-string/jumbo v0, "[lwp] reset"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/laiwang/protocol/android/m;->g()V

    .line 161
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bf;->a()V

    .line 162
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 163
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/n;->b(Ljava/io/IOException;)V

    .line 164
    return-void
.end method

.method public abstract a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
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
.end method

.method protected a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;)Z
    .locals 4
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;
    .param p2, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/android/l;->a()Lcom/laiwang/protocol/android/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/laiwang/protocol/android/l;->a(Ljava/lang/String;)Lcom/laiwang/protocol/android/l$a;

    move-result-object v1

    .line 83
    .local v1, "strategy":Lcom/laiwang/protocol/android/l$a;
    if-eqz v1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/laiwang/protocol/android/n;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v2, p1}, Lcom/laiwang/protocol/android/bf;->b(Lcom/laiwang/protocol/android/bd;)Z

    .line 85
    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;

    iget-object v3, v1, Lcom/laiwang/protocol/android/l$a;->c:[B

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/core/Constants$Status;[B)V

    .line 86
    const/4 v2, 0x1

    .line 88
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public b()Lcom/laiwang/protocol/android/n$b;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->k:Lcom/laiwang/protocol/android/n$b;

    return-object v0
.end method

.method public b(Lcom/laiwang/protocol/android/k;)V
    .locals 1
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 400
    sget-object v0, Lcom/laiwang/protocol/android/n$b;->c:Lcom/laiwang/protocol/android/n$b;

    iput-object v0, p0, Lcom/laiwang/protocol/android/n;->k:Lcom/laiwang/protocol/android/n$b;

    .line 401
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/n;->n(Lcom/laiwang/protocol/android/k;)V

    .line 402
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/NetworkListener;->onNetworkConnected()V

    .line 404
    :cond_0
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 414
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->k:Lcom/laiwang/protocol/android/n$b;

    sget-object v1, Lcom/laiwang/protocol/android/n$b;->b:Lcom/laiwang/protocol/android/n$b;

    if-ne v0, v1, :cond_0

    .line 415
    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->c()Ljava/net/URI;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/n;->a(Ljava/net/URI;)V

    .line 417
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/n$b;->a:Lcom/laiwang/protocol/android/n$b;

    iput-object v0, p0, Lcom/laiwang/protocol/android/n;->k:Lcom/laiwang/protocol/android/n$b;

    .line 418
    check-cast p1, Lcom/laiwang/protocol/android/m;

    .end local p1    # "connection":Lcom/laiwang/protocol/android/k;
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/m;)V

    .line 419
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/laiwang/protocol/android/NetworkListener;->onDisconnected(Ljava/lang/Exception;)V

    .line 421
    :cond_1
    return-void
.end method

.method public b(Ljava/io/IOException;)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 172
    return-void
.end method

.method public abstract b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
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
.end method

.method public c(Lcom/laiwang/protocol/android/k;)V
    .locals 1
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 408
    sget-object v0, Lcom/laiwang/protocol/android/n$b;->b:Lcom/laiwang/protocol/android/n$b;

    iput-object v0, p0, Lcom/laiwang/protocol/android/n;->k:Lcom/laiwang/protocol/android/n$b;

    .line 409
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bf;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public d(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/n;->b(Lcom/laiwang/protocol/android/k;)V

    .line 446
    return-void
.end method

.method public e(Lcom/laiwang/protocol/android/k;)V
    .locals 1
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->g:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->tokenRequired()V

    .line 426
    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->a()V

    .line 427
    return-void
.end method

.method protected abstract e()Z
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->c:Lcom/laiwang/protocol/android/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/m;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f(Lcom/laiwang/protocol/android/k;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 450
    sget-object v0, Lcom/laiwang/protocol/android/n$b;->d:Lcom/laiwang/protocol/android/n$b;

    iput-object v0, p0, Lcom/laiwang/protocol/android/n;->k:Lcom/laiwang/protocol/android/n$b;

    .line 452
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->a:Lcom/laiwang/protocol/android/bf;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bf;->d()V

    .line 453
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/n;->n(Lcom/laiwang/protocol/android/k;)V

    .line 454
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    invoke-interface {v0}, Lcom/laiwang/protocol/android/NetworkListener;->onConnected()V

    .line 456
    :cond_0
    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->a()V

    .line 457
    iget-object v1, p0, Lcom/laiwang/protocol/android/n;->f:Lcom/laiwang/protocol/android/bn;

    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->c()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/n;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/laiwang/protocol/android/bn;->a(Ljava/net/URI;Z)V

    .line 458
    return-void

    .line 457
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 670
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->c:Lcom/laiwang/protocol/android/m;

    .line 671
    .local v0, "lwpConn":Lcom/laiwang/protocol/android/m;
    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Lcom/laiwang/protocol/android/m;->b()Ljava/lang/String;

    move-result-object v1

    .line 674
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public g(Lcom/laiwang/protocol/android/k;)V
    .locals 1
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->g:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->tokenInvalid()V

    .line 432
    return-void
.end method

.method public h(Lcom/laiwang/protocol/android/k;)V
    .locals 1
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->g:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->deviceTokenInvalid()V

    .line 437
    return-void
.end method

.method public l(Lcom/laiwang/protocol/android/k;)V
    .locals 2
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 462
    sget-object v0, Lcom/laiwang/protocol/android/n$b;->a:Lcom/laiwang/protocol/android/n$b;

    iput-object v0, p0, Lcom/laiwang/protocol/android/n;->k:Lcom/laiwang/protocol/android/n$b;

    .line 463
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->f:Lcom/laiwang/protocol/android/bn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bn;->a(Z)V

    .line 464
    return-void
.end method

.method public m(Lcom/laiwang/protocol/android/k;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 468
    sget-object v0, Lcom/laiwang/protocol/android/n$b;->a:Lcom/laiwang/protocol/android/n$b;

    iput-object v0, p0, Lcom/laiwang/protocol/android/n;->k:Lcom/laiwang/protocol/android/n$b;

    .line 469
    iget-object v1, p0, Lcom/laiwang/protocol/android/n;->f:Lcom/laiwang/protocol/android/bn;

    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->c()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/n;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/laiwang/protocol/android/bn;->c(Ljava/net/URI;Z)V

    .line 470
    iget-object v0, p0, Lcom/laiwang/protocol/android/n;->f:Lcom/laiwang/protocol/android/bn;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bn;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/n;->a()V

    .line 473
    :cond_0
    return-void

    .line 469
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
