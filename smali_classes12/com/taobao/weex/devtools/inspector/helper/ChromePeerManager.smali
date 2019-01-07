.class public Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;
.super Ljava/lang/Object;
.source "ChromePeerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChromePeerManager"


# instance fields
.field private mListener:Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mReceivingPeers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;",
            "Lcom/taobao/weex/devtools/inspector/jsonrpc/DisconnectReceiver;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mReceivingPeersSnapshot:[Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private declared-synchronized getReceivingPeersSnapshot()[Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mReceivingPeersSnapshot:[Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    .line 107
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .line 106
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mReceivingPeersSnapshot:[Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mReceivingPeersSnapshot:[Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendMessageToPeers(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;)V
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/Object;
    .param p3, "callback"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->getReceivingPeersSnapshot()[Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    move-result-object v2

    .line 128
    .local v2, "peers":[Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 130
    .local v1, "peer":Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;)V
    :try_end_0
    .catch Ljava/nio/channels/NotYetConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/nio/channels/NotYetConnectedException;
    const-string/jumbo v5, "ChromePeerManager"

    const-string/jumbo v6, "Error delivering data to Chrome"

    invoke-static {v5, v6, v0}, Lcom/taobao/weex/devtools/common/LogRedirector;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 135
    .end local v0    # "e":Ljava/nio/channels/NotYetConnectedException;
    .end local v1    # "peer":Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addPeer(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)Z
    .locals 2
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x0

    .line 83
    :goto_0
    monitor-exit p0

    return v1

    .line 76
    :cond_0
    :try_start_1
    new-instance v0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;-><init>(Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V

    .line 77
    .local v0, "disconnectReceiver":Lcom/taobao/weex/devtools/inspector/jsonrpc/DisconnectReceiver;
    invoke-virtual {p1, v0}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;->registerDisconnectReceiver(Lcom/taobao/weex/devtools/inspector/jsonrpc/DisconnectReceiver;)V

    .line 78
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mReceivingPeersSnapshot:[Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .line 80
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mListener:Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mListener:Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;

    invoke-interface {v1, p1}, Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;->onPeerRegistered(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "disconnectReceiver":Lcom/taobao/weex/devtools/inspector/jsonrpc/DisconnectReceiver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasRegisteredPeers()Z
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invokeMethodOnPeers(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/Object;
    .param p3, "callback"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;

    .prologue
    .line 120
    invoke-static {p3}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->sendMessageToPeers(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;)V

    .line 122
    return-void
.end method

.method public declared-synchronized removePeer(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 1
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mReceivingPeers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mReceivingPeersSnapshot:[Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .line 94
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mListener:Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mListener:Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;->onPeerUnregistered(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/Object;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->sendMessageToPeers(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;)V

    .line 115
    return-void
.end method

.method public declared-synchronized setListener(Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->mListener:Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
