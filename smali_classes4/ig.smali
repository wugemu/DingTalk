.class public final Lig;
.super Ljava/lang/Object;
.source "SessionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig$3;,
        Lig$c;,
        Lig$a;,
        Lig$b;
    }
.end annotation


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field volatile b:Z

.field volatile c:Lanet/channel/Session;

.field private volatile e:Ljava/util/concurrent/Future;

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lig;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lig;->b:Z

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lig;->f:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lig;->a:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static a(Ljava/lang/String;)Lig;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    const-string/jumbo v1, "awcn.SessionRequest"

    const-string/jumbo v2, "SessionRequest build"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "key"

    aput-object v4, v3, v5

    aput-object p0, v3, v6

    invoke-static {v1, v2, v7, v3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 66
    sget-object v2, Lig;->d:Ljava/util/Map;

    monitor-enter v2

    .line 67
    :try_start_0
    sget-object v1, Lig;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lig;

    .line 68
    .local v0, "info":Lig;
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lig;

    .end local v0    # "info":Lig;
    invoke-direct {v0, p0}, Lig;-><init>(Ljava/lang/String;)V

    .line 70
    .restart local v0    # "info":Lig;
    sget-object v1, Lig;->d:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_0
    monitor-exit v2

    return-object v0

    .line 72
    :cond_0
    const-string/jumbo v1, "awcn.SessionRequest"

    const-string/jumbo v3, "hit cached SessionRequest"

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "key"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "info"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    invoke-static {v1, v3, v4, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    .end local v0    # "info":Lig;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;
    .param p2, "seq"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/entity/ConnType$TypeLevel;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljy;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 304
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 3084
    .local v3, "strategies":Ljava/util/List;, "Ljava/util/List<Ljy;>;"
    :try_start_0
    iget-object v6, p0, Lig;->a:Ljava/lang/String;

    .line 306
    invoke-static {v6}, Lla;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "elements":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 308
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 333
    .end local v0    # "elements":[Ljava/lang/String;
    :goto_0
    return-object v6

    .line 311
    .restart local v0    # "elements":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-interface {v6, v7}, Lka;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 313
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 314
    const-string/jumbo v6, "https"

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 315
    .local v1, "isSsl":Z
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 316
    .local v2, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljy;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 317
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljy;

    .line 318
    .local v4, "strategy":Ljy;
    invoke-interface {v4}, Ljy;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v6

    invoke-virtual {v6}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v6

    if-ne v6, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {v4}, Ljy;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v6

    invoke-virtual {v6}, Lanet/channel/entity/ConnType;->getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v6

    if-eq v6, p1, :cond_1

    .line 320
    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 329
    .end local v0    # "elements":[Ljava/lang/String;
    .end local v1    # "isSsl":Z
    .end local v2    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljy;>;"
    .end local v4    # "strategy":Ljy;
    :catch_0
    move-exception v5

    .line 330
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "awcn.SessionRequest"

    const-string/jumbo v7, ""

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, p2, v5, v8}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    move-object v6, v3

    .line 333
    goto :goto_0

    .line 325
    .restart local v0    # "elements":[Ljava/lang/String;
    :cond_4
    const/4 v6, 0x1

    :try_start_1
    invoke-static {v6}, Lanet/channel/util/ALog;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 326
    const-string/jumbo v6, "awcn.SessionRequest"

    const-string/jumbo v7, "[getAvailStrategy]"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "strategies"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v6, v7, p2, v8}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Lim;Lig$c;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lim;
    .param p3, "connCb"    # Lig$c;
    .param p4, "seq"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 357
    invoke-virtual {p2}, Lim;->c()Lanet/channel/entity/ConnType;

    move-result-object v0

    .line 358
    .local v0, "type":Lanet/channel/entity/ConnType;
    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v1

    if-nez v1, :cond_2

    .line 359
    invoke-virtual {p2}, Lim;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    new-instance v1, Ljo;

    invoke-direct {v1, p1, p2}, Ljo;-><init>(Landroid/content/Context;Lim;)V

    iput-object v1, p0, Lig;->c:Lanet/channel/Session;

    .line 367
    :goto_0
    const-string/jumbo v1, "awcn.SessionRequest"

    const-string/jumbo v2, "create connection..."

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 4084
    iget-object v5, p0, Lig;->a:Ljava/lang/String;

    .line 367
    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "Type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p2}, Lim;->c()Lanet/channel/entity/ConnType;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "IP"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {p2}, Lim;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "Port"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-virtual {p2}, Lim;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "heartbeat"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    invoke-virtual {p2}, Lim;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "session"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    iget-object v5, p0, Lig;->c:Lanet/channel/Session;

    aput-object v5, v3, v4

    invoke-static {v1, v2, p4, v3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v1, p0, Lig;->c:Lanet/channel/Session;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4373
    if-eqz p3, :cond_0

    .line 4376
    sget-object v4, Lanet/channel/entity/EventType;->ALL:Lanet/channel/entity/EventType;

    invoke-virtual {v4}, Lanet/channel/entity/EventType;->getType()I

    move-result v4

    new-instance v5, Lig$1;

    invoke-direct {v5, p0, p3, v2, v3}, Lig$1;-><init>(Lig;Lig$c;J)V

    invoke-virtual {v1, v4, v5}, Lanet/channel/Session;->a(ILiq;)V

    .line 4411
    sget-object v2, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-virtual {v2}, Lanet/channel/entity/EventType;->getType()I

    move-result v2

    sget-object v3, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {v3}, Lanet/channel/entity/EventType;->getType()I

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    invoke-virtual {v3}, Lanet/channel/entity/EventType;->getType()I

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lanet/channel/entity/EventType;->AUTH_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {v3}, Lanet/channel/entity/EventType;->getType()I

    move-result v3

    or-int/2addr v2, v3

    new-instance v3, Lig$2;

    invoke-direct {v3, p0, v1}, Lig$2;-><init>(Lig;Lanet/channel/Session;)V

    invoke-virtual {v1, v2, v3}, Lanet/channel/Session;->a(ILiq;)V

    .line 369
    :cond_0
    iget-object v1, p0, Lig;->c:Lanet/channel/Session;

    invoke-virtual {v1}, Lanet/channel/Session;->a()V

    .line 370
    return-void

    .line 362
    :cond_1
    new-instance v1, Ljs;

    invoke-direct {v1, p1, p2}, Ljs;-><init>(Landroid/content/Context;Lim;)V

    iput-object v1, p0, Lig;->c:Lanet/channel/Session;

    goto/16 :goto_0

    .line 365
    :cond_2
    new-instance v1, Ljr;

    invoke-direct {v1, p1, p2}, Ljr;-><init>(Landroid/content/Context;Lim;)V

    iput-object v1, p0, Lig;->c:Lanet/channel/Session;

    goto/16 :goto_0
.end method

.method protected static a(Lanet/channel/Session;ILjava/lang/String;)V
    .locals 8
    .param p0, "s"    # Lanet/channel/Session;
    .param p1, "errorCode"    # I
    .param p2, "errorDetail"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-static {}, Lic;->a()Landroid/content/Context;

    move-result-object v1

    .line 485
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-virtual {p0}, Lanet/channel/Session;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkg;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 494
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string/jumbo v4, "com.taobao.accs.data.MsgDistributeService"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string/jumbo v4, "command"

    const/16 v5, 0x67

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    const-string/jumbo v4, "host"

    invoke-virtual {p0}, Lanet/channel/Session;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string/jumbo v4, "is_center_host"

    invoke-virtual {p0}, Lanet/channel/Session;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkg;->a(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0}, Lanet/channel/Session;->d()Z

    move-result v0

    .line 502
    .local v0, "available":Z
    if-nez v0, :cond_2

    .line 503
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    const-string/jumbo v4, "errorDetail"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    :cond_2
    const-string/jumbo v4, "connect_avail"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    const-string/jumbo v4, "type_inapp"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    .end local v0    # "available":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 510
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "awcn.SessionRequest"

    const-string/jumbo v5, "sendConnectInfoBroadCastToAccs"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v3, v7}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected static a(Lig;)V
    .locals 2
    .param p0, "info"    # Lig;

    .prologue
    .line 78
    sget-object v1, Lig;->d:Ljava/util/Map;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lig;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lig;Landroid/content/Context;Lim;Lig$c;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lig;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lim;
    .param p3, "x3"    # Lig$c;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lig;->a(Landroid/content/Context;Lim;Lig$c;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lig;Z)V
    .locals 1
    .param p0, "x0"    # Lig;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lig;->b(Z)V

    return-void
.end method

.method static synthetic b(Lig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lig;

    .prologue
    .line 48
    iget-object v0, p0, Lig;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Z)V
    .locals 3
    .param p1, "b"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 88
    iput-boolean p1, p0, Lig;->b:Z

    .line 89
    if-nez p1, :cond_1

    .line 90
    iget-object v0, p0, Lig;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lig;->e:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 92
    iput-object v2, p0, Lig;->e:Ljava/util/concurrent/Future;

    .line 94
    :cond_0
    iput-object v2, p0, Lig;->c:Lanet/channel/Session;

    .line 96
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lig;->b(Z)V

    .line 478
    iget-object v1, p0, Lig;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 479
    :try_start_0
    iget-object v0, p0, Lig;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 480
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(J)V
    .locals 11
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 455
    const-string/jumbo v4, "awcn.SessionRequest"

    const-string/jumbo v5, "[await]"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "timeoutMs"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 473
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v5, p0, Lig;->f:Ljava/lang/Object;

    monitor-enter v5

    .line 460
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, v6, p1

    .line 461
    .local v2, "timeout":J
    :goto_1
    iget-boolean v4, p0, Lig;->b:Z

    if-eqz v4, :cond_1

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 463
    .local v0, "cur":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 466
    iget-object v4, p0, Lig;->f:Ljava/lang/Object;

    sub-long v6, v2, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 473
    .end local v0    # "cur":J
    .end local v2    # "timeout":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 470
    .restart local v2    # "timeout":J
    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lig;->b:Z

    if-eqz v4, :cond_2

    .line 471
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 473
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;
    .param p3, "seq"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lanet/channel/NoNetworkException;,
            Lanet/channel/NoAvailStrategyException;
        }
    .end annotation

    .prologue
    .line 1038
    monitor-enter p0

    :try_start_0
    sget-object v10, Lif$a;->a:Lif;

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lif;->a(Lig;Lanet/channel/entity/ConnType$TypeLevel;)Lanet/channel/Session;

    move-result-object v7

    .line 128
    .local v7, "session":Lanet/channel/Session;
    if-eqz v7, :cond_0

    .line 129
    const-string/jumbo v10, "awcn.SessionRequest"

    const-string/jumbo v11, "Available Session exist!!!"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, p3

    invoke-static {v10, v11, v0, v12}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 133
    invoke-static {}, Lkz;->a()Ljava/lang/String;

    move-result-object p3

    .line 135
    :cond_1
    const-string/jumbo v10, "awcn.SessionRequest"

    const-string/jumbo v11, "SessionRequest start"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "host"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lig;->a:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "type"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object p2, v12, v13

    move-object/from16 v0, p3

    invoke-static {v10, v11, v0, v12}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lig;->b:Z

    if-eqz v10, :cond_2

    .line 137
    const-string/jumbo v10, "awcn.SessionRequest"

    const-string/jumbo v11, "session is connecting, return"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "host"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 1084
    move-object/from16 v0, p0

    iget-object v14, v0, Lig;->a:Ljava/lang/String;

    .line 137
    aput-object v14, v12, v13

    move-object/from16 v0, p3

    invoke-static {v10, v11, v0, v12}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1038
    .end local v7    # "session":Lanet/channel/Session;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 140
    .restart local v7    # "session":Lanet/channel/Session;
    :cond_2
    const/4 v10, 0x1

    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lig;->b(Z)V

    .line 141
    new-instance v10, Lig$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v10, v0, v1}, Lig$b;-><init>(Lig;Ljava/lang/String;)V

    const-wide/16 v12, 0x2d

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v10, v12, v13, v11}, Lkq;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lig;->e:Ljava/util/concurrent/Future;

    .line 143
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->f()Z

    move-result v10

    if-nez v10, :cond_4

    .line 144
    const/4 v10, 0x1

    invoke-static {v10}, Lanet/channel/util/ALog;->a(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 145
    const-string/jumbo v10, "awcn.SessionRequest"

    const-string/jumbo v11, "network is not available, can\'t create session"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "NetworkStatusHelper.isConnected()"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->f()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p3

    invoke-static {v10, v11, v0, v12}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lig;->a()V

    .line 148
    new-instance v10, Lanet/channel/NoNetworkException;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lanet/channel/NoNetworkException;-><init>(Lig;)V

    throw v10

    .line 150
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lig;->a(Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 152
    .local v9, "strategyList":Ljava/util/List;, "Ljava/util/List<Ljy;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 153
    const-string/jumbo v10, "awcn.SessionRequest"

    const-string/jumbo v11, "no strategy, can\'t create session"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "host"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lig;->a:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "type"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object p2, v12, v13

    move-object/from16 v0, p3

    invoke-static {v10, v11, v0, v12}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lig;->a()V

    .line 155
    new-instance v10, Lanet/channel/NoAvailStrategyException;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lanet/channel/NoAvailStrategyException;-><init>(Lig;)V

    throw v10

    .line 158
    :cond_5
    sget-object v10, Lanet/channel/entity/ConnType$TypeLevel;->HTTP:Lanet/channel/entity/ConnType$TypeLevel;

    move-object/from16 v0, p2

    if-ne v0, v10, :cond_8

    .line 160
    invoke-interface {v9}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 161
    .local v6, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljy;>;"
    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 162
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljy;

    .line 163
    .local v8, "strategy":Ljy;
    move-object/from16 v0, p0

    iget-object v10, v0, Lig;->a:Ljava/lang/String;

    invoke-interface {v8}, Ljy;->getIp()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8}, Ljy;->getPort()I

    move-result v12

    invoke-static {v10, v11, v12}, Ljr;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 164
    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 167
    .end local v8    # "strategy":Ljy;
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 168
    const-string/jumbo v10, "awcn.SessionRequest"

    const-string/jumbo v11, "all http strategies are removed."

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12, v13}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lig;->a()V

    .line 1337
    .end local v6    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljy;>;"
    :cond_8
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1338
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    .local v5, "connInfoList":Ljava/util/List;, "Ljava/util/List<Lim;>;"
    :cond_9
    const/4 v10, 0x0

    :try_start_3
    invoke-interface {v5, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim;

    .line 177
    .local v4, "connInfo":Lim;
    new-instance v10, Lig$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1, v5, v4}, Lig$a;-><init>(Lig;Landroid/content/Context;Ljava/util/List;Lim;)V

    .line 2086
    iget-object v11, v4, Lim;->c:Ljava/lang/String;

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v10, v11}, Lig;->a(Landroid/content/Context;Lim;Lig$c;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 179
    .end local v4    # "connInfo":Lim;
    :catch_0
    move-exception v10

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lig;->a()V

    goto/16 :goto_0

    .line 1340
    .end local v5    # "connInfoList":Ljava/util/List;, "Ljava/util/List<Lim;>;"
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1341
    const/4 v12, 0x0

    .line 1342
    const/4 v10, 0x0

    move v13, v10

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v13, v10, :cond_9

    .line 1343
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljy;

    .line 1344
    invoke-interface {v10}, Ljy;->getRetryTimes()I

    move-result v14

    .line 1345
    const/4 v11, 0x0

    :goto_3
    if-gt v11, v14, :cond_b

    .line 1346
    add-int/lit8 v12, v12, 0x1

    .line 1347
    new-instance v15, Lim;

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lig;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1347
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1, v10}, Lim;-><init>(Ljava/lang/String;Ljava/lang/String;Ljy;)V

    .line 1348
    iput v11, v15, Lim;->d:I

    .line 1349
    iput v14, v15, Lim;->e:I

    .line 1350
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1345
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1342
    :cond_b
    add-int/lit8 v10, v13, 0x1

    move v13, v10

    goto :goto_2
.end method

.method protected final a(Z)V
    .locals 9
    .param p1, "autoCreate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 425
    const-string/jumbo v3, "awcn.SessionRequest"

    const-string/jumbo v4, "closeSessions"

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lig;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "autoCreate"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5038
    sget-object v3, Lif$a;->a:Lif;

    .line 426
    invoke-virtual {v3, p0}, Lif;->a(Lig;)Ljava/util/List;

    move-result-object v2

    .line 427
    .local v2, "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-eqz v2, :cond_1

    .line 428
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/Session;

    .line 430
    .local v1, "session":Lanet/channel/Session;
    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {v1, p1}, Lanet/channel/Session;->b(Z)V

    goto :goto_0

    .line 435
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "session":Lanet/channel/Session;
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7
    .param p1, "seq"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 438
    const-string/jumbo v0, "awcn.SessionRequest"

    const-string/jumbo v1, "reCreateSession"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "host"

    aput-object v5, v3, v4

    iget-object v4, p0, Lig;->a:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    invoke-virtual {p0, v6}, Lig;->a(Z)V

    .line 440
    return-void
.end method
