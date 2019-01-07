.class public Lcom/alibaba/doraemon/image/memory/BitmapPool;
.super Lcom/alibaba/doraemon/image/memory/BasePool;
.source "BitmapPool.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/doraemon/image/memory/BasePool",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field public static final BYTES_PER_PIXEL:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/alibaba/doraemon/image/memory/BitmapPool;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;)V
    .locals 0
    .param p1, "memoryTrimmableRegistry"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;
    .param p2, "poolParams"    # Lcom/alibaba/doraemon/image/memory/PoolParams;
    .param p3, "poolStatsTracker"    # Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/image/memory/BasePool;-><init>(Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;Lcom/alibaba/doraemon/image/memory/PoolParams;Lcom/alibaba/doraemon/image/memory/PoolStatsTracker;)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/BitmapPool;->initialize()V

    .line 51
    return-void
.end method


# virtual methods
.method protected alloc(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    const/4 v0, 0x1

    sget-object v1, Lcom/alibaba/doraemon/image/memory/BitmapPool;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic alloc(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/BitmapPool;->alloc(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected free(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 72
    return-void
.end method

.method protected bridge synthetic free(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/BitmapPool;->free(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getBucketedSize(I)I
    .locals 0
    .param p1, "requestSize"    # I

    .prologue
    .line 81
    return p1
.end method

.method protected getBucketedSizeForValue(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p1, "value"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    .line 101
    .local v0, "allocationByteCount":I
    :goto_0
    div-int/lit8 v1, v0, 0x4

    return v1

    .line 98
    .end local v0    # "allocationByteCount":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .restart local v0    # "allocationByteCount":I
    goto :goto_0
.end method

.method protected bridge synthetic getBucketedSizeForValue(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/BitmapPool;->getBucketedSizeForValue(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected getSizeInBytes(I)I
    .locals 1
    .param p1, "bucketedSize"    # I

    .prologue
    .line 113
    mul-int/lit8 v0, p1, 0x4

    return v0
.end method

.method public getWhenHardCapReached(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    const/4 v0, 0x1

    sget-object v1, Lcom/alibaba/doraemon/image/memory/BitmapPool;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWhenHardCapReached(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/BitmapPool;->getWhenHardCapReached(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected isReusable(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "value"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/doraemon/image/memory/BitmapPool;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic isReusable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 26
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/BitmapPool;->isReusable(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method
