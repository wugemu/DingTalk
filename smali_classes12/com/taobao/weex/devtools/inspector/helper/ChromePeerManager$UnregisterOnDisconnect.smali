.class Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;
.super Ljava/lang/Object;
.source "ChromePeerManager.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/jsonrpc/DisconnectReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnregisterOnDisconnect"
.end annotation


# instance fields
.field private final mPeer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 0
    .param p2, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;->this$0:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;->mPeer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    .line 142
    return-void
.end method


# virtual methods
.method public onDisconnect()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;->this$0:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager$UnregisterOnDisconnect;->mPeer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->removePeer(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V

    .line 147
    return-void
.end method
