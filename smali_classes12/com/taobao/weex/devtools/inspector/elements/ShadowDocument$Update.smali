.class public final Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;
.super Ljava/lang/Object;
.source "ShadowDocument.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/DocumentView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Update"
.end annotation


# instance fields
.field private final mElementToInfoChangesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRootElementChangesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;Ljava/util/Map;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p2, "elementToInfoChangesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;>;"
    .local p3, "rootElementChangesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->mElementToInfoChangesMap:Ljava/util/Map;

    .line 271
    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->mRootElementChangesSet:Ljava/util/Set;

    .line 272
    return-void
.end method

.method private removeSubTree(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 4
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    .local p1, "elementToInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    .line 369
    .local v1, "elementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, v1, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 371
    iget-object v3, v1, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->removeSubTree(Ljava/util/Map;Ljava/lang/Object;)V

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_0
    return-void
.end method


# virtual methods
.method public final abandon()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 343
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->access$200(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->access$202(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;Z)Z

    .line 348
    return-void
.end method

.method public final commit()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 351
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->access$200(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->access$000(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Ljava/util/IdentityHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->mElementToInfoChangesMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 360
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->mRootElementChangesSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 361
    .local v0, "element":Ljava/lang/Object;
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-static {v2}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->access$000(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Ljava/util/IdentityHashMap;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->removeSubTree(Ljava/util/Map;Ljava/lang/Object;)V

    goto :goto_0

    .line 364
    .end local v0    # "element":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->access$202(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;Z)Z

    .line 365
    return-void
.end method

.method public final getChangedElements(Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 297
    .local p1, "accumulator":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->mElementToInfoChangesMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "element":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    .end local v0    # "element":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->mElementToInfoChangesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    .line 290
    .local v0, "elementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-eqz v0, :cond_0

    .line 293
    .end local v0    # "elementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    :goto_0
    return-object v0

    .restart local v0    # "elementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->access$000(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Ljava/util/IdentityHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getGarbageElements(Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    .local p1, "accumulator":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    new-instance v7, Ljava/util/ArrayDeque;

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    .line 311
    .local v7, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->mRootElementChangesSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 312
    .local v1, "element":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v5

    .line 313
    .local v5, "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-static {v9}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->access$100(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Ljava/lang/Object;

    move-result-object v9

    if-eq v1, v9, :cond_0

    iget-object v9, v5, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-nez v9, :cond_0

    .line 314
    invoke-interface {v7, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v7, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    .end local v1    # "element":Ljava/lang/Object;
    .end local v5    # "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    :cond_1
    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 323
    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    .line 324
    .restart local v1    # "element":Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    .line 325
    .local v3, "expectedParent0":Ljava/lang/Object;
    if-ne v1, v3, :cond_2

    const/4 v2, 0x0

    .line 326
    .local v2, "expectedParent":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v5

    .line 328
    .restart local v5    # "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    iget-object v8, v5, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-ne v8, v2, :cond_1

    .line 329
    invoke-interface {p1, v1}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 331
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-virtual {v8, v1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->getElementInfo(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    move-result-object v6

    .line 332
    .local v6, "oldElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-eqz v6, :cond_1

    .line 333
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v8, v6, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_2
    if-ge v4, v0, :cond_1

    .line 334
    iget-object v8, v6, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-interface {v7, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v2    # "expectedParent":Ljava/lang/Object;
    .end local v4    # "i":I
    .end local v5    # "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    .end local v6    # "oldElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    :cond_2
    move-object v2, v3

    .line 325
    goto :goto_1

    .line 340
    .end local v1    # "element":Ljava/lang/Object;
    .end local v3    # "expectedParent0":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public final getRootElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->getRootElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isElementChanged(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->mElementToInfoChangesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->mElementToInfoChangesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
