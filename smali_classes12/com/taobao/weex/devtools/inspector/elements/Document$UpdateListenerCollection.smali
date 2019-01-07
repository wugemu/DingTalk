.class Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateListenerCollection"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mListenersSnapshot:[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V
    .locals 1

    .prologue
    .line 657
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListeners:Ljava/util/List;

    .line 659
    return-void
.end method

.method private getListenersSnapshot()[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 678
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListenersSnapshot:[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    .line 679
    .local v0, "listenersSnapshot":[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    if-eqz v0, :cond_0

    .line 685
    .end local v0    # "listenersSnapshot":[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    :goto_1
    return-object v0

    .line 682
    .restart local v0    # "listenersSnapshot":[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    :cond_0
    monitor-enter p0

    .line 683
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListenersSnapshot:[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    if-nez v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListeners:Ljava/util/List;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    iput-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListenersSnapshot:[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    .line 685
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListenersSnapshot:[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    .end local v0    # "listenersSnapshot":[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    monitor-exit p0

    goto :goto_1

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "listenersSnapshot":[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListenersSnapshot:[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    monitor-exit p0

    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListenersSnapshot:[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    monitor-exit p0

    return-void

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->getListenersSnapshot()[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 694
    .local v0, "listener":Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;->onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    .end local v0    # "listener":Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    :cond_0
    return-void
.end method

.method public onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->getListenersSnapshot()[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 701
    .local v0, "listener":Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;->onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 703
    .end local v0    # "listener":Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    :cond_0
    return-void
.end method

.method public onChildNodeInserted(Lcom/taobao/weex/devtools/inspector/elements/DocumentView;Ljava/lang/Object;IILcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 9
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

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 726
    .local p5, "insertedItems":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->getListenersSnapshot()[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    move-result-object v7

    array-length v8, v7

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .local v0, "listener":Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 727
    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;->onChildNodeInserted(Lcom/taobao/weex/devtools/inspector/elements/DocumentView;Ljava/lang/Object;IILcom/taobao/weex/devtools/common/Accumulator;)V

    .line 726
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 729
    .end local v0    # "listener":Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    :cond_0
    return-void
.end method

.method public onChildNodeRemoved(II)V
    .locals 4
    .param p1, "parentNodeId"    # I
    .param p2, "nodeId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->getListenersSnapshot()[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 715
    .local v0, "listener":Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;->onChildNodeRemoved(II)V

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    .end local v0    # "listener":Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    :cond_0
    return-void
.end method

.method public onInspectRequested(Ljava/lang/Object;)V
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->getListenersSnapshot()[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 708
    .local v0, "listener":Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;->onInspectRequested(Ljava/lang/Object;)V

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "listener":Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    :cond_0
    return-void
.end method

.method public declared-synchronized remove(Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;

    .prologue
    .line 667
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->mListenersSnapshot:[Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    monitor-exit p0

    return-void

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
