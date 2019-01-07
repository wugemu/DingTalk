.class public Lcom/alibaba/doraemon/image/memory/BitmapCounter;
.super Ljava/lang/Object;
.source "BitmapCounter.java"


# instance fields
.field private mCount:I

.field private final mMaxCount:I

.field private final mMaxSize:I

.field private mSize:J


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "maxCount"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 27
    if-lez p2, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 28
    iput p1, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mMaxCount:I

    .line 29
    iput p2, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mMaxSize:I

    .line 30
    return-void

    :cond_0
    move v0, v2

    .line 26
    goto :goto_0

    :cond_1
    move v1, v2

    .line 27
    goto :goto_1
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public declared-synchronized decrease(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 57
    .local v0, "bitmapSize":I
    int-to-long v4, v0

    iget-wide v6, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mSize:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 58
    iget v3, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mCount:I

    if-lez v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 60
    iget-wide v2, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mSize:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mSize:J

    .line 61
    iget v1, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :cond_0
    move v3, v2

    .line 57
    goto :goto_0

    :cond_1
    move v1, v2

    .line 58
    goto :goto_1

    .line 56
    .end local v0    # "bitmapSize":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCount()I
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increase(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 41
    .local v0, "bitmapSize":I
    iget v1, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mCount:I

    iget v2, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mMaxCount:I

    if-ge v1, v2, :cond_0

    iget-wide v2, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mSize:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget v1, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mMaxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 47
    :goto_0
    monitor-exit p0

    return v1

    .line 45
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mCount:I

    .line 46
    iget-wide v2, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mSize:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/doraemon/image/memory/BitmapCounter;->mSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    const/4 v1, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "bitmapSize":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
