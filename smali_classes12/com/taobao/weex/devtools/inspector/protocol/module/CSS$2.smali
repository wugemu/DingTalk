.class Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;
.super Ljava/lang/Object;
.source "CSS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->getMatchedStylesForNode(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

.field final synthetic val$localMatch:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;

.field final synthetic val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeRequest;

.field final synthetic val$virtualMatch:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeRequest;Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeRequest;

    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;->val$localMatch:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;

    iput-object p4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;->val$virtualMatch:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$RuleMatch;

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
    .line 162
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->access$200(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeRequest;

    iget v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeRequest;->nodeId:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getElementForNodeId(I)Ljava/lang/Object;

    move-result-object v0

    .line 164
    .local v0, "elementForNodeId":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to get style of an element that does not exist, nodeid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeRequest;

    iget v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$GetMatchedStylesForNodeRequest;->nodeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;->access$200(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2$1;

    invoke-direct {v2, p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2$1;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/CSS$2;)V

    invoke-virtual {v1, v0, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getElementStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    goto :goto_0
.end method
