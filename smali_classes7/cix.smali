.class public final Lcix;
.super Ljava/lang/Object;
.source "DDServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcix$c;,
        Lcix$b;,
        Lcix$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lciy;

.field private static c:Landroid/os/IBinder;

.field private static volatile d:Ljava/util/concurrent/CountDownLatch;

.field private static e:J

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcix$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private static h:Landroid/os/Handler;

.field private static i:Ljava/lang/Object;

.field private static j:Landroid/content/ServiceConnection;

.field private static k:Landroid/os/IBinder$DeathRecipient;

.field private static l:Lcix$a;

.field private static m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcix;->a:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcix;->f:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcix;->g:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcix;->i:Ljava/lang/Object;

    .line 54
    new-instance v0, Lcix$1;

    invoke-direct {v0}, Lcix$1;-><init>()V

    sput-object v0, Lcix;->j:Landroid/content/ServiceConnection;

    .line 101
    new-instance v0, Lcix$2;

    invoke-direct {v0}, Lcix$2;-><init>()V

    sput-object v0, Lcix;->k:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    return-void
.end method

.method static synthetic a(J)J
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lcix;->e:J

    return-wide v0
.end method

.method static synthetic a(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Landroid/os/IBinder;

    .prologue
    .line 35
    sput-object p0, Lcix;->c:Landroid/os/IBinder;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 123
    sget-object v1, Lcix;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 124
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    .end local v0    # "service":Landroid/os/IBinder;
    :goto_0
    return-object v0

    .line 126
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_0
    sget-object v1, Lcix;->b:Lciy;

    if-eqz v1, :cond_1

    .line 127
    invoke-static {p0}, Lcix;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {p0}, Lcix;->c(Ljava/lang/String;)Lciy;

    .line 132
    sget-object v1, Lcix;->b:Lciy;

    if-eqz v1, :cond_2

    .line 133
    invoke-static {p0}, Lcix;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "get null service:"

    aput-object v3, v1, v2

    aput-object p0, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lciz;->a(Ljava/lang/String;Z)V

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lciy;)Lciy;
    .locals 0
    .param p0, "x0"    # Lciy;

    .prologue
    .line 35
    sput-object p0, Lcix;->b:Lciy;

    return-object p0
.end method

.method public static a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 353
    sget-object v2, Lcix;->h:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 388
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    :goto_0
    return-void

    .line 357
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "DDServiceMgr_worker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 358
    .restart local v1    # "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 359
    new-instance v2, Lcix$5;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcix$5;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcix;->h:Landroid/os/Handler;

    .line 1391
    :try_start_0
    sget-object v2, Lcix;->m:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 1392
    new-instance v2, Lcix$6;

    invoke-direct {v2}, Lcix$6;-><init>()V

    sput-object v2, Lcix;->m:Landroid/content/BroadcastReceiver;

    .line 1404
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    .line 1405
    if-eqz v2, :cond_1

    .line 1406
    sget-object v3, Lcix;->m:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.alibaba.android.rimet.ACTION_SERVICE_BOOT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_1
    :goto_1
    invoke-static {}, Lcix;->b()V

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "registerReceiver exception: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static a(Lcix$a;)V
    .locals 0
    .param p0, "logoutHandler"    # Lcix$a;

    .prologue
    .line 477
    sput-object p0, Lcix;->l:Lcix$a;

    .line 478
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 258
    .line 1016
    const-string/jumbo v2, "user"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "main"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "dingvideo"

    .line 1017
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "facebox"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "faceboxrpc"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 258
    :cond_1
    if-eqz v1, :cond_2

    if-nez p1, :cond_3

    .line 277
    :cond_2
    :goto_0
    return-void

    .line 262
    :cond_3
    sget-object v2, Lcix;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 263
    :try_start_0
    sget-object v1, Lcix;->b:Lciy;

    if-eqz v1, :cond_4

    sget-object v1, Lcix;->b:Lciy;

    .line 264
    invoke-interface {v1}, Lciy;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcix;->b:Lciy;

    invoke-interface {v1}, Lciy;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 265
    :cond_4
    sget-object v1, Lcix;->f:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v1, Lcix;->a:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Service manager is not up, buffer it.."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lciz;->a(Ljava/lang/String;)V

    .line 277
    :cond_5
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 268
    :cond_6
    :try_start_1
    sget-object v1, Lcix;->h:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 269
    new-instance v0, Lcix$c;

    invoke-direct {v0, p0, p1}, Lcix$c;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 270
    .local v0, "servicePair":Lcix$c;
    sget-object v1, Lcix;->h:Landroid/os/Handler;

    sget-object v3, Lcix;->h:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 272
    .end local v0    # "servicePair":Lcix$c;
    :cond_7
    const-string/jumbo v1, "not initialized"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lciz;->a(Ljava/lang/String;Z)V

    .line 273
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v1, v3, :cond_5

    .line 274
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "not initialized"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method static synthetic a(Z)V
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Lcix;->b(Z)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 14
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "service":Landroid/os/IBinder;
    sget-object v4, Lcix;->b:Lciy;

    if-eqz v4, :cond_0

    .line 215
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 216
    .local v2, "start":J
    sget-object v4, Lcix;->b:Lciy;

    invoke-interface {v4, p0}, Lciy;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 217
    invoke-static {v2, v3}, Lcja;->a(J)V

    .line 218
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v2    # "start":J
    :goto_0
    if-eqz v1, :cond_2

    .line 229
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "ipc"

    const-string/jumbo v6, "getServiceRemote"

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :try_start_1
    new-instance v4, Lcix$4;

    invoke-direct {v4, p0}, Lcix$4;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :goto_1
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    sget-object v4, Lcix;->a:Ljava/util/Map;

    invoke-interface {v4, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_0
    :goto_2
    return-object v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10}, Lcix;->b(Z)V

    .line 222
    invoke-static {}, Lcja;->c()V

    .line 223
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "ipc"

    const-string/jumbo v6, "getServiceRemote"

    const-string/jumbo v7, "getServiceFailed"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "name:"

    aput-object v9, v8, v11

    .line 224
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 223
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-array v4, v13, [Ljava/lang/String;

    const-string/jumbo v5, "error getService:"

    aput-object v5, v4, v11

    aput-object p0, v4, v10

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 242
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-array v4, v13, [Ljava/lang/String;

    const-string/jumbo v5, "Exception unlinkToDeath to service:"

    aput-object v5, v4, v11

    aput-object p0, v4, v10

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 248
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-array v4, v12, [Ljava/lang/String;

    const-string/jumbo v5, "Got remote dead service: "

    aput-object v5, v4, v11

    aput-object p0, v4, v10

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_2

    .line 251
    :cond_2
    new-array v4, v12, [Ljava/lang/String;

    const-string/jumbo v5, "Got remote null service:"

    aput-object v5, v4, v11

    aput-object p0, v4, v10

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method static b()V
    .locals 4

    .prologue
    .line 412
    sget-object v0, Lcix;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    sget-object v0, Lcix;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 413
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcix;->d:Ljava/util/concurrent/CountDownLatch;

    .line 416
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcix$7;

    invoke-direct {v1}, Lcix$7;-><init>()V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 431
    return-void
.end method

.method static synthetic b(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 35
    .line 3281
    sget-object v1, Lcix;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 3283
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3284
    sget-object v0, Lcix;->b:Lciy;

    const/4 v4, 0x0

    invoke-interface {v0, p0, p1, v4}, Lciy;->a(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 3285
    sget-object v0, Lcix;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3286
    invoke-static {v2, v3}, Lcja;->a(J)V

    .line 3287
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3299
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 3288
    :catch_0
    move-exception v0

    .line 3292
    const/4 v2, 0x1

    invoke-static {v2}, Lcix;->b(Z)V

    .line 3293
    sget-object v2, Lcix;->f:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3294
    sget-object v2, Lcix;->a:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3296
    invoke-static {}, Lcja;->c()V

    .line 3297
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "error addService:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static b(Z)V
    .locals 5
    .param p0, "unbind"    # Z

    .prologue
    const/4 v4, 0x0

    .line 458
    sget-object v1, Lcix;->b:Lciy;

    if-nez v1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcix;->b:Lciy;

    .line 463
    if-eqz p0, :cond_0

    .line 465
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcix;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Exception unbindService "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static c()Lcix$a;
    .locals 1

    .prologue
    .line 473
    sget-object v0, Lcix;->l:Lcix$a;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Lciy;
    .locals 8
    .param p0, "who"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "interrupted":Z
    sget-object v1, Lcix;->b:Lciy;

    if-nez v1, :cond_0

    .line 305
    invoke-static {}, Lcix;->b()V

    .line 308
    :try_start_0
    const-string/jumbo v1, "waiting service connected"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lciz;->a(Ljava/lang/String;Z)V

    .line 309
    sget-object v1, Lcix;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_0
    sget-object v1, Lcix;->b:Lciy;

    if-nez v1, :cond_2

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "waiting service timeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lciz;->a(Ljava/lang/String;Z)V

    .line 319
    if-nez v0, :cond_1

    .line 320
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "ipc"

    const-string/jumbo v3, "getIDDServiceManager"

    const-string/jumbo v4, "timeout"

    const-string/jumbo v5, "await timeout"

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_1
    :goto_1
    sget-object v1, Lcix;->b:Lciy;

    return-object v1

    .line 311
    :catch_0
    move-exception v1

    const/4 v0, 0x1

    .line 312
    const-string/jumbo v1, "await interrupted"

    invoke-static {v1, v7}, Lciz;->a(Ljava/lang/String;Z)V

    .line 313
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "ipc"

    const-string/jumbo v3, "getIDDServiceManager"

    const-string/jumbo v4, "interrupted"

    const-string/jumbo v5, "await interrupted"

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_2
    const-string/jumbo v1, "getIDDServiceManager"

    invoke-static {v1, v6}, Lciz;->a(Ljava/lang/String;Z)V

    .line 324
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "ipc"

    const-string/jumbo v3, "getIDDServiceManager"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcix;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcix;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcix;->d:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic g()Landroid/os/IBinder$DeathRecipient;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcix;->k:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic h()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcix;->e:J

    return-wide v0
.end method

.method static synthetic i()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcix;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic j()Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcix;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic k()V
    .locals 7

    .prologue
    .line 2182
    sget-object v2, Lcix;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 2183
    :try_start_0
    sget-object v0, Lcix;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2184
    monitor-exit v2

    .line 2208
    :goto_0
    return-void

    .line 2187
    :cond_0
    sget-object v0, Lcix;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2188
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3165
    sget-object v1, Lcix;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 3166
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2190
    :goto_1
    sget-object v4, Lcix;->g:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2191
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 2195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcix$b;

    .line 2196
    if-eqz v0, :cond_2

    .line 2200
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcix$3;

    invoke-direct {v6, v0, v1}, Lcix$3;-><init>(Lcix$b;Landroid/os/IBinder;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 2208
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3168
    :cond_3
    :try_start_1
    sget-object v1, Lcix;->b:Lciy;

    if-eqz v1, :cond_4

    .line 3169
    invoke-static {v0}, Lcix;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1

    .line 3171
    :cond_4
    invoke-static {v0}, Lcix;->c(Ljava/lang/String;)Lciy;

    .line 3174
    sget-object v1, Lcix;->b:Lciy;

    if-eqz v1, :cond_5

    .line 3175
    invoke-static {v0}, Lcix;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1

    .line 3178
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 2208
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic l()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcix;->m()Z

    move-result v0

    return v0
.end method

.method private static m()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 436
    :try_start_0
    const-string/jumbo v4, "com.alibaba.android.rimet.CATEGORY_TOOLS_PROCESS"

    invoke-static {}, Lciz;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 445
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget-object v5, Lcix;->j:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v5, v6}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcix;->e:J

    .line 448
    const-string/jumbo v4, "realStartRemoteServiceManager"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lciz;->a(Ljava/lang/String;Z)V

    .line 454
    :goto_1
    return v2

    .line 439
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImplMain;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Exception start remote service "

    aput-object v5, v4, v3

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lciz;->a(Ljava/lang/String;Z)V

    .line 451
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v4, "ipc"

    const-string/jumbo v5, "ipc_start_remote_fail_count"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    move v2, v3

    .line 452
    goto :goto_1
.end method
