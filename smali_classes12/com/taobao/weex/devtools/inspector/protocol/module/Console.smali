.class public Lcom/taobao/weex/devtools/inspector/protocol/module/Console;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/protocol/module/Console$CallFrame;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageAddedRequest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public disable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/console/ConsolePeerManager;->getOrCreateInstance()Lcom/taobao/weex/devtools/inspector/console/ConsolePeerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/console/ConsolePeerManager;->removePeer(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V

    .line 35
    return-void
.end method

.method public enable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/console/ConsolePeerManager;->getOrCreateInstance()Lcom/taobao/weex/devtools/inspector/console/ConsolePeerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/console/ConsolePeerManager;->addPeer(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)Z

    .line 30
    return-void
.end method
