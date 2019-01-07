.class Lcom/taobao/weex/devtools/inspector/elements/Document$3;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Lcom/taobao/weex/devtools/common/Accumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/elements/Document;->applyDocumentUpdate(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/devtools/common/Accumulator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

.field final synthetic val$docUpdate:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$3;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$3;->val$docUpdate:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public store(Ljava/lang/Object;)V
    .locals 7
    .param p1, "element"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 432
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$3;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->containsObject(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 433
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 436
    :cond_0
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$3;->val$docUpdate:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    invoke-virtual {v4, p1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v0

    .line 440
    .local v0, "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    iget-object v4, v0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 441
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$3;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$100(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v2

    .line 442
    .local v2, "oldElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$3;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v4

    iget-object v5, v2, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    .line 443
    .local v3, "parentNodeId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$3;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 444
    .local v1, "nodeId":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 445
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$3;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$700(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->onChildNodeRemoved(II)V

    .line 450
    .end local v1    # "nodeId":Ljava/lang/Integer;
    .end local v2    # "oldElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    .end local v3    # "parentNodeId":Ljava/lang/Integer;
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$3;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->removeObject(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 451
    return-void
.end method
