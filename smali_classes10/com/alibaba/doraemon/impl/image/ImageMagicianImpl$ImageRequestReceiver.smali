.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;
.super Ljava/lang/Object;
.source "ImageMagicianImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageRequestReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    return-void
.end method


# virtual methods
.method public onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 8
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "totalSize"    # J
    .param p4, "downloadSize"    # J

    .prologue
    .line 1705
    new-instance v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$2;

    move-object v1, p0

    move-wide v2, p4

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$2;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;JJLcom/alibaba/doraemon/request/Request;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1713
    return-void
.end method

.method public onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 32
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    .prologue
    .line 1546
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v23

    .line 1547
    .local v23, "urlKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$500(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Lcom/alibaba/doraemon/request/Request;)Ljava/lang/String;

    move-result-object v22

    .line 1549
    .local v22, "url":Ljava/lang/String;
    new-instance v19, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)V

    .line 1550
    .local v19, "result":Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mImageUrl:Ljava/lang/String;

    .line 1551
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mUrlKey:Ljava/lang/String;

    .line 1552
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 1553
    .local v10, "downloadMsg":Landroid/os/Message;
    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1555
    if-eqz p2, :cond_b

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 1556
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v16

    .line 1557
    .local v16, "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    if-eqz v16, :cond_a

    .line 1558
    const/16 v25, 0x1999

    move/from16 v0, v25

    iput v0, v10, Landroid/os/Message;->what:I

    .line 1559
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/image/utils/PngUtil;->is9patchSafety(Ljava/io/InputStream;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 1561
    const/4 v6, 0x0

    .line 1562
    .local v6, "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 1564
    .local v13, "drawables":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/BitmapDrawable;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v25

    const v26, 0x7d000

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_0

    .line 1566
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->mark(I)V

    .line 1567
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    :try_end_0
    .catch Lcom/alibaba/doraemon/image/memory/PooledByteBuffer$ClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1599
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1606
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$900(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/image/ImageDecoder;

    move-result-object v25

    if-nez v25, :cond_3

    .line 1607
    const/16 v25, -0x3

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    .line 1608
    const-string/jumbo v25, "App Image Decoder is null"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$300(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1689
    .end local v6    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .end local v13    # "drawables":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/BitmapDrawable;>;"
    .end local v16    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :goto_1
    return-void

    .line 1600
    .restart local v6    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .restart local v13    # "drawables":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/BitmapDrawable;>;"
    .restart local v16    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :catch_0
    move-exception v14

    .line 1601
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1573
    .end local v14    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v25

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$600(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/impl/image/ImageCache;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/image/ImageCache;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;

    move-result-object v7

    .line 1574
    .local v7, "cacheResponse":Lcom/alibaba/doraemon/request/Response;
    if-eqz v7, :cond_1

    .line 1575
    invoke-interface {v7}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .line 1599
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1600
    :catch_2
    move-exception v14

    .line 1601
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1577
    .end local v14    # "e":Ljava/io/IOException;
    :cond_1
    const/16 v25, 0x2010

    :try_start_4
    move/from16 v0, v25

    iput v0, v10, Landroid/os/Message;->what:I

    .line 1578
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    .line 1579
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    .line 1580
    const-string/jumbo v25, "response body is null !"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$300(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1599
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 1600
    :catch_3
    move-exception v14

    .line 1601
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1585
    .end local v7    # "cacheResponse":Lcom/alibaba/doraemon/request/Response;
    .end local v14    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v21

    .line 1586
    .local v21, "t":Ljava/lang/Throwable;
    :try_start_6
    sget v25, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 1587
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1590
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v26, v0

    const/16 v27, -0x3

    const-string/jumbo v28, "Image decoded error when newByteBuffer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v25, v0

    .line 1591
    invoke-static/range {v25 .. v25}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$700(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/Map;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    .line 1590
    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1599
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 1600
    :catch_5
    move-exception v14

    .line 1601
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1598
    .end local v14    # "e":Ljava/io/IOException;
    .end local v21    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v25

    .line 1599
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1602
    :goto_2
    throw v25

    .line 1600
    :catch_6
    move-exception v14

    .line 1601
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1613
    .end local v14    # "e":Ljava/io/IOException;
    :cond_3
    const v25, 0x20140305

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1614
    .local v9, "displayModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v9, :cond_8

    .line 1615
    monitor-enter v9

    .line 1617
    :try_start_9
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1619
    .local v8, "displayMode":I
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    const-string/jumbo v25, ".gif"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$700(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/Map;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1621
    .local v11, "downloadings":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v11, :cond_4

    .line 1622
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    .line 1623
    .local v20, "size":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    move/from16 v0, v20

    if-ge v15, v0, :cond_4

    .line 1624
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1625
    .local v24, "view":Landroid/view/View;
    if-eqz v24, :cond_5

    const v25, 0x19561111

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    const v25, 0x20160307

    .line 1626
    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 1628
    const v25, 0x19561111

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1629
    .local v17, "key":Ljava/lang/String;
    const v25, 0x20160307

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 1630
    .local v18, "maxSize":Ljava/lang/Long;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_5

    if-eqz v18, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    cmp-long v25, v28, v30

    if-lez v25, :cond_5

    .line 1631
    const/4 v8, 0x0

    .line 1639
    .end local v11    # "downloadings":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v15    # "i":I
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "maxSize":Ljava/lang/Long;
    .end local v20    # "size":I
    .end local v24    # "view":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$900(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Lcom/alibaba/doraemon/image/ImageDecoder;

    move-result-object v25

    new-instance v27, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v28

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;-><init>(Lcom/alibaba/doraemon/request/RequestInputStream;I)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2, v8}, Lcom/alibaba/doraemon/image/ImageDecoder;->decode(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v12

    .line 1642
    .local v12, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v25

    if-eqz v25, :cond_6

    .line 1643
    invoke-virtual {v13, v8, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1649
    .end local v8    # "displayMode":I
    .end local v12    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :catchall_1
    move-exception v25

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v25

    .line 1623
    .restart local v8    # "displayMode":I
    .restart local v11    # "downloadings":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .restart local v15    # "i":I
    .restart local v20    # "size":I
    .restart local v24    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 1645
    .end local v11    # "downloadings":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v15    # "i":I
    .end local v20    # "size":I
    .end local v24    # "view":Landroid/view/View;
    .restart local v12    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_6
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v27, v0

    const/16 v28, -0x3

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "Image displayMode="

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v29, "decoded error drawable is null or drawable.getBitmap() is null"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v25, v0

    .line 1646
    invoke-static/range {v25 .. v25}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$700(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Ljava/util/Map;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    .line 1645
    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v22

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$800(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_3

    .line 1649
    .end local v8    # "displayMode":I
    .end local v12    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_7
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1651
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v25

    if-nez v25, :cond_8

    .line 1652
    const/16 v25, -0x3

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    .line 1653
    const-string/jumbo v25, "image decode error drawables size is 0"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    .line 1654
    const-string/jumbo v25, "ImageMagicianImpl"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "ImageMagician  url "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " decode error !"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_8
    move-object/from16 v0, v19

    iput-object v6, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    .line 1658
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    .line 1688
    .end local v6    # "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .end local v9    # "displayModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "drawables":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/BitmapDrawable;>;"
    .end local v16    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$300(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1661
    .restart local v16    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_9
    const/16 v25, -0x3

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    .line 1662
    const-string/jumbo v25, "Image decoded error is9patchSafety false!"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    goto :goto_5

    .line 1665
    :cond_a
    const/16 v25, 0x2010

    move/from16 v0, v25

    iput v0, v10, Landroid/os/Message;->what:I

    .line 1666
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    .line 1667
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    .line 1668
    const-string/jumbo v25, "response body is null !"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    goto :goto_5

    .line 1671
    .end local v16    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_b
    const/16 v25, 0x2010

    move/from16 v0, v25

    iput v0, v10, Landroid/os/Message;->what:I

    .line 1672
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mBitmapDrawables:Landroid/util/SparseArray;

    .line 1673
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    .line 1674
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v25

    const/16 v26, 0x191

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 1675
    const/16 v25, -0x4

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    .line 1685
    :cond_c
    :goto_6
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorDescription:Ljava/lang/String;

    goto :goto_5

    .line 1676
    :cond_d
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v25

    const/16 v26, 0x19a

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 1677
    const/16 v25, -0x5

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    goto :goto_6

    .line 1678
    :cond_e
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v25

    const/16 v26, 0x1a5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 1679
    const/16 v25, -0x6

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    goto :goto_6

    .line 1680
    :cond_f
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v25

    const/16 v26, 0x1a6

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 1681
    const/16 v25, -0x7

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    goto :goto_6

    .line 1682
    :cond_10
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v25

    const/16 v26, 0x193

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 1683
    const/16 v25, -0x8

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$DownloadResult;->mErrorCode:I

    goto :goto_6
.end method

.method public onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 1694
    new-instance v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver$1;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ImageRequestReceiver;Lcom/alibaba/doraemon/request/Request;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1701
    return-void
.end method
