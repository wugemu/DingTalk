.class public abstract Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;
.super Ljava/lang/Object;
.source "PeersRegisteredListener.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;


# instance fields
.field private mPeers:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;->mPeers:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public abstract onFirstPeerRegistered()V
.end method

.method public abstract onLastPeerUnregistered()V
.end method

.method protected onPeerAdded(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 35
    return-void
.end method

.method public final onPeerRegistered(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 2
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;->mPeers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;->onFirstPeerRegistered()V

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;->onPeerAdded(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V

    .line 25
    return-void
.end method

.method protected onPeerRemoved(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 36
    return-void
.end method

.method public final onPeerUnregistered(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 1
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;->mPeers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;->onLastPeerUnregistered()V

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;->onPeerRemoved(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V

    .line 33
    return-void
.end method
