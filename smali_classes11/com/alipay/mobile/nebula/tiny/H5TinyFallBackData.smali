.class public Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;
.super Ljava/lang/Object;
.source "H5TinyFallBackData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5TinyFallBackData"

.field public static apiPermissionByte:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field public static appConfigByte:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->apiPermissionByte:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->appConfigByte:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeApiPermission(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v5

    .line 32
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 34
    const-class v6, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 35
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 37
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v2, :cond_0

    .line 39
    :try_start_0
    const-class v6, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 40
    invoke-virtual {v2, v6}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 41
    .local v3, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v3, :cond_0

    .line 42
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->removeApiPermission(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 47
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :catch_0
    move-exception v4

    .line 48
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v6, "H5TinyFallBackData"

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_2
    sget-object v6, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->apiPermissionByte:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 54
    .local v0, "api":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    goto :goto_0
.end method

.method public static removeAppConfigByte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v5

    .line 68
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    const-class v6, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 71
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 73
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v2, :cond_0

    .line 75
    :try_start_0
    const-class v6, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 76
    invoke-virtual {v2, v6}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 77
    .local v3, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v3, :cond_0

    .line 78
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->removeAppConfigByte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 83
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :catch_0
    move-exception v4

    .line 84
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v6, "H5TinyFallBackData"

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_2
    sget-object v6, Lcom/alipay/mobile/nebula/tiny/H5TinyFallBackData;->appConfigByte:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 90
    .local v0, "api":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    goto :goto_0
.end method
