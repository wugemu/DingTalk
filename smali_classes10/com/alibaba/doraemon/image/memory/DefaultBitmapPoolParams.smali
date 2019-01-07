.class public Lcom/alibaba/doraemon/image/memory/DefaultBitmapPoolParams;
.super Ljava/lang/Object;
.source "DefaultBitmapPoolParams.java"


# static fields
.field private static final DEFAULT_BUCKETS:Landroid/util/SparseIntArray;

.field private static final MAX_SIZE_SOFT_CAP:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/alibaba/doraemon/image/memory/DefaultBitmapPoolParams;->DEFAULT_BUCKETS:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static get()Lcom/alibaba/doraemon/image/memory/PoolParams;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/alibaba/doraemon/image/memory/PoolParams;

    const/4 v1, 0x0

    .line 54
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/DefaultBitmapPoolParams;->getMaxSizeHardCap()I

    move-result v2

    sget-object v3, Lcom/alibaba/doraemon/image/memory/DefaultBitmapPoolParams;->DEFAULT_BUCKETS:Landroid/util/SparseIntArray;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/memory/PoolParams;-><init>(IILandroid/util/SparseIntArray;)V

    return-object v0
.end method

.method private static getMaxSizeHardCap()I
    .locals 8

    .prologue
    const/high16 v2, 0x400000

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 37
    .local v0, "maxMemory":I
    const/high16 v3, 0x1000000

    if-le v0, v3, :cond_0

    .line 38
    div-int/lit8 v2, v0, 0x4

    mul-int/lit8 v1, v2, 0x3

    .line 42
    :goto_0
    return v1

    .line 40
    :cond_0
    div-int/lit8 v1, v0, 0x2

    .line 41
    .local v1, "memoryValue":I
    if-ge v1, v2, :cond_1

    move v1, v2

    .line 42
    :cond_1
    goto :goto_0
.end method
