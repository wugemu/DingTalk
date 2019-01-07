.class public Lcom/taobao/weex/devtools/inspector/protocol/module/Debugger;
.super Ljava/lang/Object;
.source "Debugger.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public canSetScriptSource(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 2
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/SimpleBooleanResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/SimpleBooleanResult;-><init>(Z)V

    return-object v0
.end method

.method public disable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 29
    return-void
.end method

.method public enable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 25
    return-void
.end method

.method public setPauseOnExceptions(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 38
    return-void
.end method
