.class final Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DocumentUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;
    .param p2, "x1"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)V

    return-void
.end method


# virtual methods
.method public final onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 556
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeModifiedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeModifiedEvent;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    .line 557
    .local v0, "message":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeModifiedEvent;
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getNodeIdForElement(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeModifiedEvent;->nodeId:I

    .line 558
    iput-object p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeModifiedEvent;->name:Ljava/lang/String;

    .line 559
    iput-object p3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeModifiedEvent;->value:Ljava/lang/String;

    .line 560
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$1400(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    move-result-object v1

    const-string/jumbo v2, "DOM.onAttributeModified"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method public final onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 564
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeRemovedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeRemovedEvent;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    .line 565
    .local v0, "message":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeRemovedEvent;
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getNodeIdForElement(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeRemovedEvent;->nodeId:I

    .line 566
    iput-object p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeRemovedEvent;->name:Ljava/lang/String;

    .line 567
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$1400(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    move-result-object v1

    const-string/jumbo v2, "DOM.attributeRemoved"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    return-void
.end method

.method public final onChildNodeInserted(Lcom/taobao/weex/devtools/inspector/elements/DocumentView;Ljava/lang/Object;IILcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 3
    .param p1, "view"    # Lcom/taobao/weex/devtools/inspector/elements/DocumentView;
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "parentNodeId"    # I
    .param p4, "previousNodeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/devtools/inspector/elements/DocumentView;",
            "Ljava/lang/Object;",
            "II",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 602
    .local p5, "insertedElements":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$1900(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;

    move-result-object v0

    .line 604
    .local v0, "insertedEvent":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;
    iput p3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;->parentNodeId:I

    .line 605
    iput p4, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;->previousNodeId:I

    .line 606
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1, p2, p1, p5}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$400(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/DocumentView;Lcom/taobao/weex/devtools/common/Accumulator;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;->node:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;

    .line 608
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$1400(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    move-result-object v1

    const-string/jumbo v2, "DOM.childNodeInserted"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$2000(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;)V

    .line 611
    return-void
.end method

.method public final onChildNodeRemoved(II)V
    .locals 3
    .param p1, "parentNodeId"    # I
    .param p2, "nodeId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 587
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$1700(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;

    move-result-object v0

    .line 589
    .local v0, "removedEvent":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;
    iput p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;->parentNodeId:I

    .line 590
    iput p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;->nodeId:I

    .line 591
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$1400(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    move-result-object v1

    const-string/jumbo v2, "DOM.childNodeRemoved"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v1, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$1800(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;)V

    .line 594
    return-void
.end method

.method public final onInspectRequested(Ljava/lang/Object;)V
    .locals 5
    .param p1, "element"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 571
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getNodeIdForElement(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 572
    .local v1, "nodeId":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 573
    const-string/jumbo v2, "DocumentProvider.Listener.onInspectRequested() called for a non-mapped node: element=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/taobao/weex/devtools/common/LogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    :goto_0
    return-void

    .line 578
    :cond_0
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$InspectNodeRequestedEvent;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$InspectNodeRequestedEvent;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    .line 579
    .local v0, "message":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$InspectNodeRequestedEvent;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$InspectNodeRequestedEvent;->nodeId:I

    .line 580
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$1400(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    move-result-object v2

    const-string/jumbo v3, "DOM.inspectNodeRequested"

    invoke-virtual {v2, v3, v0}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
