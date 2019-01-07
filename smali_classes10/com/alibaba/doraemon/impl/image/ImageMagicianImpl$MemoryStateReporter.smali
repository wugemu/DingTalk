.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;
.super Ljava/lang/Object;
.source "ImageMagicianImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/image/ImageMemoryStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemoryStateReporter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyBitmapEvent(ILjava/lang/String;J)V
    .locals 9
    .param p1, "event"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 1415
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1416
    new-instance v7, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1417
    .local v7, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1419
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1420
    .local v6, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1421
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 1422
    .local v0, "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    if-eqz v0, :cond_0

    .line 1423
    const/4 v2, 0x0

    move v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageEventListener;->onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V

    goto :goto_0

    .line 1427
    .end local v0    # "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    .end local v6    # "iterator":Ljava/util/Iterator;
    .end local v7    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    :cond_1
    return-void
.end method

.method private notifyMemoryOverflow(JJ[Ljava/lang/String;)V
    .locals 9
    .param p1, "maxSize"    # J
    .param p3, "currentSize"    # J
    .param p5, "activitys"    # [Ljava/lang/String;

    .prologue
    .line 1430
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1431
    new-instance v7, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1432
    .local v7, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1434
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1435
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1436
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 1437
    .local v1, "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    if-eqz v1, :cond_0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 1438
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/doraemon/image/ImageEventListener;->onMemoryOverflow(JJ[Ljava/lang/String;)V

    goto :goto_0

    .line 1442
    .end local v1    # "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1444
    .end local v0    # "iterator":Ljava/util/Iterator;
    .end local v7    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public onAllocateBitmap(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 1395
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->notifyBitmapEvent(ILjava/lang/String;J)V

    .line 1396
    return-void
.end method

.method public onImageBytesFilled(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 1405
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->notifyBitmapEvent(ILjava/lang/String;J)V

    .line 1406
    return-void
.end method

.method public onImageBytesReleased(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 1410
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->notifyBitmapEvent(ILjava/lang/String;J)V

    .line 1411
    return-void
.end method

.method public onMemoryOverflow(JJ)V
    .locals 7
    .param p1, "maxSize"    # J
    .param p3, "currentSize"    # J

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->reportStates()[Ljava/lang/String;

    move-result-object v6

    .line 1389
    .local v6, "array":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v0, v6

    if-lez v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 1390
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->notifyMemoryOverflow(JJ[Ljava/lang/String;)V

    .line 1391
    :cond_0
    return-void
.end method

.method public onReleaseBitmap(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 1400
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$MemoryStateReporter;->notifyBitmapEvent(ILjava/lang/String;J)V

    .line 1401
    return-void
.end method
