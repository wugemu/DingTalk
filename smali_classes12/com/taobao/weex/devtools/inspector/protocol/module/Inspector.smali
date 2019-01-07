.class public Lcom/taobao/weex/devtools/inspector/protocol/module/Inspector;
.super Ljava/lang/Object;
.source "Inspector.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public disable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method public enable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 24
    return-void
.end method
