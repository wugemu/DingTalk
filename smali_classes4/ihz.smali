.class public Lihz;
.super Ljava/lang/Object;
.source "SCNetworkAsyncTaskExecutorFactory.java"


# static fields
.field private static a:Lihy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lihy;
    .locals 7

    .prologue
    .line 18
    sget-object v1, Lihz;->a:Lihy;

    if-eqz v1, :cond_0

    .line 19
    sget-object v1, Lihz;->a:Lihy;

    .line 37
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 22
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const-class v2, Lihz;

    monitor-enter v2

    .line 23
    :try_start_0
    sget-object v1, Lihz;->a:Lihy;

    if-eqz v1, :cond_1

    .line 24
    sget-object v1, Lihz;->a:Lihy;

    monitor-exit v2

    goto :goto_0

    .line 38
    .restart local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-static {}, Lihm;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    :try_start_2
    const-string/jumbo v1, "com.alipay.android.phone.mobilesdk.socketcraft.integrated.threadpool.MPaaSNetworkAsyncTaskExecutor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lihy;

    .line 29
    sput-object v1, Lihz;->a:Lihy;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "SCNetworkAsyncTaskExecutorFactory"

    const-string/jumbo v3, "Instance class: %s error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "com.alipay.android.phone.mobilesdk.socketcraft.integrated.threadpool.MPaaSNetworkAsyncTaskExecutor"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lihq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_2
    sget-object v1, Lihz;->a:Lihy;

    if-nez v1, :cond_3

    .line 35
    new-instance v1, Lihx;

    invoke-direct {v1}, Lihx;-><init>()V

    sput-object v1, Lihz;->a:Lihy;

    .line 37
    :cond_3
    sget-object v1, Lihz;->a:Lihy;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
