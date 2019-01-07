.class public final Lfdo;
.super Lcom/alibaba/doraemon/image/memory/BasePool;
.source "StringArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfdo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/doraemon/image/memory/BasePool",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lfdn;->a()Lcom/alibaba/doraemon/image/memory/PoolParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lfdo;-><init>(Lcom/alibaba/doraemon/image/memory/PoolParams;)V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lfdo;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/doraemon/image/memory/PoolParams;)V
    .locals 4
    .param p1, "poolParams"    # Lcom/alibaba/doraemon/image/memory/PoolParams;

    .prologue
    .line 27
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;->getInstance()Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;->getInstance()Lcom/alibaba/doraemon/image/memory/NoOpPoolStatsTracker;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/alibaba/doraemon/image/memory/BasePool;-><init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;)V

    .line 28
    iget-object v0, p1, Lcom/alibaba/doraemon/image/memory/PoolParams;->bucketSizes:Landroid/util/SparseIntArray;

    .line 29
    .local v0, "bucketSizes":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lfdo;->a:[I

    .line 30
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 31
    iget-object v2, p0, Lfdo;->a:[I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lfdo;->initialize()V

    .line 34
    return-void
.end method

.method public static a()Lfdo;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lfdo$a;->a()Lfdo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic alloc(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    .line 3038
    new-array v0, p1, [Ljava/lang/String;

    .line 11
    return-object v0
.end method

.method protected final synthetic free(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/String;

    .line 2043
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method protected final getBucketedSize(I)I
    .locals 4
    .param p1, "requestSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 66
    if-gtz p1, :cond_0

    .line 67
    new-instance v1, Lcom/alibaba/doraemon/image/memory/BasePool$InvalidSizeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/doraemon/image/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 71
    :cond_0
    iget-object v2, p0, Lfdo;->a:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget v0, v2, v1

    .line 72
    .local v0, "bucketedSize":I
    if-lt v0, p1, :cond_1

    .line 79
    .end local v0    # "bucketedSize":I
    :goto_1
    return v0

    .line 71
    .restart local v0    # "bucketedSize":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "bucketedSize":I
    :cond_2
    move v0, p1

    .line 79
    goto :goto_1
.end method

.method protected final synthetic getBucketedSizeForValue(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/String;

    .line 1089
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    array-length v0, p1

    .line 11
    return v0
.end method

.method protected final getSizeInBytes(I)I
    .locals 0
    .param p1, "bucketedSize"    # I

    .prologue
    .line 84
    return p1
.end method

.method public final bridge synthetic getWhenHardCapReached(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    .line 3049
    new-array v0, p1, [Ljava/lang/String;

    .line 11
    return-object v0
.end method
