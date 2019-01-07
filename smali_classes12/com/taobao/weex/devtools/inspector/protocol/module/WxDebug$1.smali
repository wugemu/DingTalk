.class Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$1;
.super Ljava/lang/Object;
.source "WxDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;->callNative(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$instance:Ljava/lang/String;

.field final synthetic val$tasks:[B


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$1;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$1;->val$instance:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$1;->val$tasks:[B

    iput-object p4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$1;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    invoke-static {}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getInstance()Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getJsFunctions()Lcom/taobao/weex/common/IWXJsFunctions;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$1;->val$instance:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$1;->val$tasks:[B

    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$1;->val$callback:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/weex/common/IWXJsFunctions;->jsHandleCallNative(Ljava/lang/String;[BLjava/lang/String;)V

    .line 121
    return-void
.end method
