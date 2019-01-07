.class Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$7;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->performSearch(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

.field final synthetic val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchRequest;

.field final synthetic val$resultNodeIds:Lcom/taobao/weex/devtools/common/ArrayListAccumulator;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchRequest;Lcom/taobao/weex/devtools/common/ArrayListAccumulator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$7;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$7;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchRequest;

    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$7;->val$resultNodeIds:Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$7;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$7;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchRequest;

    iget-object v1, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchRequest;->query:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$7;->val$resultNodeIds:Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->findMatchingElements(Ljava/lang/String;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 222
    return-void
.end method
