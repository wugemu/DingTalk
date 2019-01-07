.class final Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;
.super Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;
.source "DOM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PeerManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;
    .param p2, "x1"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized onFirstPeerRegistered()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 617
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->addRef()V

    .line 618
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$2100(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->addUpdateListener(Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    monitor-exit p0

    return-void

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized onLastPeerUnregistered()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$2200(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 624
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$2100(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->removeUpdateListener(Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;)V

    .line 625
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
