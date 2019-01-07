.class Lcom/taobao/weex/devtools/inspector/elements/Document$5;
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
.field private insertedElements:Lcom/taobao/weex/devtools/common/Accumulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final listenerInsertedElements:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

.field final synthetic val$docUpdate:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;)V
    .locals 1
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->val$docUpdate:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->listenerInsertedElements:Ljava/util/HashSet;

    .line 488
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Document$5$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/inspector/elements/Document$5$1;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document$5;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->insertedElements:Lcom/taobao/weex/devtools/common/Accumulator;

    return-void
.end method

.method static synthetic access$800(Lcom/taobao/weex/devtools/inspector/elements/Document$5;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document$5;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->listenerInsertedElements:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public store(Ljava/lang/Object;)V
    .locals 11
    .param p1, "element"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 503
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v9}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->containsObject(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->listenerInsertedElements:Ljava/util/HashSet;

    invoke-virtual {v9, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 514
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v9}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$100(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v8

    .line 515
    .local v8, "oldElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->val$docUpdate:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    invoke-virtual {v9, p1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v6

    .line 517
    .local v6, "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-eqz v8, :cond_4

    iget-object v7, v8, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    .line 521
    .local v7, "oldChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    iget-object v5, v6, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    .line 525
    .local v5, "newChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    iget-object v10, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->val$docUpdate:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    invoke-static {v9, p1, v10}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$900(Lcom/taobao/weex/devtools/inspector/elements/Document;Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/DocumentView;)Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;

    move-result-object v3

    .line 526
    .local v3, "listenerChildren":Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 527
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 528
    .local v1, "childElement":Ljava/lang/Object;
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v9}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->containsObject(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 529
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->val$docUpdate:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    invoke-virtual {v9, v1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v4

    .line 530
    .local v4, "newChildElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-eqz v4, :cond_2

    iget-object v9, v4, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-ne v9, p1, :cond_3

    .line 534
    :cond_2
    invoke-virtual {v3, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->add(Ljava/lang/Object;)Z

    .line 526
    .end local v4    # "newChildElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 519
    .end local v0    # "N":I
    .end local v1    # "childElement":Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "listenerChildren":Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;
    .end local v5    # "newChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v7    # "oldChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_1

    .line 539
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "listenerChildren":Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;
    .restart local v5    # "newChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v7    # "oldChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->insertedElements:Lcom/taobao/weex/devtools/common/Accumulator;

    invoke-static {v3, v5, v9}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$1000(Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;Ljava/util/List;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 540
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v9, v3}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$1100(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;)V

    goto :goto_0
.end method
