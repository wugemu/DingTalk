.class Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$10;
.super Ljava/lang/Object;
.source "WxDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;->callMoveElement(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;

.field final synthetic val$index_str:Ljava/lang/String;

.field final synthetic val$instanceInd:Ljava/lang/String;

.field final synthetic val$parentRef:Ljava/lang/String;

.field final synthetic val$ref:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$10;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$10;->val$instanceInd:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$10;->val$ref:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$10;->val$parentRef:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$10;->val$index_str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    invoke-static {}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getInstance()Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getJsFunctions()Lcom/taobao/weex/common/IWXJsFunctions;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$10;->val$instanceInd:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$10;->val$ref:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$10;->val$parentRef:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$10;->val$index_str:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/IWXJsFunctions;->jsFunctionCallMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method
