.class public abstract Ljiu;
.super Ljava/lang/Object;
.source "BaseConnection.java"


# static fields
.field private static volatile f:Ljiu;

.field private static final i:[B


# instance fields
.field protected a:I

.field protected b:Landroid/content/Context;

.field protected c:Ljip;

.field protected d:I

.field protected e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private volatile h:Z

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Ljiu;->f:Ljiu;

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ljiu;->i:[B

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v2, p0, Ljiu;->d:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljiu;->g:J

    .line 68
    iput-boolean v2, p0, Ljiu;->h:Z

    .line 72
    new-instance v0, Lcom/taobao/accs/net/BaseConnection$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/net/BaseConnection$1;-><init>(Ljiu;)V

    iput-object v0, p0, Ljiu;->e:Ljava/util/LinkedHashMap;

    .line 97
    iput p2, p0, Ljiu;->a:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljiu;->b:Landroid/content/Context;

    .line 99
    invoke-static {p1}, Ljip;->a(Landroid/content/Context;)Ljip;

    move-result-object v0

    iput-object v0, p0, Ljiu;->c:Ljip;

    .line 100
    iget-object v0, p0, Ljiu;->c:Ljip;

    iget v1, p0, Ljiu;->a:I

    iput v1, v0, Ljip;->e:I

    .line 101
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Ljiu$1;

    invoke-direct {v1, p0}, Ljiu$1;-><init>(Ljiu;)V

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 110
    iget-object v0, p0, Ljiu;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljiu;->a(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method protected static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 116
    packed-switch p0, :pswitch_data_0

    .line 130
    const-string/jumbo v0, "DISCONNECTED"

    .line 134
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 118
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "CONNECTED"

    .line 119
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "CONNECTING"

    .line 122
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 124
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "DISCONNECTED"

    .line 125
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 127
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "DISCONNECTING"

    .line 128
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preUnit"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "https://"

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/taobao/accs/client/AccsConfig;->a:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "preUnit":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    sget-object v3, Lcom/taobao/accs/client/AccsConfig;->a:[Ljava/lang/String;

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getMode(Landroid/content/Context;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 312
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    return-object v1

    .end local v1    # "result":Ljava/lang/String;
    .restart local p1    # "preUnit":Ljava/lang/String;
    :cond_1
    move-object v3, p1

    .line 302
    goto :goto_0

    .line 309
    .end local p1    # "preUnit":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 310
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "InAppConnection"

    const-string/jumbo v4, "getHost"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;I)Ljiu;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 81
    sget-object v0, Ljiu;->f:Ljiu;

    if-eqz v0, :cond_0

    sget-object v0, Ljiu;->f:Ljiu;

    invoke-virtual {v0}, Ljiu;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    :cond_0
    sget-object v1, Ljiu;->i:[B

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Ljiu;->f:Ljiu;

    if-eqz v0, :cond_1

    sget-object v0, Ljiu;->f:Ljiu;

    invoke-virtual {v0}, Ljiu;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    :cond_1
    if-nez p1, :cond_4

    .line 85
    new-instance v0, Ljiy;

    invoke-direct {v0, p0, p1}, Ljiy;-><init>(Landroid/content/Context;I)V

    sput-object v0, Ljiu;->f:Ljiu;

    .line 90
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_3
    sget-object v0, Ljiu;->f:Ljiu;

    return-object v0

    .line 87
    :cond_4
    :try_start_1
    new-instance v0, Ljix;

    invoke-direct {v0, p0, p1}, Ljix;-><init>(Landroid/content/Context;I)V

    sput-object v0, Ljiu;->f:Ljiu;

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    sget-object v1, Lcom/taobao/accs/client/AccsConfig;->b:[Ljava/lang/String;

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getMode(Landroid/content/Context;)I

    move-result v2

    aget-object v0, v1, v2

    .line 348
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "SpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getChannelHost:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 317
    iget-boolean v2, p0, Ljiu;->h:Z

    if-eqz v2, :cond_0

    .line 343
    :goto_0
    return-void

    .line 321
    :cond_0
    :try_start_0
    sget-object v2, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    .line 322
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isDebugMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    sget-object v0, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    .line 330
    .local v0, "env":Lanet/channel/entity/ENV;
    :goto_1
    sget-object v2, Lcom/taobao/accs/client/AccsConfig;->d:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    sget-object v3, Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;->SECURITY_OFF:Lcom/taobao/accs/client/AccsConfig$SECURITY_TYPE;

    if-ne v2, v3, :cond_3

    .line 331
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljiu;->b:Landroid/content/Context;

    invoke-static {v4}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v4

    .line 1100
    iget-object v4, v4, Ljim;->b:Ljava/lang/String;

    .line 331
    invoke-static {p1, v2, v3, v4}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_2
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lanet/channel/SessionCenter;->switchEnv(Lanet/channel/entity/ENV;)V

    .line 337
    invoke-virtual {p0}, Ljiu;->e()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "init awcn success"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljiu;->h:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    .end local v0    # "env":Lanet/channel/entity/ENV;
    :catch_0
    move-exception v1

    .line 340
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljiu;->e()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "initAwcn"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 324
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isPreviewMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    sget-object v0, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    .restart local v0    # "env":Lanet/channel/entity/ENV;
    goto :goto_1

    .line 327
    .end local v0    # "env":Lanet/channel/entity/ENV;
    :cond_2
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    .restart local v0    # "env":Lanet/channel/entity/ENV;
    goto :goto_1

    .line 333
    :cond_3
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected abstract a(Lcom/taobao/accs/data/Message;Z)V
.end method

.method protected final a(Ljava/lang/String;J)V
    .locals 4
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 213
    new-instance v0, Ljiu$2;

    invoke-direct {v0, p0, p1}, Ljiu$2;-><init>(Ljiu;Ljava/lang/String;)V

    .line 223
    .local v0, "timeoutRunalbe":Ljava/lang/Runnable;
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, p2, p3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 224
    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(ZZ)V
.end method

.method protected final a(Lcom/taobao/accs/data/Message;I)Z
    .locals 8
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "delay"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "result":Z
    :try_start_0
    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 256
    :goto_0
    return v2

    .line 238
    :cond_0
    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    .line 239
    int-to-long v4, p2

    iput-wide v4, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    .line 240
    invoke-virtual {p0}, Ljiu;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reSend dataid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " retryTimes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Ljiu;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 242
    const/4 v0, 0x1

    .line 243
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    .line 245
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    .line 246
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v3

    iget v4, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    iput v4, v3, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->retry_times:I

    .line 248
    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    if-ne v3, v6, :cond_1

    .line 249
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "resend"

    const-string/jumbo v5, "total"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v2, v0

    .line 256
    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Ljiu;->c:Ljip;

    const/4 v4, -0x8

    invoke-virtual {v3, p1, v4}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 254
    invoke-virtual {p0}, Ljiu;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "reSend error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method protected final b(I)V
    .locals 6
    .param p1, "dataId"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 261
    if-gez p1, :cond_0

    .line 262
    invoke-virtual {p0}, Ljiu;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reSendAck"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "dataId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object v1, p0, Ljiu;->e:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 264
    .local v0, "reqMsg":Lcom/taobao/accs/data/Message;
    if-eqz v0, :cond_0

    .line 265
    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Ljiu;->a(Lcom/taobao/accs/data/Message;I)Z

    .line 266
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "resend"

    const-string/jumbo v3, "ack"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 269
    .end local v0    # "reqMsg":Lcom/taobao/accs/data/Message;
    :cond_0
    return-void
.end method

.method public final b(Lcom/taobao/accs/data/Message;Z)V
    .locals 8
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "connectIfNeeded"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 162
    const-wide/16 v0, 0x0

    .line 163
    .local v0, "delay":J
    iget-boolean v2, p1, Lcom/taobao/accs/data/Message;->isAck:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Ljiu;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-virtual {p0}, Ljiu;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "no network:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v2, p0, Ljiu;->c:Ljip;

    const/16 v3, -0xd

    invoke-virtual {v2, p1, v3}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 210
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v2

    if-eq v2, v7, :cond_1

    .line 170
    iget-object v2, p0, Ljiu;->c:Ljip;

    iget-object v2, v2, Ljip;->g:Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->bizId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 172
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 173
    invoke-virtual {p0}, Ljiu;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "servier limit high. dataId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v2, p0, Ljiu;->c:Ljip;

    const v3, 0x11185

    invoke-virtual {v2, p1, v3}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 178
    :cond_2
    const-wide/16 v2, -0x3e8

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 179
    invoke-virtual {p0}, Ljiu;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "servier limit high for brush. dataId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v2, p0, Ljiu;->c:Ljip;

    const v3, 0x11187

    invoke-virtual {v2, p1, v3}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 184
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljiu;->g:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 186
    iput-wide v0, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    .line 190
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljiu;->g:J

    .line 191
    invoke-virtual {p0}, Ljiu;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "send message, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/taobao/accs/data/Message$a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dataId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :cond_4
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->isTimeOut()Z

    move-result v2

    if-nez v2, :cond_7

    .line 200
    invoke-virtual {p0, p1, p2}, Ljiu;->a(Lcom/taobao/accs/data/Message;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v2

    iget-object v2, p0, Ljiu;->c:Ljip;

    const v3, 0x11178

    invoke-virtual {v2, p1, v3}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 206
    invoke-virtual {p0}, Ljiu;->e()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "msg queue full"

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "size"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {}, Ljin;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 188
    :cond_5
    iget-wide v2, p0, Ljiu;->g:J

    add-long/2addr v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    goto/16 :goto_1

    .line 193
    :cond_6
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 194
    invoke-virtual {p0}, Ljiu;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "send message, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/taobao/accs/data/Message$a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dataId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 202
    :cond_7
    :try_start_1
    iget-object v2, p0, Ljiu;->c:Ljip;

    const/16 v3, -0x9

    invoke-virtual {v2, p1, v3}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public abstract b()Z
.end method

.method public abstract c()V
.end method

.method public abstract d()Ljjd;
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method public f()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method protected final g()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 274
    iget-object v0, p0, Ljiu;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljiu$3;

    invoke-direct {v0, p0}, Ljiu$3;-><init>(Ljiu;)V

    iput-object v0, p0, Ljiu;->j:Ljava/lang/Runnable;

    .line 287
    :cond_0
    invoke-virtual {p0}, Ljiu;->h()V

    .line 288
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Ljiu;->j:Ljava/lang/Runnable;

    const-wide/32 v2, 0x9c40

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Ljiu;->k:Ljava/util/concurrent/ScheduledFuture;

    .line 289
    return-void
.end method

.method protected final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 292
    iget-object v0, p0, Ljiu;->k:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Ljiu;->k:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 295
    :cond_0
    return-void
.end method
