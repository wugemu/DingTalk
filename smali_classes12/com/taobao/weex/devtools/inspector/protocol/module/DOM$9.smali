.class Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->getBoxModel(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

.field final synthetic val$model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

.field final synthetic val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;

    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

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
    .line 322
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;->nodeId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getElementForNodeId(I)Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "elementForNodeId":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to get style of an element that does not exist, nodeid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;->nodeId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    .line 447
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;

    invoke-direct {v2, p0, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getElementStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    goto :goto_0
.end method
