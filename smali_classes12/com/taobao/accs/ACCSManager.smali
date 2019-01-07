.class public final Lcom/taobao/accs/ACCSManager;
.super Ljava/lang/Object;
.source "ACCSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/ACCSManager$AccsRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ACCSManager"

.field private static accsManager:Ljhz;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;
    .param p3, "ttid"    # Ljava/lang/String;
    .param p4, "appCallback"    # Ljia;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Ljhz;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V

    .line 26
    return-void
.end method

.method public static bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljia;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "ttid"    # Ljava/lang/String;
    .param p3, "appCallback"    # Ljia;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Ljhz;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V

    .line 30
    return-void
.end method

.method public static bindService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljhz;->bindService(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static bindUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljhz;->bindUser(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static bindUser(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 47
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Ljhz;->bindUser(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method public static clearLoginInfoImpl(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0}, Ljhz;->clearLoginInfo(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method public static forceDisableService(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0}, Ljhz;->forceDisableService(Landroid/content/Context;)V

    .line 124
    return-void
.end method

.method public static forceEnableService(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0}, Ljhz;->forceEnableService(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public static forceReConnectChannel(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0}, Ljhz;->forceReConnectChannel()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelState(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0}, Ljhz;->getChannelState()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getManagerImpl(Landroid/content/Context;)Ljhz;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    const-class v2, Lcom/taobao/accs/ACCSManager;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/taobao/accs/ACCSManager;->accsManager:Ljhz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 234
    :try_start_1
    invoke-static {}, Ljja;->a()Ljja;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljja;->a(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.taobao.accs.internal.ACCSManagerImpl"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhz;

    sput-object v0, Lcom/taobao/accs/ACCSManager;->accsManager:Ljhz;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    :try_start_2
    sget-object v0, Lcom/taobao/accs/ACCSManager;->accsManager:Ljhz;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_0

    .line 241
    :try_start_3
    const-string/jumbo v0, "com.taobao.accs.internal.ACCSManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhz;

    sput-object v0, Lcom/taobao/accs/ACCSManager;->accsManager:Ljhz;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    :cond_0
    :goto_0
    :try_start_4
    sget-object v0, Lcom/taobao/accs/ACCSManager;->accsManager:Ljhz;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v2

    return-object v0

    .line 239
    :catch_0
    move-exception v0

    :try_start_5
    sget-object v0, Lcom/taobao/accs/ACCSManager;->accsManager:Ljhz;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_0

    .line 241
    :try_start_6
    const-string/jumbo v0, "com.taobao.accs.internal.ACCSManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhz;

    sput-object v0, Lcom/taobao/accs/ACCSManager;->accsManager:Ljhz;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 243
    :catch_1
    move-exception v0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_7
    sget-object v0, Lcom/taobao/accs/ACCSManager;->accsManager:Ljhz;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v0, :cond_1

    .line 241
    :try_start_8
    const-string/jumbo v0, "com.taobao.accs.internal.ACCSManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhz;

    sput-object v0, Lcom/taobao/accs/ACCSManager;->accsManager:Ljhz;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 243
    :cond_1
    :goto_1
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 232
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    .line 243
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public static getUserUnit(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0}, Ljhz;->getUserUnit()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChannelError(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorcode"    # I

    .prologue
    .line 188
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p1}, Ljhz;->isChannelError(I)Z

    move-result v0

    return v0
.end method

.method public static isNetworkReachable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0}, Ljhz;->isNetworkReachable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static registerDataListener(Landroid/content/Context;Ljava/lang/String;Ljig;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "listener"    # Ljig;

    .prologue
    .line 215
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    const-string/jumbo v0, "ACCSManager"

    const-string/jumbo v1, "getManagerImpl null, return"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Ljhz;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Ljig;)V

    goto :goto_0
.end method

.method public static registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "serviceClassName"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Ljhz;->registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljhz;->sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "dataId"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Ljhz;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "dataId"    # Ljava/lang/String;
    .param p5, "target"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Ljhz;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "dataId"    # Ljava/lang/String;
    .param p5, "target"    # Ljava/lang/String;
    .param p6, "host"    # Ljava/net/URL;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Ljhz;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "response"    # Lcom/taobao/accs/ACCSManager$AccsRequest;
    .param p2, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Ljhz;->sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    .prologue
    .line 91
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljhz;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "request"    # [B
    .param p4, "dataId"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/ACCSManager;->sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "request"    # [B
    .param p4, "dataId"    # Ljava/lang/String;
    .param p5, "target"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Ljhz;->sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "request"    # [B
    .param p4, "dataId"    # Ljava/lang/String;
    .param p5, "target"    # Ljava/lang/String;
    .param p6, "host"    # Ljava/net/URL;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Ljhz;->sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setLoginInfoImpl(Landroid/content/Context;Ljic;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "loginInfoImpl"    # Ljic;

    .prologue
    .line 144
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljhz;->setLoginInfo(Landroid/content/Context;Ljic;)V

    .line 145
    return-void
.end method

.method public static setMode(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 127
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljhz;->setMode(Landroid/content/Context;I)V

    .line 128
    return-void
.end method

.method public static setProxy(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 131
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Ljhz;->setProxy(Landroid/content/Context;Ljava/lang/String;I)V

    .line 132
    return-void
.end method

.method public static setServiceListener(Landroid/content/Context;Ljava/lang/String;Ljie;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "receiver"    # Ljie;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    return-void
.end method

.method public static startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;
    .param p3, "ttid"    # Ljava/lang/String;
    .param p4, "appCallback"    # Ljia;

    .prologue
    .line 135
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Ljhz;->startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V

    .line 136
    return-void
.end method

.method public static startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljia;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "ttid"    # Ljava/lang/String;
    .param p3, "appCallback"    # Ljia;

    .prologue
    .line 139
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    const-string/jumbo v3, "accs"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Ljhz;->startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V

    .line 140
    return-void
.end method

.method public static unRegisterDataListener(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljhz;->unRegisterDataListener(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public static unbindApp(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    const-string/jumbo v0, "ACCSManager"

    const-string/jumbo v1, "unbindApp"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0}, Ljhz;->unbindApp(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public static unbindService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljhz;->unbindService(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static unbindUser(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0}, Ljhz;->unbindUser(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public static unregisterService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljhz;->unRegisterSerivce(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    return-void
.end method
