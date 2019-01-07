.class public Lanet/channel/SessionCenter;
.super Ljava/lang/Object;
.source "SessionCenter.java"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/SessionCenter$a;
    }
.end annotation


# static fields
.field public static final ALIYUN_OPEN:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static SECURITYGUARD_OFF:Z = false

.field public static final TAG:Ljava/lang/String; = "awcn.SessionCenter"

.field private static mContext:Landroid/content/Context;

.field private static mDataChannelCb:Lhz;

.field private static mInit:Z


# instance fields
.field enterBackgroundTime:J

.field foreGroundCheckRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lanet/channel/SessionCenter;->SECURITYGUARD_OFF:Z

    .line 48
    sput-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lanet/channel/SessionCenter;->enterBackgroundTime:J

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/SessionCenter;->foreGroundCheckRunning:Z

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/SessionCenter$1;)V
    .locals 0
    .param p1, "x0"    # Lanet/channel/SessionCenter$1;

    .prologue
    .line 39
    invoke-direct {p0}, Lanet/channel/SessionCenter;-><init>()V

    return-void
.end method

.method public static getInstance()Lanet/channel/SessionCenter;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lanet/channel/SessionCenter$a;->a:Lanet/channel/SessionCenter;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v1, Lanet/channel/SessionCenter;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v2, "init failed,input param null or empty !"

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "context"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "appkey"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "init failed,input param null or empty "

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 68
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    sput-object v0, Lanet/channel/SessionCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lic;->a(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Lic;->a(Ljava/lang/String;)V

    .line 72
    sget-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    if-eqz v0, :cond_2

    .line 73
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v2, "SessionCenter has init"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_0
    monitor-exit v1

    return-void

    .line 77
    :cond_2
    :try_start_2
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v0

    invoke-interface {v0}, Lka;->a()V

    .line 78
    invoke-static {}, Lkr;->a()V

    .line 79
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$a;)V

    .line 80
    invoke-static {}, Lih;->a()Lij;

    move-result-object v0

    invoke-interface {v0}, Lij;->a()V

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    .line 84
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v2, "init start"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "ttid"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v1, Lanet/channel/SessionCenter;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lic;->b(Ljava/lang/String;)V

    .line 89
    invoke-static {p0, p1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v1

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "ttid"    # Ljava/lang/String;
    .param p3, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v1, Lanet/channel/SessionCenter;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v2, "init failed,input param null or empty !"

    const/4 v3, 0x0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "context"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "appkey"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "secret"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p3, v4, v5

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "init failed,input param null or empty "

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 98
    :cond_1
    :try_start_1
    invoke-static {p2}, Lic;->b(Ljava/lang/String;)V

    .line 99
    invoke-static {p3}, Lic;->d(Ljava/lang/String;)V

    .line 100
    invoke-static {p0, p1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    monitor-exit v1

    return-void
.end method

.method private reCreateSession()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 285
    const-string/jumbo v3, "awcn.SessionCenter"

    const-string/jumbo v4, "[reCreateSession]"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v7, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4038
    sget-object v3, Lif$a;->a:Lif;

    .line 286
    invoke-virtual {v3}, Lif;->a()Ljava/util/List;

    move-result-object v1

    .line 287
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lig;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lig;

    .line 289
    .local v2, "request":Lig;
    const-string/jumbo v3, "awcn.SessionCenter"

    const-string/jumbo v4, "network change, try re create "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, ""

    aput-object v6, v5, v8

    invoke-static {v3, v4, v7, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v2, v7}, Lig;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "request":Lig;
    :cond_0
    const-string/jumbo v3, "awcn.SessionCenter"

    const-string/jumbo v4, "recreate session failed: infos is empty"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v7, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5033
    :cond_1
    sget-object v3, Lia$b;->a:Lia;

    .line 295
    invoke-virtual {v3}, Lia;->a()V

    .line 296
    return-void
.end method

.method private updateAccsFrameCb(Lanet/channel/entity/ConnType;)V
    .locals 9
    .param p1, "connType"    # Lanet/channel/entity/ConnType;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1038
    sget-object v4, Lif$a;->a:Lif;

    .line 212
    invoke-virtual {v4, p1}, Lif;->a(Lanet/channel/entity/ConnType;)Ljava/util/List;

    move-result-object v3

    .line 213
    .local v3, "sessions":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    if-eqz v3, :cond_1

    .line 214
    const-string/jumbo v4, "awcn.SessionCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sessions:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v8, v6}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 216
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/Session;

    .line 217
    .local v2, "session":Lanet/channel/Session;
    instance-of v4, v2, Ljo;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 218
    check-cast v0, Ljo;

    .line 219
    .local v0, "accsSession":Ljo;
    sget-object v4, Lanet/channel/SessionCenter;->mDataChannelCb:Lhz;

    invoke-virtual {v0, v4}, Ljo;->a(Lhz;)V

    .line 215
    .end local v0    # "accsSession":Ljo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "i":I
    .end local v2    # "session":Lanet/channel/Session;
    :cond_1
    const-string/jumbo v4, "awcn.SessionCenter"

    const-string/jumbo v5, "sessions:null"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v8, v6}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_2
    return-void
.end method


# virtual methods
.method public background()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 355
    invoke-static {}, Lic;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "[enterBackground]"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    const/4 v0, 0x1

    invoke-static {v0}, Lic;->a(Z)V

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/SessionCenter;->enterBackgroundTime:J

    .line 361
    sget-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v0, :cond_2

    .line 362
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "enterBackground not inited!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    :cond_2
    :try_start_0
    new-instance v0, Lanet/channel/SessionCenter$2;

    invoke-direct {v0, p0}, Lanet/channel/SessionCenter$2;-><init>(Lanet/channel/SessionCenter;)V

    invoke-static {v0}, Lkq;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 374
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v0

    invoke-interface {v0}, Lka;->c()V

    .line 375
    const-string/jumbo v0, "OPPO"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6033
    sget-object v0, Lia$b;->a:Lia;

    .line 376
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lia;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enterBackground()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lanet/channel/SessionCenter;->background()V

    .line 301
    return-void
.end method

.method public enterForeground()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lanet/channel/SessionCenter;->forground()V

    .line 306
    return-void
.end method

.method public forground()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 312
    invoke-static {}, Lic;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "[enterForeground]"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-static {v3}, Lic;->a(Z)V

    .line 318
    sget-object v0, Lanet/channel/SessionCenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 323
    iget-boolean v0, p0, Lanet/channel/SessionCenter;->foreGroundCheckRunning:Z

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/SessionCenter;->foreGroundCheckRunning:Z

    .line 327
    sget-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v0, :cond_2

    .line 328
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "enterForeground not inited!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 332
    :cond_2
    :try_start_0
    new-instance v0, Lanet/channel/SessionCenter$1;

    invoke-direct {v0, p0}, Lanet/channel/SessionCenter$1;-><init>(Lanet/channel/SessionCenter;)V

    invoke-static {v0}, Lkq;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;J)Lanet/channel/Session;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lanet/channel/SessionCenter;->get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;
    .param p3, "timeout"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, "session":Lanet/channel/Session;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lanet/channel/SessionCenter;->getInternal(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lanet/channel/NoNetworkException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lanet/channel/NoAvailStrategyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 188
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/security/InvalidParameterException;
    const-string/jumbo v2, "awcn.SessionCenter"

    const-string/jumbo v3, "[Get]param url is invaild, return null"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "url"

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {v2, v3, v8, v0, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string/jumbo v2, "awcn.SessionCenter"

    const-string/jumbo v3, "[Get]get session timeout exception return null"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "url"

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {v2, v3, v8, v0, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v2

    const-string/jumbo v2, "awcn.SessionCenter"

    const-string/jumbo v3, "[Get]get session no network return null"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "url"

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {v2, v3, v8, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :catch_3
    move-exception v2

    const-string/jumbo v2, "awcn.SessionCenter"

    const-string/jumbo v3, "[Get]get session no strategy"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "url"

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {v2, v3, v8, v4}, Lanet/channel/util/ALog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    :catch_4
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "awcn.SessionCenter"

    const-string/jumbo v3, "[Get]get session exception return null"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "url"

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {v2, v3, v8, v0, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDataChannelCb()Lhz;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lanet/channel/SessionCenter;->mDataChannelCb:Lhz;

    return-object v0
.end method

.method protected getInternal(Ljava/lang/String;J)Lanet/channel/Session;
    .locals 2
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lanet/channel/SessionCenter;->getInternal(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method public getInternal(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 11
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 243
    sget-boolean v5, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v5, :cond_1

    .line 244
    const-string/jumbo v5, "awcn.SessionCenter"

    const-string/jumbo v6, "getInternal not inited!"

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    const/4 v4, 0x0

    .line 281
    :cond_0
    :goto_0
    return-object v4

    .line 247
    :cond_1
    const-string/jumbo v5, "awcn.SessionCenter"

    const-string/jumbo v6, "getInternal"

    const/4 v7, 0x0

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "u"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "TypeClass"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p2, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "timeout"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-static {p1}, Lla;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "elements":[Ljava/lang/String;
    if-nez v1, :cond_2

    .line 251
    new-instance v5, Ljava/security/InvalidParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "param url invalid. url:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 255
    :cond_2
    invoke-static {}, Lib;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 256
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-interface {v5, v6}, Lka;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "scheme":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-interface {v5, v6}, Lka;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "cname":Ljava/lang/String;
    if-eqz v3, :cond_4

    .end local v3    # "scheme":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_5

    .end local v0    # "cname":Ljava/lang/String;
    :goto_3
    invoke-static {v3, v0}, Lkg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lig;->a(Ljava/lang/String;)Lig;

    move-result-object v2

    .line 2038
    .local v2, "request":Lig;
    sget-object v5, Lif$a;->a:Lif;

    .line 266
    invoke-virtual {v5, v2, p2}, Lif;->a(Lig;Lanet/channel/entity/ConnType$TypeLevel;)Lanet/channel/Session;

    move-result-object v4

    .line 268
    .local v4, "session":Lanet/channel/Session;
    if-eqz v4, :cond_6

    .line 269
    const-string/jumbo v5, "awcn.SessionCenter"

    const-string/jumbo v6, "get internal hit cache session"

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "session"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 258
    .end local v2    # "request":Lig;
    .end local v4    # "session":Lanet/channel/Session;
    :cond_3
    const-string/jumbo v3, "http"

    .restart local v3    # "scheme":Ljava/lang/String;
    goto :goto_1

    .line 262
    .restart local v0    # "cname":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    aget-object v3, v1, v5

    goto :goto_2

    .end local v3    # "scheme":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    aget-object v0, v1, v5

    goto :goto_3

    .line 271
    .end local v0    # "cname":Ljava/lang/String;
    .restart local v2    # "request":Lig;
    .restart local v4    # "session":Lanet/channel/Session;
    :cond_6
    sget-object v5, Lanet/channel/SessionCenter;->mContext:Landroid/content/Context;

    invoke-static {}, Lkz;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, p2, v6}, Lig;->a(Landroid/content/Context;Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)V

    .line 272
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-lez v5, :cond_0

    .line 273
    invoke-virtual {v2, p3, p4}, Lig;->a(J)V

    .line 3038
    sget-object v5, Lif$a;->a:Lif;

    .line 274
    invoke-virtual {v5, v2, p2}, Lif;->a(Lig;Lanet/channel/entity/ConnType$TypeLevel;)Lanet/channel/Session;

    move-result-object v4

    .line 275
    if-nez v4, :cond_0

    .line 276
    new-instance v5, Ljava/net/ConnectException;

    invoke-direct {v5}, Ljava/net/ConnectException;-><init>()V

    throw v5
.end method

.method public getThrowsException(Ljava/lang/String;J)Lanet/channel/Session;
    .locals 2
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lanet/channel/SessionCenter;->getInternal(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method public getThrowsException(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 1
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0, p1, p2, p3, p4}, Lanet/channel/SessionCenter;->getInternal(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 6
    .param p1, "networkStatus"    # Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 231
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "onNetworkStatusChanged"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "networkStatus"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-direct {p0}, Lanet/channel/SessionCenter;->reCreateSession()V

    .line 233
    return-void
.end method

.method public setDataReceiveCb(Lhz;)Z
    .locals 7
    .param p1, "frameCb"    # Lhz;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 198
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "setDataReceiveCb"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "AccsFrameCb"

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    sput-object p1, Lanet/channel/SessionCenter;->mDataChannelCb:Lhz;

    .line 200
    sget-object v0, Lanet/channel/entity/ConnType;->H2_ACCS_0RTT:Lanet/channel/entity/ConnType;

    invoke-direct {p0, v0}, Lanet/channel/SessionCenter;->updateAccsFrameCb(Lanet/channel/entity/ConnType;)V

    .line 201
    sget-object v0, Lanet/channel/entity/ConnType;->H2_ACCS_1RTT:Lanet/channel/entity/ConnType;

    invoke-direct {p0, v0}, Lanet/channel/SessionCenter;->updateAccsFrameCb(Lanet/channel/entity/ConnType;)V

    .line 202
    sget-object v0, Lanet/channel/entity/ConnType;->ACCS_0RTT:Lanet/channel/entity/ConnType;

    invoke-direct {p0, v0}, Lanet/channel/SessionCenter;->updateAccsFrameCb(Lanet/channel/entity/ConnType;)V

    .line 203
    sget-object v0, Lanet/channel/entity/ConnType;->ACCS_1RTT:Lanet/channel/entity/ConnType;

    invoke-direct {p0, v0}, Lanet/channel/SessionCenter;->updateAccsFrameCb(Lanet/channel/entity/ConnType;)V

    .line 204
    return v6
.end method

.method public declared-synchronized switchEnv(Lanet/channel/entity/ENV;)V
    .locals 10
    .param p1, "env"    # Lanet/channel/entity/ENV;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lic;->d()Lanet/channel/entity/ENV;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 109
    const-string/jumbo v4, "awcn.SessionCenter"

    const-string/jumbo v5, "switch env"

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "old"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Lic;->d()Lanet/channel/entity/ENV;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "new"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p1, v7, v8

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-static {p1}, Lic;->a(Lanet/channel/entity/ENV;)V

    .line 112
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v4

    invoke-interface {v4}, Lka;->b()V

    .line 113
    sget-object v4, Lanet/channel/SessionCenter;->mContext:Landroid/content/Context;

    sget-object v5, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v6, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v4, v5, v6}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v1

    .line 114
    .local v1, "spdyAgent":Lorg/android/spdy/SpdyAgent;
    sget-object v4, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    if-ne p1, v4, :cond_1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/android/spdy/SpdyAgent;->switchAccsServer(I)V

    .line 1033
    sget-object v2, Lia$b;->a:Lia;

    .line 115
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lia;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local v1    # "spdyAgent":Lorg/android/spdy/SpdyAgent;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .restart local v1    # "spdyAgent":Lorg/android/spdy/SpdyAgent;
    :cond_1
    move v2, v3

    .line 114
    goto :goto_0

    .line 117
    .end local v1    # "spdyAgent":Lorg/android/spdy/SpdyAgent;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v2, "awcn.SessionCenter"

    const-string/jumbo v3, "switch env error."

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 108
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
