.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;
.super Ljava/lang/Object;
.source "ImageMagicianImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageDownloadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1735
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;

    .line 1737
    .local v24, "result":Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    .line 1738
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v25

    .line 1739
    .local v25, "size":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 1740
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 1741
    .local v6, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 1742
    .local v10, "displayMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    invoke-virtual {v3, v5, v10}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hasBitmap(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    invoke-virtual {v3, v5, v10, v6}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->remandBitmap(Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V

    .line 1739
    :cond_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 1748
    .end local v6    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "displayMode":I
    .end local v20    # "i":I
    .end local v25    # "size":I
    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v5, 0x1999

    if-ne v3, v5, :cond_4

    .line 1749
    const/16 v18, 0x0

    .line 1750
    .local v18, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    if-eqz v3, :cond_2

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1751
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    .line 1752
    :cond_2
    const/16 v23, 0x0

    .line 1753
    .local v23, "piexls":I
    if-eqz v18, :cond_3

    .line 1754
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int v23, v3, v5

    .line 1755
    :cond_3
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    if-eqz v3, :cond_4

    .line 1756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move/from16 v0, v23

    int-to-long v8, v0

    invoke-virtual {v3, v5, v7, v8, v9}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->fillBytes2Cache(Ljava/lang/String;Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;J)V

    .line 1760
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    .end local v23    # "piexls":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$700(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    .line 1762
    .local v27, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$1200(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    if-eqz v27, :cond_1e

    .line 1767
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v5, 0x1999

    if-ne v3, v5, :cond_15

    .line 1768
    move-object/from16 v0, v24

    iget v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    const/4 v5, -0x3

    if-ne v3, v5, :cond_9

    .line 1770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x3

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1772
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1773
    .local v4, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 1774
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1775
    .local v22, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1777
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1778
    .local v21, "iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1779
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 1780
    .local v2, "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    if-eqz v2, :cond_5

    .line 1781
    const/16 v25, 0x0

    .line 1782
    .restart local v25    # "size":I
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    if-eqz v3, :cond_6

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1783
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v25

    .line 1786
    :cond_6
    const/4 v3, 0x3

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move/from16 v0, v25

    int-to-long v6, v0

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/image/ImageEventListener;->onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V

    goto :goto_2

    .line 1793
    .end local v2    # "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    .end local v21    # "iterator":Ljava/util/Iterator;
    .end local v22    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    .end local v25    # "size":I
    :cond_7
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    const v5, 0x19561111

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1794
    const v3, 0x19561111

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1795
    const v3, 0x19820626

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1796
    const v3, 0x20150306

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1798
    :cond_8
    const v3, 0x20120718

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1799
    const v3, 0x19861104

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1800
    const v3, 0x20150307

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1805
    .end local v4    # "view":Landroid/view/View;
    :cond_9
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1806
    .restart local v4    # "view":Landroid/view/View;
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    const v7, 0x19561111

    invoke-virtual {v4, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1807
    const v5, 0x20150307

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 1808
    .local v19, "displayModeInt":Ljava/lang/Integer;
    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1809
    .restart local v10    # "displayMode":I
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v26

    .line 1810
    .local v26, "viewContext":Landroid/content/Context;
    move-object/from16 v0, v26

    instance-of v5, v0, Landroid/app/Activity;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$1300(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, v26

    if-ne v0, v5, :cond_10

    .line 1811
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v5

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    invoke-virtual {v5, v7, v10}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hasBitmap(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1812
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v5

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    invoke-virtual {v5, v7, v10}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hireBitmap(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    .line 1814
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    move-object v7, v4

    invoke-static/range {v5 .. v10}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$1400(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1835
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1836
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1837
    .restart local v22    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1839
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1840
    .restart local v21    # "iterator":Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1841
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 1842
    .restart local v2    # "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    if-eqz v2, :cond_d

    .line 1843
    const/16 v25, 0x0

    .line 1844
    .restart local v25    # "size":I
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    if-eqz v5, :cond_e

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v5}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->isClosed()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1845
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v5}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v25

    .line 1848
    :cond_e
    const/4 v13, 0x3

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object v12, v2

    move-object v14, v4

    invoke-interface/range {v12 .. v17}, Lcom/alibaba/doraemon/image/ImageEventListener;->onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V

    goto :goto_5

    .line 1808
    .end local v2    # "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    .end local v10    # "displayMode":I
    .end local v21    # "iterator":Ljava/util/Iterator;
    .end local v22    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    .end local v25    # "size":I
    .end local v26    # "viewContext":Landroid/content/Context;
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1818
    .restart local v10    # "displayMode":I
    .restart local v26    # "viewContext":Landroid/content/Context;
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v12, 0x0

    move-object/from16 v0, v24

    iget-object v14, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    move-object v13, v4

    move/from16 v16, v10

    invoke-static/range {v11 .. v16}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$1400(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1821
    .end local v10    # "displayMode":I
    .end local v19    # "displayModeInt":Ljava/lang/Integer;
    .end local v26    # "viewContext":Landroid/content/Context;
    :cond_11
    const v5, 0x20150306

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 1822
    .restart local v19    # "displayModeInt":Ljava/lang/Integer;
    if-eqz v19, :cond_13

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1823
    .restart local v10    # "displayMode":I
    :goto_6
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v26

    .line 1824
    .restart local v26    # "viewContext":Landroid/content/Context;
    move-object/from16 v0, v26

    instance-of v5, v0, Landroid/app/Activity;

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$1300(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, v26

    if-ne v0, v5, :cond_14

    .line 1825
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v5

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    invoke-virtual {v5, v7, v10}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hasBitmap(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1826
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;

    move-result-object v5

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    invoke-virtual {v5, v7, v10}, Lcom/alibaba/doraemon/impl/image/ImageMemoryCache;->hireBitmap(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    .line 1828
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    move-object v7, v4

    invoke-static/range {v5 .. v10}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$1500(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1822
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "displayMode":I
    .end local v26    # "viewContext":Landroid/content/Context;
    :cond_13
    const/4 v10, 0x0

    goto :goto_6

    .line 1831
    .restart local v10    # "displayMode":I
    .restart local v26    # "viewContext":Landroid/content/Context;
    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v12, 0x0

    move-object/from16 v0, v24

    iget-object v14, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    move-object v13, v4

    move/from16 v16, v10

    invoke-static/range {v11 .. v16}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$1500(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1857
    .end local v4    # "view":Landroid/view/View;
    .end local v10    # "displayMode":I
    .end local v19    # "displayModeInt":Ljava/lang/Integer;
    .end local v26    # "viewContext":Landroid/content/Context;
    :cond_15
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1858
    .restart local v4    # "view":Landroid/view/View;
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    const v7, 0x19561111

    invoke-virtual {v4, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1859
    const v5, 0x19561111

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1860
    const v5, 0x19820626

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1861
    const v5, 0x20150306

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_7

    .line 1863
    :cond_16
    const v5, 0x20120718

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1864
    const v5, 0x19861104

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1865
    const v5, 0x20150307

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_7

    .line 1869
    .end local v4    # "view":Landroid/view/View;
    :cond_17
    move-object/from16 v0, v24

    iget v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    const/4 v5, -0x4

    if-ne v3, v5, :cond_19

    .line 1870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x4

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1938
    :cond_18
    :goto_8
    const/4 v3, 0x0

    return v3

    .line 1871
    :cond_19
    move-object/from16 v0, v24

    iget v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    const/4 v5, -0x8

    if-ne v3, v5, :cond_1a

    .line 1872
    const-string/jumbo v3, "ImageMagicianImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "img download auth entity fail url:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x8

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8

    .line 1874
    :cond_1a
    move-object/from16 v0, v24

    iget v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    const/4 v5, -0x5

    if-ne v3, v5, :cond_1b

    .line 1875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x5

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8

    .line 1876
    :cond_1b
    move-object/from16 v0, v24

    iget v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    const/4 v5, -0x6

    if-ne v3, v5, :cond_1c

    .line 1877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x6

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8

    .line 1878
    :cond_1c
    move-object/from16 v0, v24

    iget v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    const/4 v5, -0x7

    if-ne v3, v5, :cond_1d

    .line 1879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x7

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_8

    .line 1881
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x2

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_8

    .line 1887
    :cond_1e
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    if-eqz v3, :cond_20

    .line 1888
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v25

    .line 1889
    .restart local v25    # "size":I
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_9
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_20

    .line 1890
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 1891
    .local v6, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v6, :cond_1f

    instance-of v3, v6, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_1f

    .line 1892
    check-cast v6, Landroid/graphics/drawable/Animatable;

    .end local v6    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-interface {v6}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1889
    :cond_1f
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 1897
    .end local v20    # "i":I
    .end local v25    # "size":I
    :cond_20
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v5, 0x1999

    if-ne v3, v5, :cond_23

    .line 1899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 1900
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1901
    .restart local v22    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1903
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1904
    .restart local v21    # "iterator":Ljava/util/Iterator;
    :cond_21
    :goto_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1905
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 1906
    .restart local v2    # "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    if-eqz v2, :cond_21

    .line 1907
    const/16 v25, 0x0

    .line 1908
    .restart local v25    # "size":I
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    if-eqz v3, :cond_22

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->isClosed()Z

    move-result v3

    if-nez v3, :cond_22

    .line 1909
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v25

    .line 1912
    :cond_22
    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object v12, v2

    invoke-interface/range {v12 .. v17}, Lcom/alibaba/doraemon/image/ImageEventListener;->onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V

    goto :goto_a

    .line 1921
    .end local v2    # "listener":Lcom/alibaba/doraemon/image/ImageEventListener;
    .end local v21    # "iterator":Ljava/util/Iterator;
    .end local v22    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageEventListener;>;"
    .end local v25    # "size":I
    :cond_23
    move-object/from16 v0, v24

    iget v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    const/4 v5, -0x4

    if-ne v3, v5, :cond_24

    .line 1922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x4

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_8

    .line 1923
    :cond_24
    move-object/from16 v0, v24

    iget v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    const/4 v5, -0x8

    if-ne v3, v5, :cond_25

    .line 1924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x8

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_8

    .line 1925
    :cond_25
    move-object/from16 v0, v24

    iget v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    const/4 v5, -0x5

    if-ne v3, v5, :cond_26

    .line 1926
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x5

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_8

    .line 1927
    :cond_26
    move-object/from16 v0, v24

    iget v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    const/4 v5, -0x6

    if-ne v3, v5, :cond_27

    .line 1928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x6

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_8

    .line 1929
    :cond_27
    move-object/from16 v0, v24

    iget v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    const/4 v5, -0x7

    if-ne v3, v5, :cond_28

    .line 1930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x7

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_8

    .line 1932
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageDownloadListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    const/4 v5, -0x2

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v5, v7, v8, v0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_8
.end method
