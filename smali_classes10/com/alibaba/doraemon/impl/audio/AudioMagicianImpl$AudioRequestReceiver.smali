.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioRequestReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    .prologue
    .line 1516
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1517
    return-void
.end method


# virtual methods
.method public onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "totalSize"    # J
    .param p4, "downloadSize"    # J

    .prologue
    .line 1655
    return-void
.end method

.method public onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 22
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    .prologue
    .line 1522
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/doraemon/request/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v16

    .line 1524
    .local v16, "urlKey":Ljava/lang/String;
    const v17, 0x20110606

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->getTag(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1525
    .local v12, "pos":I
    const v17, 0x20110707

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->getTag(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1527
    .local v13, "preDownload":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1700(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/util/List;

    move-result-object v18

    monitor-enter v18

    .line 1529
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1700(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1800(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    monitor-exit v18

    .line 1533
    if-eqz v13, :cond_1

    .line 1636
    :cond_0
    :goto_0
    return-void

    .line 1531
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 1537
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_0

    .line 1538
    if-eqz p2, :cond_4

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1540
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v11

    .line 1542
    .local v11, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    if-eqz v11, :cond_0

    .line 1543
    new-instance v17, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$1;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;Lcom/alibaba/doraemon/request/RequestInputStream;)V

    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1553
    const/4 v7, 0x0

    .line 1555
    .local v7, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1900(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v14

    .line 1556
    .local v14, "tmpFile":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1557
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v8, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v17, 0x800

    :try_start_2
    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v3

    .line 1559
    .local v3, "bytes":[B
    :goto_1
    invoke-virtual {v11, v3}, Lcom/alibaba/doraemon/request/RequestInputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_2

    .line 1560
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v3, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto :goto_1

    .line 1574
    .end local v3    # "bytes":[B
    .end local v4    # "count":I
    :catch_0
    move-exception v5

    move-object v7, v8

    .line 1575
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v14    # "tmpFile":Ljava/io/File;
    .local v5, "e":Ljava/io/IOException;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_2
    const/4 v9, 0x0

    .line 1577
    .local v9, "fileOutputStream2":Ljava/io/FileOutputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1900(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v15

    .line 1578
    .local v15, "tmpFile2":Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1579
    .end local v9    # "fileOutputStream2":Ljava/io/FileOutputStream;
    .local v10, "fileOutputStream2":Ljava/io/FileOutputStream;
    const/16 v17, 0x800

    :try_start_4
    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v3

    .line 1581
    .restart local v3    # "bytes":[B
    :goto_3
    invoke-virtual {v11, v3}, Lcom/alibaba/doraemon/request/RequestInputStream;->read([B)I

    move-result v4

    .restart local v4    # "count":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_3

    .line 1582
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v3, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto :goto_3

    .line 1596
    .end local v3    # "bytes":[B
    .end local v4    # "count":I
    :catch_1
    move-exception v6

    move-object v9, v10

    .line 1597
    .end local v10    # "fileOutputStream2":Ljava/io/FileOutputStream;
    .end local v15    # "tmpFile2":Ljava/io/File;
    .local v6, "e2":Ljava/io/IOException;
    .restart local v9    # "fileOutputStream2":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$200()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "IO_ACCESS_ERROR "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    new-instance v17, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$4;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;Ljava/io/IOException;)V

    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1611
    :try_start_6
    invoke-static {v11}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1612
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1615
    .end local v6    # "e2":Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-static {v11}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1616
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1618
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "fileOutputStream2":Ljava/io/FileOutputStream;
    :goto_6
    monitor-exit v18

    goto/16 :goto_0

    :catchall_1
    move-exception v17

    :goto_7
    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v17

    .line 1563
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "bytes":[B
    .restart local v4    # "count":I
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "tmpFile":Ljava/io/File;
    :cond_2
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$2002(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 1566
    new-instance v17, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$2;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;Ljava/lang/String;I)V

    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1615
    :try_start_9
    invoke-static {v11}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1616
    invoke-static {v8}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v7, v8

    .line 1617
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 1585
    .end local v14    # "tmpFile":Ljava/io/File;
    .restart local v5    # "e":Ljava/io/IOException;
    .restart local v10    # "fileOutputStream2":Ljava/io/FileOutputStream;
    .restart local v15    # "tmpFile2":Ljava/io/File;
    :cond_3
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$2002(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 1588
    new-instance v17, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$3;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;Ljava/lang/String;I)V

    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 1611
    :try_start_b
    invoke-static {v11}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1612
    invoke-static {v10}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v9, v10

    .line 1613
    .end local v10    # "fileOutputStream2":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOutputStream2":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1611
    .end local v3    # "bytes":[B
    .end local v4    # "count":I
    .end local v15    # "tmpFile2":Ljava/io/File;
    :catchall_2
    move-exception v17

    :goto_8
    invoke-static {v11}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1612
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1615
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "fileOutputStream2":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v17

    :goto_9
    :try_start_c
    invoke-static {v11}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1616
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1622
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v11    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$200()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "DOWNLOAD_RECORD_ERROR "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    new-instance v17, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$5;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;Lcom/alibaba/doraemon/request/Response;)V

    invoke-static/range {v17 .. v17}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1618
    .restart local v3    # "bytes":[B
    .restart local v4    # "count":I
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .restart local v14    # "tmpFile":Ljava/io/File;
    :catchall_4
    move-exception v17

    move-object v7, v8

    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 1615
    .end local v3    # "bytes":[B
    .end local v4    # "count":I
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v17

    move-object v7, v8

    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 1611
    .end local v14    # "tmpFile":Ljava/io/File;
    .restart local v5    # "e":Ljava/io/IOException;
    .restart local v10    # "fileOutputStream2":Ljava/io/FileOutputStream;
    .restart local v15    # "tmpFile2":Ljava/io/File;
    :catchall_6
    move-exception v17

    move-object v9, v10

    .end local v10    # "fileOutputStream2":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOutputStream2":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 1596
    .end local v15    # "tmpFile2":Ljava/io/File;
    :catch_2
    move-exception v6

    goto/16 :goto_4

    .line 1574
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "fileOutputStream2":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    goto/16 :goto_2
.end method

.method public onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 1641
    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$6;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$6;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1649
    return-void
.end method
