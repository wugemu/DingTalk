.class public Lcom/alibaba/doraemon/image/memory/PoolParams;
.super Ljava/lang/Object;
.source "PoolParams.java"


# instance fields
.field public final bucketSizes:Landroid/util/SparseIntArray;

.field public final maxBucketSize:I

.field public final maxSizeHardCap:I

.field public final maxSizeSoftCap:I

.field public final minBucketSize:I


# direct methods
.method public constructor <init>(IILandroid/util/SparseIntArray;)V
    .locals 6
    .param p1, "maxSizeSoftCap"    # I
    .param p2, "maxSizeHardCap"    # I
    .param p3, "bucketSizes"    # Landroid/util/SparseIntArray;

    .prologue
    .line 70
    const/4 v4, 0x0

    const v5, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/image/memory/PoolParams;-><init>(IILandroid/util/SparseIntArray;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(IILandroid/util/SparseIntArray;II)V
    .locals 1
    .param p1, "maxSizeSoftCap"    # I
    .param p2, "maxSizeHardCap"    # I
    .param p3, "bucketSizes"    # Landroid/util/SparseIntArray;
    .param p4, "minBucketSize"    # I
    .param p5, "maxBucketSize"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 88
    iput p1, p0, Lcom/alibaba/doraemon/image/memory/PoolParams;->maxSizeSoftCap:I

    .line 89
    iput p2, p0, Lcom/alibaba/doraemon/image/memory/PoolParams;->maxSizeHardCap:I

    .line 90
    iput-object p3, p0, Lcom/alibaba/doraemon/image/memory/PoolParams;->bucketSizes:Landroid/util/SparseIntArray;

    .line 91
    iput p4, p0, Lcom/alibaba/doraemon/image/memory/PoolParams;->minBucketSize:I

    .line 92
    iput p5, p0, Lcom/alibaba/doraemon/image/memory/PoolParams;->maxBucketSize:I

    .line 93
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILandroid/util/SparseIntArray;)V
    .locals 6
    .param p1, "maxSize"    # I
    .param p2, "bucketSizes"    # Landroid/util/SparseIntArray;

    .prologue
    .line 60
    const/4 v4, 0x0

    const v5, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/image/memory/PoolParams;-><init>(IILandroid/util/SparseIntArray;II)V

    .line 61
    return-void
.end method
