.class public Lcom/alipay/mobile/common/logging/LogContextImpl;
.super Ljava/lang/Object;
.source "LogContextImpl.java"

# interfaces
.implements Lijz;


# static fields
.field private static final e:J


# instance fields
.field a:Lcom/alipay/mobile/common/logging/ContextInfo;

.field b:Liks;

.field public c:J

.field public d:Z

.field private f:Lijx;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/alipay/mobile/common/logging/api/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile n:Lijr;

.field private o:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

.field private p:J

.field private final q:Z

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lijx;

    .line 71
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->i:Ljava/lang/ThreadLocal;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->k:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->l:Ljava/lang/InheritableThreadLocal;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:J

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Z

    .line 1156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->r:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Likj;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Likk;

    .line 157
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Liko;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Likp;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lijy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 159
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lilb;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lijq;

    .line 160
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Liki;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    .line 163
    new-instance v0, Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-static {p1, v0}, Lilq;->a(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)Lilq;

    .line 165
    new-instance v0, Liks;

    invoke-direct {v0, p0}, Liks;-><init>(Lijz;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Liks;

    .line 166
    new-instance v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->o:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->q:Z

    .line 174
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->m:Ljava/util/Queue;

    .line 176
    return-void
.end method

.method private A(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 429
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lika;->a()Likh;

    move-result-object v3

    invoke-interface {v3}, Likh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " syncUploadCoreByCategoryDirectly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->f()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->o:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->o:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    :goto_1
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 439
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogContext"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncUploadCoreByCategoryDirectly, syncLog: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :catch_1
    move-exception v0

    .line 448
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogContext"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncUploadCoreByCategoryDirectly, uploadLog: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static synthetic a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->m:Ljava/util/Queue;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".monitor.action.upload.mdaplog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string/jumbo v1, "logCategory"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 388
    :cond_0
    :goto_1
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v1

    invoke-virtual {v1}, Lilq;->c()Z

    move-result v1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadCoreByStartService: start upload service"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v3, ", logCategory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string/jumbo v3, ", success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 392
    const-string/jumbo v3, ", process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lika;->a()Likh;

    move-result-object v4

    invoke-interface {v4}, Likh;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string/jumbo v3, ", disableTools: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 394
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v3, "LogContext"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    if-eqz v0, :cond_1

    .line 400
    :goto_2
    return-void

    .line 384
    :catch_0
    move-exception v1

    .line 385
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "LogContext"

    const-string/jumbo v4, "uploadCoreByStartService"

    invoke-interface {v2, v3, v4, v1}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 399
    :cond_1
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->z(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->A(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 1177
    const-string/jumbo v0, "[native crash on main thread but NONE returned, java stack traces are used instead]\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 1180
    if-eqz v1, :cond_0

    .line 1181
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1182
    aget-object v2, v1, v0

    .line 1183
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1184
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1190
    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1309
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1313
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".monitor.command"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    const-string/jumbo v0, "action"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".monitor.action.TRACE_NATIVE_CRASH"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1315
    const-string/jumbo v0, "filePath"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    const-string/jumbo v0, "callStack"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1317
    const-string/jumbo v0, "isBoot"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1321
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 1327
    :goto_1
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v3

    invoke-virtual {v3}, Lilq;->c()Z

    move-result v3

    .line 1328
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleNativeCrashBySendBroadcast: send native crash broadcast"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1329
    const-string/jumbo v5, ", filePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    const-string/jumbo v5, ", isBoot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1331
    const-string/jumbo v5, ", success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1332
    const-string/jumbo v5, ", process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lika;->a()Likh;

    move-result-object v6

    invoke-interface {v6}, Likh;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    const-string/jumbo v5, ", disableTools: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1334
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v5, "LogContext"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    if-eqz v0, :cond_0

    .line 1340
    :goto_2
    return v1

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v4, "LogContext"

    const-string/jumbo v5, "handleNativeCrashBySendBroadcast"

    invoke-interface {v3, v4, v5, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_1

    :cond_0
    move v1, v2

    .line 1340
    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1266
    if-eqz p3, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-object p2

    .line 1272
    :cond_1
    const/4 v0, 0x0

    .line 1273
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1277
    const-string/jumbo v1, "file path is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 1288
    const-string/jumbo v1, ", logType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1290
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/StringBuilder;)V

    .line 1291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1279
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1282
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1284
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogContext"

    invoke-interface {v1, v2, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private y(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 406
    const-string/jumbo v0, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->z(Ljava/lang/String;)V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->A(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private z(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lijs;

    invoke-direct {v1, p0, p1}, Lijs;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    const-string/jumbo v2, "LogContext.upload"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 423
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    .line 2515
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->i:Ljava/lang/ThreadLocal;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2516
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->l:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2237
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2238
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    :goto_0
    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_0
    return-object v0

    .line 2240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Liks;

    invoke-virtual {v0, p1}, Liks;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 522
    return-void
.end method

.method public final declared-synchronized a(Lijr;)V
    .locals 1

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:Lijr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Liks;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Liks;->a(Ljava/lang/String;Z)V

    .line 270
    return-void
.end method

.method public final a(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/alipay/mobile/common/logging/api/LogEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    check-cast p1, Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;Z)V

    .line 275
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1199
    invoke-static {}, Lika;->a()Likh;

    move-result-object v1

    invoke-interface {v1}, Likh;->b()Ljava/lang/String;

    move-result-object v1

    .line 1200
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "LogContext"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "traceNativeCrash, filePath:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isBoot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    invoke-static {}, Lika;->a()Likh;

    move-result-object v2

    invoke-interface {v2}, Likh;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1205
    invoke-static {}, Lika;->a()Likh;

    move-result-object v2

    invoke-interface {v2}, Likh;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1208
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1209
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1212
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v2

    invoke-virtual {v2}, Lilq;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1214
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    const-string/jumbo v3, "com.alipay.mobile.logmonitor.ClientMonitorWakeupReceiver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    :goto_0
    invoke-direct {p0, v1, p1, v0, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1258
    :cond_1
    :goto_1
    return v0

    .line 1217
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    const-string/jumbo v3, "com.alipay.mobile.common.logging.process.LogReceiverInToolsProcess"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1227
    :cond_3
    invoke-static {}, Lika;->a()Likh;

    move-result-object v2

    invoke-interface {v2}, Likh;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1230
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v1

    invoke-virtual {v1}, Lilq;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1238
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    const-string/jumbo v2, "com.alipay.mobile.common.logging.process.LogReceiverInToolsProcess"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1239
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    .line 1245
    :cond_4
    invoke-static {}, Lika;->a()Likh;

    move-result-object v2

    invoke-interface {v2}, Likh;->h()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1253
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "LogContext"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "traceNativeCrash, error: unknown process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 526
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->isIllegal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    const-string/jumbo v0, "LogContext"

    const-string/jumbo v1, "appendLogEvent: illegal logEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:Lijr;

    if-nez v0, :cond_3

    .line 532
    monitor-enter p0

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:Lijr;

    if-nez v0, :cond_2

    .line 535
    new-instance v0, Lijr;

    invoke-direct {v0, p0}, Lijr;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    .line 536
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lijr;->setDaemon(Z)V

    .line 537
    const-string/jumbo v1, "LogAppendWorker"

    invoke-virtual {v0, v1}, Lijr;->setName(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0}, Lijr;->start()V

    .line 540
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lijr;)V

    .line 542
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 547
    if-nez v0, :cond_0

    .line 548
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "add log event to queue fail, current size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->m:Ljava/util/Queue;

    .line 549
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 554
    :catch_0
    move-exception v0

    goto :goto_0

    .line 542
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v1, "flush"

    const/4 v2, 0x0

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 286
    if-eqz p2, :cond_0

    .line 287
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 483
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v0

    invoke-virtual {v0}, Lilq;->c()Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4095
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Ljava/lang/String;

    .line 566
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 314
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v1

    invoke-virtual {v1}, Lilq;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    const-string/jumbo v2, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3458
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3459
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:J

    sub-long v2, v0, v2

    sget-wide v4, Lilq;->b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 3462
    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:J

    .line 3463
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v0

    const-string/jumbo v1, "mdapupload"

    .line 3477
    invoke-virtual {v0}, Lilq;->b()V

    .line 3487
    iget-object v2, v0, Lilq;->d:Landroid/content/Context;

    const-string/jumbo v3, "LogStrategyConfig"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3489
    const-string/jumbo v3, "PreviousRequestTime"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3490
    const-string/jumbo v3, "CurrentRequestTimeSpan"

    sget-wide v8, Lilq;->c:J

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3493
    sub-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-gez v2, :cond_7

    .line 3494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "queryStrategy returned by span: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3504
    :cond_1
    :goto_2
    return-void

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    const-string/jumbo v2, "com.alipay.mobile.common.logging.process.LogServiceInToolsProcess"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 331
    :cond_3
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v0

    invoke-virtual {v0}, Lilq;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->y(Ljava/lang/String;)V

    goto :goto_1

    .line 339
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 340
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    const-string/jumbo v2, "com.alipay.mobile.common.logging.process.LogServiceInToolsProcess"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 348
    :cond_5
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 351
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->y(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 355
    :cond_6
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "upload, error: unknown process "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lika;->a()Likh;

    move-result-object v3

    invoke-interface {v3}, Likh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-interface {v0, v1, v2}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->y(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3502
    :cond_7
    iget-wide v2, v0, Lilq;->f:J

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-wide v6, Lilq;->a:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_8

    .line 3503
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v2, "LogStrategyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryStrategy returned by twice: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3506
    :cond_8
    iput-wide v4, v0, Lilq;->f:J

    .line 3510
    iget-object v2, v0, Lilq;->d:Landroid/content/Context;

    invoke-static {v2}, Lime;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3511
    invoke-virtual {v0}, Lilq;->d()V

    .line 3520
    :cond_9
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lilr;

    invoke-direct {v3, v0, v1}, Lilr;-><init>(Lilq;Ljava/lang/String;)V

    const-string/jumbo v0, "LogStrategyManager.request"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3525
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4099
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    .line 571
    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 468
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lilq;->a(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4103
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    .line 576
    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 651
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4187
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Ljava/lang/String;

    .line 4188
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "channelId"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4190
    const/4 v1, 0x0

    const-string/jumbo v2, "channelId"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_0
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4107
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    .line 581
    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 656
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4196
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    .line 4197
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "releaseType"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    const/4 v1, 0x0

    const-string/jumbo v2, "releaseType"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_0
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4111
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    .line 586
    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 666
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4214
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    .line 4215
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "productID"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4217
    const/4 v1, 0x0

    const-string/jumbo v2, "productID"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_0
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 671
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4223
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    .line 672
    :cond_0
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 596
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4124
    invoke-static {}, Lika;->a()Likh;

    move-result-object v1

    invoke-interface {v1}, Likh;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4125
    iget-object v1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4126
    const-string/jumbo v1, "clientID"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->h:Ljava/lang/String;

    .line 4129
    :cond_0
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->h:Ljava/lang/String;

    .line 596
    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 681
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4238
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->h:Ljava/lang/String;

    .line 4239
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "clientID"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4241
    const/4 v1, 0x0

    const-string/jumbo v2, "clientID"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_0
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 601
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4133
    invoke-static {}, Lika;->a()Likh;

    move-result-object v1

    invoke-interface {v1}, Likh;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4134
    iget-object v1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4135
    const-string/jumbo v1, "utdid"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->i:Ljava/lang/String;

    .line 4138
    :cond_0
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->i:Ljava/lang/String;

    .line 601
    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 686
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4247
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->i:Ljava/lang/String;

    .line 4248
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "utdid"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4250
    const/4 v1, 0x0

    const-string/jumbo v2, "utdid"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_0
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4142
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->j:Ljava/lang/String;

    .line 606
    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 731
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4314
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Ljava/lang/String;

    .line 4315
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "channelId"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4317
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "channelId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_0
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 736
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4323
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    .line 4324
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "releaseType"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4326
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "releaseType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_0
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4150
    const/4 v0, 0x0

    .line 616
    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 741
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4332
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    .line 4333
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "releaseCode"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4335
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "releaseCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_0
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4154
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->k:Ljava/lang/String;

    .line 621
    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 746
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4341
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    .line 4342
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "productID"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4344
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "productID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_0
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4170
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->m:Ljava/lang/String;

    .line 641
    return-object v0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 751
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4350
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    .line 752
    :cond_0
    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4174
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->p:Ljava/lang/String;

    .line 646
    return-object v0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 756
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4356
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    .line 4357
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "userID"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4359
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "userID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->c()V

    .line 697
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 761
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4365
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->h:Ljava/lang/String;

    .line 4366
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "clientID"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4368
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "clientID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4447
    :try_start_0
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4450
    :goto_0
    return-void

    .line 797
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 766
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4373
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4374
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->i:Ljava/lang/String;

    .line 4375
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "utdid"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4377
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "utdid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_0
    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Ljava/lang/String;

    .line 1468
    :goto_0
    return-object v0

    .line 1436
    :cond_0
    const/4 v0, 0x0

    .line 1438
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    .line 1439
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 1438
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1440
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 1441
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "logging.gateway"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1447
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    invoke-static {v1}, Lima;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1448
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Landroid/content/Context;

    const-string/jumbo v2, "content://com.alipay.setting/MdapLogUrlPrefix"

    invoke-static {v1, v2, v0}, Lima;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1453
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1454
    const-string/jumbo v0, "dev"

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 5099
    iget-object v1, v1, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    .line 1454
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1455
    const-string/jumbo v0, "http://mdap-1-64.test.alipay.net"

    .line 1466
    :cond_3
    :goto_2
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Ljava/lang/String;

    .line 1467
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLogHost: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Ljava/lang/String;

    goto :goto_0

    .line 1443
    :catch_0
    move-exception v1

    .line 1444
    const-string/jumbo v2, "LogContext"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1458
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 6091
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->q:Ljava/lang/String;

    .line 1458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1459
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 7091
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->q:Ljava/lang/String;

    goto :goto_2

    .line 1461
    :cond_5
    const-string/jumbo v0, "http://mdap.alipaylog.com"

    goto :goto_2
.end method

.method public final s(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 771
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4383
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->j:Ljava/lang/String;

    .line 4384
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "language"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4386
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "language"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_0
    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 1478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1479
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "LogContext"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getClientStatus: , now: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", gotoBackgroundTimestamp: 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", clientLaunchTimestamp: 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", processSetupTimestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    cmp-long v2, v8, v8

    if-lez v2, :cond_0

    sub-long v2, v0, v8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x5

    .line 1508
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1509
    const-string/jumbo v0, "background"

    .line 1546
    :goto_0
    return-object v0

    .line 1513
    :cond_0
    cmp-long v2, v8, v8

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_2

    .line 1514
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1515
    const-string/jumbo v0, "background"

    goto :goto_0

    .line 1518
    :cond_1
    :try_start_0
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->j()Ljava/util/Map;

    move-result-object v0

    .line 1523
    if-eqz v0, :cond_2

    .line 1524
    const-string/jumbo v1, "ActionName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    const-string/jumbo v1, "ComponentName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    :cond_2
    :goto_1
    const-string/jumbo v0, "foreground"

    goto :goto_0

    .line 1539
    :catch_0
    move-exception v0

    .line 1540
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogContext"

    invoke-interface {v1, v2, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final t(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 776
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4401
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->k:Ljava/lang/String;

    .line 4402
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hotpatchVersion"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4404
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "hotpatchVersion"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_0
    return-void
.end method

.method public final u()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->k:Ljava/util/Map;

    return-object v0
.end method

.method public final u(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 781
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4410
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->n:Ljava/lang/String;

    .line 4411
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bundleVersion"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4413
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "bundleVersion"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_0
    return-void
.end method

.method public final v()Lijx;
    .locals 1

    .prologue
    .line 1625
    const/4 v0, 0x0

    return-object v0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 786
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4418
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4419
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->o:Ljava/lang/String;

    .line 4420
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "birdNestVersion"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4422
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "birdNestVersion"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_0
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 791
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4428
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    .line 4429
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "packageId"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4431
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->d()V

    .line 4432
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "packageId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_0
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1630
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1633
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Ljava/lang/String;

    .line 1634
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 7391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7392
    iput-object p1, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->q:Ljava/lang/String;

    .line 7393
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v2, "logHost"

    invoke-virtual {v1, v2, p1}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7395
    iget-object v0, v0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "logHost"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
