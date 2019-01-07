.class Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$4;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Lcom/taobao/weex/devtools/common/UncheckedCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->resolveNode(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/devtools/common/UncheckedCallable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

.field final synthetic val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeRequest;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$4;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$4;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$4;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$4;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeRequest;

    iget v1, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeRequest;->nodeId:I

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getElementForNodeId(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
