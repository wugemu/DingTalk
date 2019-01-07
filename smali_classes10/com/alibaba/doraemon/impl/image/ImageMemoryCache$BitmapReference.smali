.class Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
.super Ljava/lang/Object;
.source "ImageMemoryCache.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapReference"
.end annotation


# instance fields
.field public mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field public mCount:I

.field public mIsRecycled:Z

.field public mMemorySize:J

.field mNext:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

.field public mRefKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    .prologue
    const/4 v0, 0x0

    .line 557
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mCount:I

    .line 561
    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mIsRecycled:Z

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mRefKeyList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addKeyRef(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 584
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mIsRecycled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    .line 585
    :cond_0
    const-string/jumbo v1, "ImageMemoryCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BitmapReference addKeyRef key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " displayMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed !!\nBitmapReference mIsRecycled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mIsRecycled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mBitmapDrawable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_0
    return-void

    .line 591
    :cond_1
    new-instance v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;-><init>()V

    .line 592
    .local v0, "refKey":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;
    iput-object p1, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;->mKey:Ljava/lang/String;

    .line 593
    iput p2, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;->mDisplayMode:I

    .line 594
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mRefKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 598
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mRefKeyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 599
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mRefKeyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;

    .line 600
    .local v3, "refKey":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->access$200(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;->mKey:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 601
    .local v1, "bitmapReferences":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    if-eqz v1, :cond_0

    .line 602
    iget v5, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;->mDisplayMode:I

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 603
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 604
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->access$200(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;->mKey:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 608
    .end local v1    # "bitmapReferences":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;>;"
    .end local v3    # "refKey":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mRefKeyList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;

    .line 609
    .restart local v3    # "refKey":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->access$300(Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;)Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;->mDisplayMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mMemorySize:J

    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;->onReleaseBitmap(Ljava/lang/String;J)V

    .line 612
    .end local v3    # "refKey":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mIsRecycled:Z

    .line 613
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_3

    .line 614
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v4, v4, Lcom/alibaba/doraemon/image/RecycleBitmapDrawable;

    if-eqz v4, :cond_4

    .line 615
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    check-cast v2, Lcom/alibaba/doraemon/image/RecycleBitmapDrawable;

    .line 616
    .local v2, "recycler":Lcom/alibaba/doraemon/image/RecycleBitmapDrawable;
    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/RecycleBitmapDrawable;->recycle()V

    .line 625
    .end local v2    # "recycler":Lcom/alibaba/doraemon/image/RecycleBitmapDrawable;
    :cond_3
    :goto_1
    iput-object v8, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 626
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mRefKeyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 627
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mMemorySize:J

    .line 628
    iput-object v8, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mNext:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 629
    return-void

    .line 618
    :cond_4
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 619
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 620
    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->b(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public init(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;I)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmapDrawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p3, "displayMode"    # I

    .prologue
    const/4 v4, 0x0

    .line 566
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mNext:Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;

    .line 567
    iput v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mCount:I

    .line 568
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 569
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 570
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mMemorySize:J

    .line 573
    :goto_0
    iput-boolean v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mIsRecycled:Z

    .line 574
    new-instance v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;-><init>()V

    .line 575
    .local v0, "refKey":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;
    iput-object p1, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;->mKey:Ljava/lang/String;

    .line 576
    iput p3, v0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;->mDisplayMode:I

    .line 577
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mRefKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    return-object p0

    .line 572
    .end local v0    # "refKey":Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$RefKey;
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache$BitmapReference;->mMemorySize:J

    goto :goto_0
.end method
