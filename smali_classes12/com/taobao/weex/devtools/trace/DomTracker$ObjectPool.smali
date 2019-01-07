.class abstract Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;
.super Ljava/lang/Object;
.source "DomTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/trace/DomTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ObjectPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mPool:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .prologue
    .line 304
    .local p0, "this":Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;, "Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 306
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->mPool:Ljava/util/Deque;

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->mPool:Ljava/util/Deque;

    invoke-virtual {p0}, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->newObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method abstract newObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method obtain()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;, "Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->mPool:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->newObject()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->mPool:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method recycle(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;, "Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/trace/DomTracker$ObjectPool;->mPool:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 320
    return-void
.end method
