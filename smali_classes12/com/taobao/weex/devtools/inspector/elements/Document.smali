.class public final Lcom/taobao/weex/devtools/inspector/elements/Document;
.super Lcom/taobao/weex/devtools/inspector/helper/ThreadBoundProxy;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;,
        Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;,
        Lcom/taobao/weex/devtools/inspector/elements/Document$DocumentObjectIdMapper;,
        Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;,
        Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;,
        Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;
    }
.end annotation


# instance fields
.field private mCachedAttributeAccumulator:Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;

.field private mCachedChildEventingList:Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;

.field private mCachedChildrenAccumulator:Lcom/taobao/weex/devtools/common/ArrayListAccumulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/devtools/common/ArrayListAccumulator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedUpdateQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

.field private final mFactory:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;

.field private final mObjectIdMapper:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

.field private mReferenceCounter:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mShadowDocument:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

.field private mUpdateListeners:Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;)V
    .locals 2
    .param p1, "factory"    # Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/helper/ThreadBoundProxy;-><init>(Lcom/taobao/weex/devtools/common/ThreadBound;)V

    .line 55
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mFactory:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;

    .line 56
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Document$DocumentObjectIdMapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document$DocumentObjectIdMapper;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/Document$1;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mObjectIdMapper:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mReferenceCounter:I

    .line 58
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mUpdateListeners:Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    .line 59
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedUpdateQueue:Ljava/util/Queue;

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mShadowDocument:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;Ljava/util/List;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/taobao/weex/devtools/common/Accumulator;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->updateListenerChildren(Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;Ljava/util/List;Lcom/taobao/weex/devtools/common/Accumulator;)V

    return-void
.end method

.method static synthetic access$102(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;
    .param p1, "x1"    # Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mShadowDocument:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;
    .param p1, "x1"    # Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->releaseChildEventingList(Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/taobao/weex/devtools/inspector/elements/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->updateTree()V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    return-object v0
.end method

.method static synthetic access$202(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;
    .param p1, "x1"    # Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    return-object p1
.end method

.method static synthetic access$300(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->createShadowDocumentUpdate()Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mObjectIdMapper:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mUpdateListeners:Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/taobao/weex/devtools/inspector/elements/Document;Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/DocumentView;)Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lcom/taobao/weex/devtools/inspector/elements/DocumentView;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->acquireChildEventingList(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/DocumentView;)Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;

    move-result-object v0

    return-object v0
.end method

.method private acquireCachedAttributeAccumulator()Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedAttributeAccumulator:Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;

    .line 323
    .local v0, "accumulator":Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;
    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;

    .end local v0    # "accumulator":Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;
    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;-><init>()V

    .line 327
    .restart local v0    # "accumulator":Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedChildrenAccumulator:Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    .line 329
    return-object v0
.end method

.method private acquireChildEventingList(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/DocumentView;)Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;
    .locals 2
    .param p1, "parentElement"    # Ljava/lang/Object;
    .param p2, "documentView"    # Lcom/taobao/weex/devtools/inspector/elements/DocumentView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedChildEventingList:Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;

    .line 303
    .local v0, "childEventingList":Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;
    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;

    .end local v0    # "childEventingList":Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;
    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/Document$1;)V

    .line 307
    .restart local v0    # "childEventingList":Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;
    :cond_0
    iput-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedChildEventingList:Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;

    .line 309
    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->acquire(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/DocumentView;)V

    .line 310
    return-object v0
.end method

.method private acquireChildrenAccumulator()Lcom/taobao/weex/devtools/common/ArrayListAccumulator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/weex/devtools/common/ArrayListAccumulator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 341
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedChildrenAccumulator:Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    .line 342
    .local v0, "accumulator":Lcom/taobao/weex/devtools/common/ArrayListAccumulator;, "Lcom/taobao/weex/devtools/common/ArrayListAccumulator<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    .end local v0    # "accumulator":Lcom/taobao/weex/devtools/common/ArrayListAccumulator;, "Lcom/taobao/weex/devtools/common/ArrayListAccumulator<Ljava/lang/Object;>;"
    invoke-direct {v0}, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;-><init>()V

    .line 345
    .restart local v0    # "accumulator":Lcom/taobao/weex/devtools/common/ArrayListAccumulator;, "Lcom/taobao/weex/devtools/common/ArrayListAccumulator<Ljava/lang/Object;>;"
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedChildrenAccumulator:Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    .line 346
    return-object v0
.end method

.method private applyDocumentUpdate(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;)V
    .locals 1
    .param p1, "docUpdate"    # Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    .prologue
    .line 429
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Document$3;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$3;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->getGarbageElements(Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 458
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Document$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$4;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->getChangedElements(Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 485
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Document$5;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$5;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->getChangedElements(Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 544
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->commit()V

    .line 545
    return-void
.end method

.method private cleanUp()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    new-instance v1, Lcom/taobao/weex/devtools/inspector/elements/Document$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/inspector/elements/Document$2;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->postAndWait(Ljava/lang/Runnable;)V

    .line 102
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mUpdateListeners:Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->clear()V

    .line 103
    return-void
.end method

.method private createShadowDocumentUpdate()Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 359
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    invoke-interface {v7}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->getRootElement()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mShadowDocument:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-virtual {v8}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->getRootElement()Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 360
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->acquireChildrenAccumulator()Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    move-result-object v1

    .line 365
    .local v1, "childrenAccumulator":Lcom/taobao/weex/devtools/common/ArrayListAccumulator;, "Lcom/taobao/weex/devtools/common/ArrayListAccumulator<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mShadowDocument:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-virtual {v7}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->beginUpdate()Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;

    move-result-object v6

    .line 366
    .local v6, "updateBuilder":Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedUpdateQueue:Ljava/util/Queue;

    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    invoke-interface {v8}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->getRootElement()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 368
    :goto_0
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedUpdateQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 369
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedUpdateQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    .line 370
    .local v3, "element":Ljava/lang/Object;
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    invoke-interface {v7, v3}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->getNodeDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;

    move-result-object v2

    .line 371
    .local v2, "descriptor":Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mObjectIdMapper:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    invoke-virtual {v7, v3}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->putObject(Ljava/lang/Object;)I

    .line 372
    invoke-interface {v2, v3, v1}, Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;->getChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 374
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v1}, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 375
    invoke-virtual {v1, v4}, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 376
    .local v0, "child":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 377
    iget-object v7, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedUpdateQueue:Ljava/util/Queue;

    invoke-interface {v7, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 374
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 382
    :cond_1
    const-string/jumbo v7, "%s.getChildren() emitted a null child at position %s for element %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 384
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 385
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    .line 382
    invoke-static {v7, v8}, Lcom/taobao/weex/devtools/common/LogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    invoke-virtual {v1, v4}, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;->remove(I)Ljava/lang/Object;

    .line 389
    add-int/lit8 v4, v4, -0x1

    .line 390
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 394
    .end local v0    # "child":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v6, v3, v1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->setElementChildren(Ljava/lang/Object;Ljava/util/List;)V

    .line 395
    invoke-virtual {v1}, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;->clear()V

    goto :goto_0

    .line 398
    .end local v2    # "descriptor":Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;
    .end local v3    # "element":Ljava/lang/Object;
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_3
    invoke-direct {p0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->releaseChildrenAccumulator(Lcom/taobao/weex/devtools/common/ArrayListAccumulator;)V

    .line 400
    invoke-virtual {v6}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->build()Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    move-result-object v7

    return-object v7
.end method

.method private doesElementMatch(Ljava/lang/Object;II)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "x"    # I
    .param p3, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->isNativeMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 237
    check-cast v0, Landroid/view/View;

    .line 245
    .end local p1    # "element":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p2, p3, v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->isPointInsideView(IILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 240
    .restart local p1    # "element":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v1, :cond_0

    .line 241
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    .end local p1    # "element":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private doesElementMatch(Ljava/lang/Object;Ljava/util/regex/Pattern;)Z
    .locals 5
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "queryPattern"    # Ljava/util/regex/Pattern;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->acquireCachedAttributeAccumulator()Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;

    move-result-object v1

    .line 283
    .local v1, "accumulator":Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    invoke-interface {v4, p1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->getNodeDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;

    move-result-object v2

    .line 285
    .local v2, "descriptor":Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;
    invoke-interface {v2, p1, v1}, Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;->getAttributes(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V

    .line 287
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 288
    invoke-virtual {v1, v3}, Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    invoke-direct {p0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->releaseCachedAttributeAccumulator(Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;)V

    .line 290
    const/4 v4, 0x1

    .line 295
    :goto_1
    return v4

    .line 287
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 294
    :cond_1
    invoke-direct {p0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->releaseCachedAttributeAccumulator(Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;)V

    .line 295
    invoke-interface {v2, p1}, Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;->getNodeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    goto :goto_1
.end method

.method private findMatches(Ljava/lang/Object;IILcom/taobao/weex/devtools/common/Accumulator;Ljava/lang/Boolean;)V
    .locals 9
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p5, "found"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    .local p4, "matchedIds":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mShadowDocument:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v7

    .line 221
    .local v7, "info":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    iget-object v0, v7, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    add-int/lit8 v6, v8, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 222
    iget-object v0, v7, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 224
    .local v1, "childElement":Ljava/lang/Object;
    invoke-direct {p0, v1, p2, p3}, Lcom/taobao/weex/devtools/inspector/elements/Document;->doesElementMatch(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mObjectIdMapper:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 226
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    :cond_0
    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 229
    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/devtools/inspector/elements/Document;->findMatches(Ljava/lang/Object;IILcom/taobao/weex/devtools/common/Accumulator;Ljava/lang/Boolean;)V

    .line 221
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 231
    .end local v1    # "childElement":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private findMatches(Ljava/lang/Object;Ljava/util/regex/Pattern;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 5
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "queryPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/regex/Pattern;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    .local p3, "matchedIds":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mShadowDocument:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-virtual {v4, p1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v2

    .line 270
    .local v2, "info":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, v2, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 271
    iget-object v4, v2, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "childElement":Ljava/lang/Object;
    invoke-direct {p0, v0, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->doesElementMatch(Ljava/lang/Object;Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mObjectIdMapper:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    invoke-virtual {v4, v0}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 277
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/taobao/weex/devtools/inspector/elements/Document;->findMatches(Ljava/lang/Object;Ljava/util/regex/Pattern;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "childElement":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mFactory:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;->create()Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    new-instance v1, Lcom/taobao/weex/devtools/inspector/elements/Document$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/inspector/elements/Document$1;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->postAndWait(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public static isPointInsideView(IILandroid/view/View;)Z
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 249
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 250
    .local v0, "location":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 251
    aget v1, v0, v4

    .line 252
    .local v1, "viewX":I
    aget v2, v0, v3

    .line 255
    .local v2, "viewY":I
    if-le p0, v1, :cond_0

    if-le p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    if-ge p0, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    if-ge p1, v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private releaseCachedAttributeAccumulator(Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;)V
    .locals 1
    .param p1, "accumulator"    # Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;->clear()V

    .line 335
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedAttributeAccumulator:Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;

    if-nez v0, :cond_0

    .line 336
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedAttributeAccumulator:Lcom/taobao/weex/devtools/inspector/elements/Document$AttributeListAccumulator;

    .line 338
    :cond_0
    return-void
.end method

.method private releaseChildEventingList(Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;)V
    .locals 1
    .param p1, "childEventingList"    # Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;

    .prologue
    .line 314
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->release()V

    .line 315
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedChildEventingList:Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;

    if-nez v0, :cond_0

    .line 316
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedChildEventingList:Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;

    .line 318
    :cond_0
    return-void
.end method

.method private releaseChildrenAccumulator(Lcom/taobao/weex/devtools/common/ArrayListAccumulator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/devtools/common/ArrayListAccumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "accumulator":Lcom/taobao/weex/devtools/common/ArrayListAccumulator;, "Lcom/taobao/weex/devtools/common/ArrayListAccumulator<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/common/ArrayListAccumulator;->clear()V

    .line 351
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedChildrenAccumulator:Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    if-nez v0, :cond_0

    .line 352
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mCachedChildrenAccumulator:Lcom/taobao/weex/devtools/common/ArrayListAccumulator;

    .line 354
    :cond_0
    return-void
.end method

.method private static updateListenerChildren(Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;Ljava/util/List;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 5
    .param p0, "listenerChildren"    # Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, "newChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "insertedElements":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 552
    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->size()I

    move-result v4

    if-gt v0, v4, :cond_4

    .line 554
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->size()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 555
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v0, v4, :cond_4

    .line 559
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 560
    .local v2, "newElement":Ljava/lang/Object;
    invoke-virtual {p0, v0, v2, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->addWithEvent(ILjava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 561
    add-int/lit8 v0, v0, 0x1

    .line 562
    goto :goto_0

    .line 566
    .end local v2    # "newElement":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 567
    invoke-virtual {p0, v0}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->removeWithEvent(I)V

    goto :goto_0

    .line 571
    :cond_1
    invoke-virtual {p0, v0}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 572
    .local v1, "listenerElement":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 575
    .restart local v2    # "newElement":Ljava/lang/Object;
    if-ne v1, v2, :cond_2

    .line 576
    add-int/lit8 v0, v0, 0x1

    .line 577
    goto :goto_0

    .line 580
    :cond_2
    invoke-virtual {p0, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 581
    .local v3, "newElementListenerIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 582
    invoke-virtual {p0, v0, v2, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->addWithEvent(ILjava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 583
    add-int/lit8 v0, v0, 0x1

    .line 584
    goto :goto_0

    .line 593
    :cond_3
    invoke-virtual {p0, v3}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->removeWithEvent(I)V

    .line 594
    invoke-virtual {p0, v0, v2, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document$ChildEventingList;->addWithEvent(ILjava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 596
    add-int/lit8 v0, v0, 0x1

    .line 597
    goto :goto_0

    .line 598
    .end local v1    # "listenerElement":Ljava/lang/Object;
    .end local v2    # "newElement":Ljava/lang/Object;
    .end local v3    # "newElementListenerIndex":I
    :cond_4
    return-void
.end method

.method private updateTree()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 404
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 406
    .local v4, "startTimeMs":J
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->createShadowDocumentUpdate()Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    move-result-object v2

    .line 407
    .local v2, "docUpdate":Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;
    invoke-virtual {v2}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->isEmpty()Z

    move-result v3

    .line 408
    .local v3, "isEmpty":Z
    if-eqz v3, :cond_0

    .line 409
    invoke-virtual {v2}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->abandon()V

    .line 414
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 415
    .local v0, "deltaMs":J
    const-string/jumbo v7, "Document.updateTree() completed in %s ms%s"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 417
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    const-string/jumbo v6, " (no changes)"

    :goto_1
    aput-object v6, v8, v9

    .line 415
    invoke-static {v7, v8}, Lcom/taobao/weex/devtools/common/LogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    return-void

    .line 411
    .end local v0    # "deltaMs":J
    :cond_0
    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->applyDocumentUpdate(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;)V

    goto :goto_0

    .line 417
    .restart local v0    # "deltaMs":J
    :cond_1
    const-string/jumbo v6, ""

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized addRef()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mReferenceCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mReferenceCounter:I

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final addUpdateListener(Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mUpdateListeners:Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->add(Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;)V

    .line 107
    return-void
.end method

.method public final findMatchingElements(IILcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 20
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p3, "matchedIds":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    invoke-interface {v1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->getRootElement()Ljava/lang/Object;

    move-result-object v17

    .line 185
    .local v17, "rootElement":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mShadowDocument:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v15

    .line 186
    .local v15, "info":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-eqz v15, :cond_3

    .line 187
    iget-object v1, v15, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v19

    .local v19, "size":I
    add-int/lit8 v14, v19, -0x1

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_3

    .line 188
    iget-object v1, v15, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 189
    .local v8, "childElement":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 190
    .local v6, "found":Ljava/lang/Boolean;
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->isNativeMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    instance-of v1, v8, Landroid/app/Application;

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, v15, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v18

    .local v18, "s":I
    add-int/lit8 v16, v18, -0x1

    .local v16, "j":I
    :goto_1
    if-ltz v16, :cond_2

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mShadowDocument:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-virtual {v1, v8}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v13

    .line 194
    .local v13, "childInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-eqz v13, :cond_0

    .line 195
    iget-object v1, v13, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 196
    .local v2, "child":Ljava/lang/Object;
    instance-of v1, v2, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    .line 197
    invoke-direct/range {v1 .. v6}, Lcom/taobao/weex/devtools/inspector/elements/Document;->findMatches(Ljava/lang/Object;IILcom/taobao/weex/devtools/common/Accumulator;Ljava/lang/Boolean;)V

    .line 198
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    .end local v2    # "child":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .line 206
    .end local v13    # "childInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    .end local v16    # "j":I
    .end local v18    # "s":I
    :cond_1
    instance-of v1, v8, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_2

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object v12, v6

    .line 207
    invoke-direct/range {v7 .. v12}, Lcom/taobao/weex/devtools/inspector/elements/Document;->findMatches(Ljava/lang/Object;IILcom/taobao/weex/devtools/common/Accumulator;Ljava/lang/Boolean;)V

    .line 208
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 187
    :cond_2
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 217
    .end local v6    # "found":Ljava/lang/Boolean;
    .end local v8    # "childElement":Ljava/lang/Object;
    .end local v14    # "i":I
    .end local v19    # "size":I
    :cond_3
    return-void
.end method

.method public final findMatchingElements(Ljava/lang/String;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    .local p2, "matchedIds":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 261
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 262
    .local v0, "queryPattern":Ljava/util/regex/Pattern;
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    invoke-interface {v2}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->getRootElement()Ljava/lang/Object;

    move-result-object v1

    .line 264
    .local v1, "rootElement":Ljava/lang/Object;
    invoke-direct {p0, v1, v0, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->findMatches(Ljava/lang/Object;Ljava/util/regex/Pattern;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 265
    return-void
.end method

.method public final getDocumentView()Lcom/taobao/weex/devtools/inspector/elements/DocumentView;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 158
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mShadowDocument:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    return-object v0
.end method

.method public final getElementForNodeId(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mObjectIdMapper:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->getObjectForId(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getElementStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "styleAccumulator"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->getNodeDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;

    move-result-object v0

    .line 153
    .local v0, "nodeDescriptor":Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;
    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;->getStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    .line 154
    return-void
.end method

.method public final getNodeDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 115
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->getNodeDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNodeIdForElement(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mObjectIdMapper:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->getIdForObject(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getRootElement()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 164
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    invoke-interface {v1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->getRootElement()Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, "rootElement":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 168
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mShadowDocument:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-virtual {v1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->getRootElement()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 175
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 178
    :cond_1
    return-object v0
.end method

.method public final hideHighlight()V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->hideHighlight()V

    .line 126
    return-void
.end method

.method public final highlightElement(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "color"    # I

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 120
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->highlightElement(Ljava/lang/Object;I)V

    .line 121
    return-void
.end method

.method public final declared-synchronized release()V
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mReferenceCounter:I

    if-lez v0, :cond_0

    .line 70
    iget v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mReferenceCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mReferenceCounter:I

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->cleanUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final removeUpdateListener(Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mUpdateListeners:Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->remove(Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;)V

    .line 111
    return-void
.end method

.method public final setAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 147
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->setAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public final setInspectModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 130
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->setInspectModeEnabled(Z)V

    .line 131
    return-void
.end method
