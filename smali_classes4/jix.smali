.class public final Ljix;
.super Ljiu;
.source "InAppConnection.java"

# interfaces
.implements Lhz;


# instance fields
.field private f:Z

.field private g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-direct {p0, p1, p2}, Ljiu;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-boolean v3, p0, Ljix;->f:Z

    .line 42
    const/4 v2, 0x0

    iput-object v2, p0, Ljix;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 318
    new-instance v2, Ljix$4;

    invoke-direct {v2, p0}, Ljix$4;-><init>(Ljix;)V

    iput-object v2, p0, Ljix;->h:Ljava/lang/Runnable;

    .line 48
    invoke-static {v3}, Ljjn;->a(Z)Z

    move-result v1

    .line 49
    .local v1, "tlogOff":Z
    if-nez v1, :cond_0

    .line 50
    iget-object v2, p0, Ljix;->b:Landroid/content/Context;

    const-string/jumbo v3, "inapp"

    invoke-static {v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->getTnetLogFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "path":Ljava/lang/String;
    const-string/jumbo v2, "InAppConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "config tnet log path:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const/high16 v2, 0x500000

    const/4 v3, 0x5

    invoke-static {p1, v0, v2, v3}, Lanet/channel/Session;->a(Landroid/content/Context;Ljava/lang/String;II)V

    .line 58
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    iget-object v3, p0, Ljix;->h:Ljava/lang/Runnable;

    const-wide/32 v4, 0x1d4c0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Ljix;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 59
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 66
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljix;->f:Z

    .line 67
    iget-object v0, p0, Ljix;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljix;->a(Landroid/content/Context;)V

    .line 68
    const-string/jumbo v0, "InAppConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljix;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(IIZLjava/lang/String;)V
    .locals 3
    .param p1, "dataId"    # I
    .param p2, "errorId"    # I
    .param p3, "needRetry"    # Z
    .param p4, "detail"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 289
    const-string/jumbo v0, "InAppConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "errorId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "detail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " needRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Ljix$3;

    invoke-direct {v1, p0, p1, p3, p2}, Ljix$3;-><init>(Ljix;IZI)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    invoke-super {p0, p1}, Ljiu;->a(Landroid/content/Context;)V

    .line 365
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lanet/channel/SessionCenter;->setDataReceiveCb(Lhz;)Z

    .line 366
    return-void
.end method

.method protected final a(Lcom/taobao/accs/data/Message;Z)V
    .locals 9
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "connectIfNeeded"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 74
    iget-boolean v3, p0, Ljix;->f:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    .line 75
    :cond_0
    const-string/jumbo v3, "InAppConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "not running or msg null! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Ljix;->f:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    :try_start_0
    invoke-static {}, Ljin;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_3

    .line 81
    new-instance v3, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v4, "accs"

    invoke-direct {v3, v4}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :catch_0
    move-exception v3

    iget-object v3, p0, Ljix;->c:Ljip;

    const v4, 0x11178

    invoke-virtual {v3, p1, v4}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 184
    const-string/jumbo v3, "InAppConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "send queue full count:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljin;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_3
    :try_start_1
    invoke-static {}, Ljin;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Ljix$1;

    invoke-direct {v4, p0, p1}, Ljix$1;-><init>(Ljix;Lcom/taobao/accs/data/Message;)V

    iget-wide v6, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 162
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 165
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->isControlFrame()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljix;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    iget-object v3, p0, Ljix;->c:Ljip;

    invoke-virtual {v3, p1}, Ljip;->b(Lcom/taobao/accs/data/Message;)V

    .line 171
    :cond_4
    iget-object v3, p0, Ljix;->c:Ljip;

    iget-object v3, v3, Ljip;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_5
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    .line 176
    .local v1, "netPerformanceMonitor":Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    if-eqz v1, :cond_1

    .line 177
    iget-object v3, p0, Ljix;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDeviceId(Ljava/lang/String;)V

    .line 179
    iget v3, p0, Ljix;->a:I

    invoke-virtual {v1, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setConnType(I)V

    .line 180
    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onEnterQueueData()V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 185
    .end local v0    # "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    .end local v1    # "netPerformanceMonitor":Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    :catch_1
    move-exception v2

    .line 186
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Ljix;->c:Ljip;

    const/4 v4, -0x8

    invoke-virtual {v3, p1, v4}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 187
    const-string/jumbo v3, "InAppConnection"

    const-string/jumbo v4, "send error"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 235
    :try_start_0
    iget-object v3, p0, Ljix;->c:Ljip;

    .line 1746
    iget-object v3, v3, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message;

    .line 236
    .local v1, "msg":Lcom/taobao/accs/data/Message;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    if-eqz v3, :cond_0

    .line 237
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v3

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lanet/channel/SessionCenter;->get(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object v2

    .line 238
    .local v2, "session":Lanet/channel/Session;
    if-eqz v2, :cond_0

    .line 2138
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lanet/channel/Session;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1    # "msg":Lcom/taobao/accs/data/Message;
    .end local v2    # "session":Lanet/channel/Session;
    :cond_0
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "InAppConnection"

    const-string/jumbo v4, "onTimeOut"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljo;[BI)V
    .locals 4
    .param p1, "session"    # Ljo;
    .param p2, "data"    # [B
    .param p3, "frameType"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 250
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const-string/jumbo v0, "InAppConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDataReceive, type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    :cond_0
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Ljix$2;

    invoke-direct {v1, p0, p3, p2, p1}, Ljix$2;-><init>(Ljix;I[BLjo;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 279
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const-string/jumbo v0, "InAppConnection"

    const-string/jumbo v1, "onDataReceive, end:"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :cond_1
    return-void
.end method

.method public final a(ZZ)V
    .locals 0
    .param p1, "force"    # Z
    .param p2, "dely"    # Z

    .prologue
    .line 215
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7
    .param p1, "customDataId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "result":Z
    if-nez p1, :cond_0

    .line 353
    :goto_0
    return v2

    .line 346
    :cond_0
    iget-object v3, p0, Ljix;->c:Ljip;

    iget-object v3, v3, Ljip;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 347
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v0, :cond_1

    .line 348
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v1

    .line 350
    :cond_1
    if-eqz v1, :cond_2

    .line 2360
    const-string/jumbo v3, "InAppConnection"

    .line 351
    const-string/jumbo v4, "cancel"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "customDataId"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v2, v1

    .line 353
    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Ljix;->f:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    iput v0, p0, Ljix;->d:I

    .line 210
    return-void
.end method

.method public final d()Ljjd;
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    const-string/jumbo v0, "InAppConnection"

    return-object v0
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 197
    const-string/jumbo v0, "InAppConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ljix;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "shut down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iput-boolean v3, p0, Ljix;->f:Z

    .line 199
    return-void
.end method
