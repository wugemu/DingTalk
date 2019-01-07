.class public Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;
.super Ljava/lang/Object;
.source "H5RpcBlackList.java"


# static fields
.field private static instance:Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;


# instance fields
.field private blackList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcUpdateResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->blackList:Ljava/util/Map;

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->instance:Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->instance:Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    .line 26
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->instance:Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcUpdateResponse;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5RpcUpdateResponse"    # Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcUpdateResponse;

    .prologue
    .line 31
    monitor-enter p0

    if-nez p1, :cond_0

    .line 35
    :goto_0
    monitor-exit p0

    return-void

    .line 34
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->blackList:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 45
    monitor-enter p0

    if-nez p1, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->blackList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 38
    monitor-enter p0

    if-nez p1, :cond_0

    .line 42
    :goto_0
    monitor-exit p0

    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->blackList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
