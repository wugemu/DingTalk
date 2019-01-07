.class Lcom/taobao/weex/devtools/inspector/elements/Document$4;
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
    .line 458
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$4;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$4;->val$docUpdate:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

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
    .line 462
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$4;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->containsObject(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$4;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$100(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v2

    .line 467
    .local v2, "oldElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-eqz v2, :cond_0

    .line 471
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$4;->val$docUpdate:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    invoke-virtual {v4, p1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v0

    .line 473
    .local v0, "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    iget-object v4, v0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    iget-object v5, v2, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-eq v4, v5, :cond_0

    .line 474
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$4;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v4

    iget-object v5, v2, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    .line 475
    .local v3, "parentNodeId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$4;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 476
    .local v1, "nodeId":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 477
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$4;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$700(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->onChildNodeRemoved(II)V

    goto :goto_0
.end method
