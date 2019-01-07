.class Lcom/alibaba/doraemon/image/memory/Bucket;
.super Ljava/lang/Object;
.source "Bucket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.facebook.imagepipeline.common.Bucket"


# instance fields
.field public final mFreeList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field private mInUseLength:I

.field public final mItemSize:I

.field public final mMaxLength:I


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "itemSize"    # I
    .param p2, "maxLength"    # I
    .param p3, "inUseLength"    # I

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 56
    if-ltz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 57
    if-ltz p3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 59
    iput p1, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mItemSize:I

    .line 60
    iput p2, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mMaxLength:I

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mFreeList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 62
    iput p3, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    .line 63
    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0

    :cond_1
    move v0, v2

    .line 56
    goto :goto_1

    :cond_2
    move v1, v2

    .line 57
    goto :goto_2
.end method


# virtual methods
.method public decrementInUseCount()V
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 122
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    .line 123
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/Bucket;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 81
    iget v1, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    .line 83
    :cond_0
    return-object v0
.end method

.method public getInUseCount()I
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    return v0
.end method

.method public incrementInUseCount()V
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    .line 102
    return-void
.end method

.method public isMaxLengthExceeded()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mFreeList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mMaxLength:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mFreeList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public release(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/Bucket;, "Lcom/alibaba/doraemon/image/memory/Bucket<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 111
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mInUseLength:I

    .line 112
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/Bucket;->mFreeList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 113
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
