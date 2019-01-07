.class public Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;
.super Ljava/lang/Object;
.source "LoggerFactoryBinder.java"


# static fields
.field private static a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/content/Context;)V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 34
    sget-boolean v0, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a:Z

    if-eqz v0, :cond_0

    .line 35
    const-string/jumbo v0, "LoggerFactory.bind repeated"

    .line 36
    const-string/jumbo v1, "LoggerFactory"

    const-string/jumbo v2, "bind"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :goto_0
    return-void

    .line 39
    :cond_0
    sput-boolean v13, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a:Z

    .line 41
    new-instance v0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {v0}, Lika;->a(Likh;)V

    .line 44
    new-instance v1, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {v1}, Lika;->a(Lijw;)V

    .line 47
    invoke-static {p0}, Lilz;->a(Landroid/content/Context;)Lilz;

    .line 48
    invoke-static {p0}, Lilf;->a(Landroid/content/Context;)Lilf;

    .line 49
    invoke-static {p0}, Lilv;->a(Landroid/content/Context;)Lilv;

    .line 51
    new-instance v11, Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-direct {v11, p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {v11}, Lika;->a(Lijz;)V

    .line 1179
    iget-object v12, v11, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Liks;

    .line 2076
    iget-boolean v1, v12, Liks;->c:Z

    if-nez v1, :cond_1

    .line 2079
    iput-boolean v13, v12, Liks;->c:Z

    .line 2081
    invoke-static {}, Lima;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2082
    new-instance v1, Likt;

    iget-object v2, v12, Liks;->b:Lijz;

    const-string/jumbo v3, "applog"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    .line 2083
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x7

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const-wide/32 v8, 0x40000000

    const v10, 0x8000

    invoke-direct/range {v1 .. v10}, Likt;-><init>(Lijz;Ljava/lang/String;JJJI)V

    .line 2084
    iget-object v2, v12, Liks;->a:Ljava/util/Map;

    const-string/jumbo v3, "applog"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_1
    new-instance v1, Lilg;

    invoke-direct {v1, v11}, Lilg;-><init>(Lijz;)V

    .line 56
    new-instance v2, Lild;

    invoke-direct {v2, v11}, Lild;-><init>(Lijz;)V

    .line 57
    new-instance v3, Lile;

    invoke-direct {v3, v11}, Lile;-><init>(Lijz;)V

    .line 58
    invoke-static {v1, v2, v3}, Lika;->a(Likq;Likl;Likn;)V

    .line 61
    const-string/jumbo v2, ","

    const/16 v3, 0x14

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v4, v3, v14

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v3, v13

    const/4 v4, 0x2

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "uid"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "pid"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    .line 2345
    iget-object v5, v0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a:Ljava/lang/String;

    .line 69
    aput-object v5, v3, v4

    const/16 v4, 0xa

    .line 70
    invoke-virtual {v11}, Lcom/alipay/mobile/common/logging/LogContextImpl;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    .line 71
    invoke-virtual {v11}, Lcom/alipay/mobile/common/logging/LogContextImpl;->g()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    .line 2591
    iget-object v5, v11, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/ContextInfo;->a()Ljava/lang/String;

    move-result-object v5

    .line 72
    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string/jumbo v5, "patchVer"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    .line 73
    invoke-virtual {v11}, Lcom/alipay/mobile/common/logging/LogContextImpl;->n()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xf

    .line 74
    invoke-virtual {v11}, Lcom/alipay/mobile/common/logging/LogContextImpl;->o()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string/jumbo v5, "bundleVer"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    .line 2626
    iget-object v5, v11, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 3158
    iget-object v5, v5, Lcom/alipay/mobile/common/logging/ContextInfo;->n:Ljava/lang/String;

    .line 75
    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string/jumbo v5, "birdNest"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    .line 3631
    iget-object v5, v11, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 4162
    iget-object v5, v5, Lcom/alipay/mobile/common/logging/ContextInfo;->o:Ljava/lang/String;

    .line 76
    aput-object v5, v3, v4

    .line 61
    invoke-static {v2, v3}, Lima;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string/jumbo v3, "LoggerFactory"

    invoke-interface {v1, v3, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lilf;->a()Lilf;

    move-result-object v1

    invoke-virtual {v1}, Lilf;->b()V

    .line 5142
    iget-object v1, v0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->c:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 5143
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a(Landroid/os/Looper;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->c:Ljava/util/Map;

    .line 5522
    :cond_2
    iget-boolean v0, v0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Z

    .line 86
    if-eqz v0, :cond_3

    .line 87
    const-string/jumbo v0, "logging"

    invoke-static {p0, v0}, Lima;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 98
    :cond_3
    :try_start_0
    const-string/jumbo v0, "com.alipay.mobile.tianyanadapter.logging.LoggingReflectedEntry"

    const-string/jumbo v1, "onSetupLogging"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 6020
    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_4

    .line 6021
    check-cast v0, Ljava/lang/Class;

    .line 6028
    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6029
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6030
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LoggerFactory"

    invoke-interface {v1, v2, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 6024
    :cond_4
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6025
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 121
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 161
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 125
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 158
    const-string/jumbo v0, "LoggerFactory"

    const-string/jumbo v1, "native log with error prio"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Likq;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_2
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_3
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_4
    if-nez p3, :cond_2

    .line 143
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Likq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 150
    :pswitch_5
    if-nez p3, :cond_3

    .line 151
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_3
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
