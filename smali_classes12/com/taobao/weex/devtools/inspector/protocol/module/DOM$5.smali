.class Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$5;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->setAttributesAsText(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

.field final synthetic val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetAttributesAsTextRequest;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetAttributesAsTextRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$5;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$5;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetAttributesAsTextRequest;

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
    .line 188
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$5;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$5;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetAttributesAsTextRequest;

    iget v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetAttributesAsTextRequest;->nodeId:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getElementForNodeId(I)Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "element":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$5;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$5;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetAttributesAsTextRequest;

    iget-object v2, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetAttributesAsTextRequest;->text:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->setAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method
