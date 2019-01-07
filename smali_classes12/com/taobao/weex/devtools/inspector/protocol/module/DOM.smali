.class public Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationResponse;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DiscardSearchResultsRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsResponse;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchResponse;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeResponse;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetAttributesAsTextRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$RGBAColor;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$InspectNodeRequestedEvent;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$HighlightConfig;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$HighlightNodeRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeRemovedEvent;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$AttributeModifiedEvent;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetDocumentResponse;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelResponse;
    }
.end annotation


# static fields
.field private static sNativeMode:Z


# instance fields
.field private mCachedChildNodeInsertedEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;

.field private mCachedChildNodeRemovedEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;

.field private final mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

.field private final mListener:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;

.field private final mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

.field private final mPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

.field private final mResultCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSearchResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->sNativeMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V
    .locals 3
    .param p1, "document"    # Lcom/taobao/weex/devtools/inspector/elements/Document;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/json/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    .line 66
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/elements/Document;

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mSearchResults:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mResultCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    new-instance v0, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    .line 71
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;

    invoke-direct {v1, p0, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PeerManagerListener;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->setListener(Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;)V

    .line 72
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;

    invoke-direct {v0, p0, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mListener:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;

    .line 73
    return-void
.end method

.method static synthetic access$1400(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->acquireChildNodeRemovedEvent()Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;
    .param p1, "x1"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->releaseChildNodeRemovedEvent(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->acquireChildNodeInsertedEvent()Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;
    .param p1, "x1"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->releaseChildNodeInsertedEvent(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mListener:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DocumentUpdateListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mSearchResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/DocumentView;Lcom/taobao/weex/devtools/common/Accumulator;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lcom/taobao/weex/devtools/inspector/elements/DocumentView;
    .param p3, "x3"    # Lcom/taobao/weex/devtools/common/Accumulator;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->createNodeForElement(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/DocumentView;Lcom/taobao/weex/devtools/common/Accumulator;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;

    move-result-object v0

    return-object v0
.end method

.method private acquireChildNodeInsertedEvent()Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 520
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mCachedChildNodeInsertedEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;

    .line 521
    .local v0, "childNodeInsertedEvent":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;
    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;

    .end local v0    # "childNodeInsertedEvent":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;
    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    .line 524
    .restart local v0    # "childNodeInsertedEvent":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;
    :cond_0
    iput-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mCachedChildNodeInsertedEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;

    .line 525
    return-object v0
.end method

.method private acquireChildNodeRemovedEvent()Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 538
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mCachedChildNodeRemovedEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;

    .line 539
    .local v0, "childNodeRemovedEvent":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;
    if-nez v0, :cond_0

    .line 540
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;

    .end local v0    # "childNodeRemovedEvent":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;
    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    .line 542
    .restart local v0    # "childNodeRemovedEvent":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;
    :cond_0
    iput-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mCachedChildNodeRemovedEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;

    .line 543
    return-object v0
.end method

.method private createNodeForElement(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/DocumentView;Lcom/taobao/weex/devtools/common/Accumulator;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;
    .locals 10
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "view"    # Lcom/taobao/weex/devtools/inspector/elements/DocumentView;
    .param p3    # Lcom/taobao/weex/devtools/common/Accumulator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/taobao/weex/devtools/inspector/elements/DocumentView;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 482
    .local p3, "processedElements":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    if-eqz p3, :cond_0

    .line 483
    invoke-interface {p3, p1}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 486
    :cond_0
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-virtual {v9, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getNodeDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;

    move-result-object v5

    .line 488
    .local v5, "descriptor":Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;
    new-instance v8, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    .line 489
    .local v8, "node":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-virtual {v9, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getNodeIdForElement(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;->nodeId:I

    .line 490
    invoke-interface {v5, p1}, Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;->getNodeType(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeType;

    move-result-object v9

    iput-object v9, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;->nodeType:Lcom/taobao/weex/devtools/inspector/elements/NodeType;

    .line 491
    invoke-interface {v5, p1}, Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;->getNodeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;->nodeName:Ljava/lang/String;

    .line 492
    invoke-interface {v5, p1}, Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;->getLocalName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;->localName:Ljava/lang/String;

    .line 493
    invoke-interface {v5, p1}, Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;->getNodeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;->nodeValue:Ljava/lang/String;

    .line 495
    new-instance v1, Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;

    invoke-direct {v1}, Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;-><init>()V

    .line 496
    .local v1, "accumulator":Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;
    invoke-interface {v5, p1, v1}, Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;->getAttributes(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V

    .line 499
    iput-object v1, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;->attributes:Ljava/util/List;

    .line 502
    invoke-interface {p2, p1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentView;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v6

    .line 503
    .local v6, "elementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    iget-object v9, v6, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 504
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 507
    .local v4, "childrenNodes":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;>;"
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v9, v6, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_1
    if-ge v7, v0, :cond_2

    .line 508
    iget-object v9, v6, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 509
    .local v2, "childElement":Ljava/lang/Object;
    invoke-direct {p0, v2, p2, p3}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->createNodeForElement(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/DocumentView;Lcom/taobao/weex/devtools/common/Accumulator;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;

    move-result-object v3

    .line 510
    .local v3, "childNode":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 504
    .end local v0    # "N":I
    .end local v2    # "childElement":Ljava/lang/Object;
    .end local v3    # "childNode":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;
    .end local v4    # "childrenNodes":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;>;"
    .end local v7    # "i":I
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v9, v6, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    .line 505
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 513
    .restart local v0    # "N":I
    .restart local v4    # "childrenNodes":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;>;"
    .restart local v7    # "i":I
    :cond_2
    iput-object v4, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;->children:Ljava/util/List;

    .line 514
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;->childNodeCount:Ljava/lang/Integer;

    .line 516
    return-object v8
.end method

.method public static isNativeMode()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->sNativeMode:Z

    return v0
.end method

.method private releaseChildNodeInsertedEvent(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;)V
    .locals 1
    .param p1, "childNodeInsertedEvent"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;

    .prologue
    const/4 v0, -0x1

    .line 529
    iput v0, p1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;->parentNodeId:I

    .line 530
    iput v0, p1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;->previousNodeId:I

    .line 531
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;->node:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;

    .line 532
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mCachedChildNodeInsertedEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;

    if-nez v0, :cond_0

    .line 533
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mCachedChildNodeInsertedEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeInsertedEvent;

    .line 535
    :cond_0
    return-void
.end method

.method private releaseChildNodeRemovedEvent(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;)V
    .locals 1
    .param p1, "childNodeRemovedEvent"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;

    .prologue
    const/4 v0, -0x1

    .line 547
    iput v0, p1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;->parentNodeId:I

    .line 548
    iput v0, p1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;->nodeId:I

    .line 549
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mCachedChildNodeRemovedEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;

    if-nez v0, :cond_0

    .line 550
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mCachedChildNodeRemovedEvent:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ChildNodeRemovedEvent;

    .line 552
    :cond_0
    return-void
.end method

.method public static setNativeMode(Z)V
    .locals 0
    .param p0, "isNativeMode"    # Z

    .prologue
    .line 76
    sput-boolean p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->sNativeMode:Z

    .line 77
    return-void
.end method


# virtual methods
.method public disable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->removePeer(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V

    .line 91
    return-void
.end method

.method public discardSearchResults(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 266
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DiscardSearchResultsRequest;

    invoke-virtual {v1, p2, v2}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DiscardSearchResultsRequest;

    .line 270
    .local v0, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DiscardSearchResultsRequest;
    iget-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DiscardSearchResultsRequest;->searchId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mSearchResults:Ljava/util/Map;

    iget-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$DiscardSearchResultsRequest;->searchId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    return-void
.end method

.method public enable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;->addPeer(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)Z

    .line 86
    return-void
.end method

.method public findViewByLocation(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    new-instance v0, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;-><init>()V

    .line 291
    .local v0, "resultNodeIds":Lcom/taobao/weex/devtools/common/ArrayListAccumulator;, "Lcom/taobao/weex/devtools/common/ArrayListAccumulator<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$8;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$8;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;IILcom/taobao/weex/devtools/common/ArrayListAccumulator;)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->postAndWait(Ljava/lang/Runnable;)V

    .line 297
    invoke-virtual {v0}, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 300
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBoxModel(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelResponse;
    .locals 6
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 307
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelResponse;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelResponse;-><init>()V

    .line 308
    .local v2, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelResponse;
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

    invoke-direct {v0, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    .line 309
    .local v0, "model":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v5, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;

    invoke-virtual {v4, p2, v5}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;

    .line 313
    .local v1, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;
    iget-object v4, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;->nodeId:Ljava/lang/Integer;

    if-nez v4, :cond_0

    move-object v2, v3

    .line 450
    .end local v2    # "response":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelResponse;
    :goto_0
    return-object v2

    .line 317
    .restart local v2    # "response":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelResponse;
    :cond_0
    iput-object v0, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelResponse;->model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

    .line 319
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    invoke-direct {v4, p0, v1, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetBoxModelRequest;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;)V

    invoke-virtual {v3, v4}, Lcom/taobao/weex/devtools/inspector/elements/Document;->postAndWait(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getDocument(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 3
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetDocumentResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetDocumentResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    .line 97
    .local v0, "result":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetDocumentResponse;
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;

    invoke-direct {v2, p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->postAndWait(Lcom/taobao/weex/devtools/common/UncheckedCallable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetDocumentResponse;->root:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$Node;

    .line 105
    return-object v0
.end method

.method public getNodeForLocation(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationResponse;
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    .line 278
    .local v1, "result":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationResponse;
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v3, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationRequest;

    invoke-virtual {v2, p2, v3}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationRequest;

    .line 281
    .local v0, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationRequest;
    iget v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationRequest;->x:I

    if-lez v2, :cond_0

    iget v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationRequest;->y:I

    if-lez v2, :cond_0

    .line 282
    iget v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationRequest;->x:I

    iget v3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationRequest;->y:I

    invoke-virtual {p0, v2, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->findViewByLocation(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetNodeForLocationResponse;->nodeId:Ljava/lang/Integer;

    .line 285
    :cond_0
    return-object v1
.end method

.method public getSearchResults(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsResponse;
    .locals 7
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 240
    iget-object v5, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v6, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsRequest;

    invoke-virtual {v5, p2, v6}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsRequest;

    .line 244
    .local v0, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsRequest;
    iget-object v5, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsRequest;->searchId:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 245
    const-string/jumbo v5, "searchId may not be null"

    invoke-static {v5}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    move-object v1, v4

    .line 261
    :goto_0
    return-object v1

    .line 249
    :cond_0
    iget-object v5, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mSearchResults:Ljava/util/Map;

    iget-object v6, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsRequest;->searchId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 251
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsRequest;->searchId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\" is not a valid reference to a search result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    move-object v1, v4

    .line 253
    goto :goto_0

    .line 256
    :cond_1
    iget v5, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsRequest;->fromIndex:I

    iget v6, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsRequest;->toIndex:I

    invoke-interface {v2, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 258
    .local v3, "resultsRange":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsResponse;

    invoke-direct {v1, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    .line 259
    .local v1, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsResponse;
    iput-object v3, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$GetSearchResultsResponse;->nodeIds:Ljava/util/List;

    goto :goto_0
.end method

.method public hideHighlight(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$3;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->postAndWait(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public highlightNode(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v3, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$HighlightNodeRequest;

    .line 111
    invoke-virtual {v2, p2, v3}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$HighlightNodeRequest;

    .line 112
    .local v1, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$HighlightNodeRequest;
    iget-object v2, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$HighlightNodeRequest;->nodeId:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 113
    const-string/jumbo v2, "DOM.highlightNode was not given a nodeId; JS objectId is not supported"

    invoke-static {v2}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v2, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$HighlightNodeRequest;->highlightConfig:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$HighlightConfig;

    iget-object v0, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$HighlightConfig;->contentColor:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$RGBAColor;

    .line 118
    .local v0, "contentColor":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$RGBAColor;
    if-nez v0, :cond_1

    .line 119
    const-string/jumbo v2, "DOM.highlightNode was not given a color to highlight with"

    invoke-static {v2}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    new-instance v3, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$2;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$HighlightNodeRequest;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$RGBAColor;)V

    invoke-virtual {v2, v3}, Lcom/taobao/weex/devtools/inspector/elements/Document;->postAndWait(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public performSearch(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchResponse;
    .locals 6
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v5, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchRequest;

    invoke-virtual {v4, p2, v5}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchRequest;

    .line 216
    .local v0, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchRequest;
    new-instance v2, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;-><init>()V

    .line 218
    .local v2, "resultNodeIds":Lcom/taobao/weex/devtools/common/ArrayListAccumulator;, "Lcom/taobao/weex/devtools/common/ArrayListAccumulator<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    new-instance v5, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$7;

    invoke-direct {v5, p0, v0, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$7;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchRequest;Lcom/taobao/weex/devtools/common/ArrayListAccumulator;)V

    invoke-virtual {v4, v5}, Lcom/taobao/weex/devtools/inspector/elements/Document;->postAndWait(Ljava/lang/Runnable;)V

    .line 227
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mResultCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "searchId":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mSearchResults:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchResponse;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    .line 232
    .local v1, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchResponse;
    iput-object v3, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchResponse;->searchId:Ljava/lang/String;

    .line 233
    invoke-virtual {v2}, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;->size()I

    move-result v4

    iput v4, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$PerformSearchResponse;->resultCount:I

    .line 235
    return-object v1
.end method

.method public resolveNode(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeResponse;
    .locals 11
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 147
    iget-object v5, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v6, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeRequest;

    invoke-virtual {v5, p2, v6}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeRequest;

    .line 149
    .local v3, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeRequest;
    iget-object v5, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    new-instance v6, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$4;

    invoke-direct {v6, p0, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$4;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeRequest;)V

    invoke-virtual {v5, v6}, Lcom/taobao/weex/devtools/inspector/elements/Document;->postAndWait(Lcom/taobao/weex/devtools/common/UncheckedCallable;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    .local v0, "element":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 157
    new-instance v5, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;

    new-instance v6, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;

    sget-object v7, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->INVALID_PARAMS:Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "No known nodeId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v3, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeRequest;->nodeId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v10}, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;)V

    throw v5

    .line 164
    :cond_0
    invoke-static {p1, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->mapObject(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Ljava/lang/Object;)I

    move-result v1

    .line 166
    .local v1, "mappedObjectId":I
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;-><init>()V

    .line 167
    .local v2, "remoteObject":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;
    sget-object v5, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;->OBJECT:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    iput-object v5, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    .line 168
    sget-object v5, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;->NODE:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;

    iput-object v5, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->subtype:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;

    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->className:Ljava/lang/String;

    .line 170
    iput-object v10, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->value:Ljava/lang/Object;

    .line 171
    iput-object v10, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->description:Ljava/lang/String;

    .line 172
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->objectId:Ljava/lang/String;

    .line 173
    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeResponse;

    invoke-direct {v4, v10}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$1;)V

    .line 174
    .local v4, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeResponse;
    iput-object v2, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$ResolveNodeResponse;->object:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    .line 176
    return-object v4
.end method

.method public setAttributesAsText(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetAttributesAsTextRequest;

    invoke-virtual {v1, p2, v2}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetAttributesAsTextRequest;

    .line 185
    .local v0, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetAttributesAsTextRequest;
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$5;

    invoke-direct {v2, p0, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$5;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetAttributesAsTextRequest;)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->postAndWait(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public setInspectModeEnabled(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;

    invoke-virtual {v1, p2, v2}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;

    .line 202
    .local v0, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->mDocument:Lcom/taobao/weex/devtools/inspector/elements/Document;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$6;

    invoke-direct {v2, p0, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$6;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->postAndWait(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method
