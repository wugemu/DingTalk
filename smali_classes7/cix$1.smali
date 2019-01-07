.class final Lcix$1;
.super Ljava/lang/Object;
.source "DDServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 57
    invoke-static {p2}, Lcjb;->a(Landroid/os/IBinder;)Lciy;

    move-result-object v3

    invoke-static {v3}, Lcix;->a(Lciy;)Lciy;

    .line 58
    invoke-static {p2}, Lcix;->a(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 61
    invoke-static {}, Lcix;->d()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 62
    invoke-static {}, Lcix;->e()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 63
    :try_start_0
    invoke-static {}, Lcix;->d()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v3, v6}, Lcix;->a(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 66
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_1
    invoke-static {}, Lcix;->f()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 71
    :try_start_2
    invoke-static {}, Lcix;->g()Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {p2, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :goto_1
    const-string/jumbo v3, "service connected"

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lciz;->a(Ljava/lang/String;Z)V

    .line 77
    invoke-static {}, Lcix;->h()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 78
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Connect time:"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcix;->h()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 78
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lciz;->a(Ljava/lang/String;Z)V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcix;->h()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 82
    .local v4, "time":J
    invoke-static {}, Lcja;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x2710

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 83
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    .line 84
    .local v2, "measure":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "measure_connect_time"

    long-to-double v6, v4

    invoke-virtual {v2, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 86
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v6, "ipc"

    const-string/jumbo v7, "connectTime"

    const/4 v8, 0x0

    invoke-interface {v3, v6, v7, v8, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 90
    .end local v2    # "measure":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v4    # "time":J
    :cond_2
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Lcix;->a(J)J

    .line 91
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Exception linkToDeath "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-static {v1}, Lcix;->a(Z)V

    .line 97
    const-string/jumbo v0, "DDServiceManager#Service disconnected, reconnecting"

    invoke-static {v0, v1}, Lciz;->a(Ljava/lang/String;Z)V

    .line 98
    return-void
.end method
