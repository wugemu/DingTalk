.class public Lcom/alibaba/doraemon/image/memory/DefaultNativeMemoryChunkPoolParams;
.super Ljava/lang/Object;
.source "DefaultNativeMemoryChunkPoolParams.java"


# static fields
.field private static final LARGE_BUCKET_LENGTH:I = 0x2

.field private static final SMALL_BUCKET_LENGTH:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/alibaba/doraemon/image/memory/PoolParams;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x5

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 34
    .local v0, "DEFAULT_BUCKETS":Landroid/util/SparseIntArray;
    const/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    const/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    const/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    const/16 v1, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    const v1, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    const/high16 v1, 0x40000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    const/high16 v1, 0x100000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    new-instance v1, Lcom/alibaba/doraemon/image/memory/PoolParams;

    .line 46
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/DefaultNativeMemoryChunkPoolParams;->getMaxSizeSoftCap()I

    move-result v2

    .line 47
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/DefaultNativeMemoryChunkPoolParams;->getMaxSizeHardCap()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/doraemon/image/memory/PoolParams;-><init>(IILandroid/util/SparseIntArray;)V

    return-object v1
.end method

.method private static getMaxSizeHardCap()I
    .locals 6

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 73
    .local v0, "maxMemory":I
    const/high16 v1, 0x1000000

    if-ge v0, v1, :cond_0

    .line 74
    div-int/lit8 v1, v0, 0x2

    .line 76
    :goto_0
    return v1

    :cond_0
    div-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x3

    goto :goto_0
.end method

.method private static getMaxSizeSoftCap()I
    .locals 6

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 58
    .local v0, "maxMemory":I
    const/high16 v1, 0x1000000

    if-ge v0, v1, :cond_0

    .line 59
    const/high16 v1, 0x300000

    .line 63
    :goto_0
    return v1

    .line 60
    :cond_0
    const/high16 v1, 0x2000000

    if-ge v0, v1, :cond_1

    .line 61
    const/high16 v1, 0x600000

    goto :goto_0

    .line 63
    :cond_1
    const/high16 v1, 0xc00000

    goto :goto_0
.end method
