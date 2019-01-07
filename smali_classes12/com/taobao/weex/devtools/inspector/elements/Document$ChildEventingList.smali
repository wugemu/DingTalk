.class final Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;
.super Ljava/util/ArrayList;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChildEventingList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mDocumentView:Lcom/taobao/weex/devtools/inspector/elements/DocumentView;

.field private mParentElement:Ljava/lang/Object;

.field private mParentNodeId:I

.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V
    .locals 1

    .prologue
    .line 604
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mParentElement:Ljava/lang/Object;

    .line 606
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mParentNodeId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/Document$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;
    .param p2, "x1"    # Lcom/taobao/weex/devtools/inspector/elements/Document$1;

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V

    return-void
.end method


# virtual methods
.method public final acquire(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/DocumentView;)V
    .locals 2
    .param p1, "parentElement"    # Ljava/lang/Object;
    .param p2, "documentView"    # Lcom/taobao/weex/devtools/inspector/elements/DocumentView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 610
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mParentElement:Ljava/lang/Object;

    .line 612
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mParentElement:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 614
    :goto_0
    iput v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mParentNodeId:I

    .line 616
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mDocumentView:Lcom/taobao/weex/devtools/inspector/elements/DocumentView;

    .line 617
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    .line 614
    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mParentElement:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final addWithEvent(ILjava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 628
    .local p3, "insertedElements":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    const/4 v6, 0x0

    .line 630
    .local v6, "previousElement":Ljava/lang/Object;
    :goto_0
    if-nez v6, :cond_1

    const/4 v4, -0x1

    .line 634
    .local v4, "previousNodeId":I
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->add(ILjava/lang/Object;)V

    .line 636
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$700(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mDocumentView:Lcom/taobao/weex/devtools/inspector/elements/DocumentView;

    iget v3, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mParentNodeId:I

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->onChildNodeInserted(Lcom/taobao/weex/devtools/inspector/elements/DocumentView;Ljava/lang/Object;IILcom/taobao/weex/devtools/common/Accumulator;)V

    .line 642
    return-void

    .line 628
    .end local v4    # "previousNodeId":I
    .end local v6    # "previousElement":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 630
    .restart local v6    # "previousElement":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    .line 632
    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1
.end method

.method public final release()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 620
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->clear()V

    .line 622
    iput-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mParentElement:Ljava/lang/Object;

    .line 623
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mParentNodeId:I

    .line 624
    iput-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mDocumentView:Lcom/taobao/weex/devtools/inspector/elements/DocumentView;

    .line 625
    return-void
.end method

.method public final removeWithEvent(I)V
    .locals 5
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 645
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 646
    .local v0, "element":Ljava/lang/Object;
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 647
    .local v1, "nodeId":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 648
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$700(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->mParentNodeId:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->onChildNodeRemoved(II)V

    .line 650
    :cond_0
    return-void
.end method
