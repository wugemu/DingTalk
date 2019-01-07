.class final Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$PeerManagerListener;
.super Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;
.source "CSS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PeerManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$PeerManagerListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;
    .param p2, "x1"    # Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$PeerManagerListener;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;)V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized onFirstPeerRegistered()V
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$PeerManagerListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->access$200(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->addRef()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized onLastPeerUnregistered()V
    .locals 1

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$PeerManagerListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->access$200(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
