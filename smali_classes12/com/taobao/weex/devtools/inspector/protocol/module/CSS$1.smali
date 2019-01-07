.class Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;
.super Ljava/lang/Object;
.source "CSS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->getComputedStyleForNode(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

.field final synthetic val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeRequest;

.field final synthetic val$result:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeRequest;Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeRequest;

    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;->val$result:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;

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
    .line 68
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->access$200(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeRequest;

    iget v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeRequest;->nodeId:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getElementForNodeId(I)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "element":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Tried to get the style of an element that does not exist, using nodeid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeRequest;

    iget v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeRequest;->nodeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/devtools/common/LogUtil;->e(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;->val$result:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetComputedStyleForNodeResult;->computedStyle:Ljava/util/List;

    invoke-static {}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->access$300()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->access$400(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;Ljava/util/List;Ljava/util/HashMap;)V

    .line 79
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->access$200(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1$1;

    invoke-direct {v2, p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1$1;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getElementStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    goto :goto_0
.end method
