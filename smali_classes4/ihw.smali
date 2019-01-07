.class public final Lihw;
.super Ljava/lang/Object;
.source "SSLExtensionsFactory.java"


# static fields
.field private static a:Lihv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lihv;
    .locals 7

    .prologue
    .line 19
    sget-object v1, Lihw;->a:Lihv;

    if-eqz v1, :cond_0

    .line 20
    sget-object v1, Lihw;->a:Lihv;

    .line 35
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 22
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const-class v2, Lihv;

    monitor-enter v2

    .line 23
    :try_start_0
    invoke-static {}, Lihm;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    :try_start_1
    const-string/jumbo v1, "com.alipay.android.phone.mobilesdk.socketcraft.integrated.ssl.MPaaSSSLExtensions"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lihv;

    sput-object v1, Lihw;->a:Lihv;

    .line 26
    const-string/jumbo v1, "SSLExtensionsFactory"

    const-string/jumbo v3, "New instance ok, class: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "com.alipay.android.phone.mobilesdk.socketcraft.integrated.ssl.MPaaSSSLExtensions"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    :try_start_2
    sget-object v1, Lihw;->a:Lihv;

    if-nez v1, :cond_2

    .line 32
    new-instance v1, Lihu;

    invoke-direct {v1}, Lihu;-><init>()V

    sput-object v1, Lihw;->a:Lihv;

    .line 34
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    sget-object v1, Lihw;->a:Lihv;

    goto :goto_0

    .line 27
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 28
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v1, "SSLExtensionsFactory"

    const-string/jumbo v3, "New instance error, class: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "com.alipay.android.phone.mobilesdk.socketcraft.integrated.ssl.MPaaSSSLExtensions"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lihq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
