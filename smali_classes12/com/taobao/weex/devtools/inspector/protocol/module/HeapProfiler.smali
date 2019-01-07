.class public Lcom/taobao/weex/devtools/inspector/protocol/module/HeapProfiler;
.super Ljava/lang/Object;
.source "HeapProfiler.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/protocol/module/HeapProfiler$ProfileHeader;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/HeapProfiler$ProfileHeaderResponse;
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
.method public getProfileHeaders(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 2
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/HeapProfiler$ProfileHeaderResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/HeapProfiler$ProfileHeaderResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/HeapProfiler$1;)V

    .line 30
    .local v0, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/HeapProfiler$ProfileHeaderResponse;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/HeapProfiler$ProfileHeaderResponse;->headers:Ljava/util/List;

    .line 31
    return-object v0
.end method
