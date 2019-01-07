.class Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;
.super Ljava/lang/Object;
.source "H5AppManagerImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->syncAndInstallAppFormLwp(Lcom/alipay/android/h5appmanager/AppInfo;Ljava/io/File;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

.field final synthetic val$app:Lcom/alipay/android/h5appmanager/AppInfo;

.field final synthetic val$atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

.field final synthetic val$result:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

.field final synthetic val$saveFile:Ljava/io/File;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;Lcom/alipay/android/h5appmanager/AppInfo;Ljava/io/File;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    iput-object p2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$result:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    iput-object p3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    iput-object p4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$saveFile:Ljava/io/File;

    iput-object p5, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    iput-object p6, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$target:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "l"    # J
    .param p4, "l1"    # J

    .prologue
    .line 1343
    return-void
.end method

.method public onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 26
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    .prologue
    .line 1209
    if-eqz p2, :cond_f

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1210
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v13

    .line 1211
    .local v13, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_0

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$result:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    move-object/from16 v20, v0

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->responseHeader:Ljava/lang/String;

    .line 1214
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->dataLength()J

    move-result-wide v10

    .line 1216
    .local v10, "contentLength":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmTraffic(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1218
    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-gtz v20, :cond_1

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->size:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v10, v0

    .line 1222
    :cond_1
    const/4 v14, 0x0

    .line 1225
    .local v14, "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v14

    .line 1227
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$saveFile:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1229
    .local v15, "outputStream":Ljava/io/FileOutputStream;
    const/16 v17, 0x0

    .line 1231
    .local v17, "totalBytesRead":I
    const/16 v20, 0x1000

    move/from16 v0, v20

    new-array v7, v0, [B

    .line 1232
    .local v7, "buffer":[B
    :cond_2
    :goto_0
    invoke-virtual {v14, v7}, Lcom/alibaba/doraemon/request/RequestInputStream;->read([B)I

    move-result v8

    .local v8, "bytesRead":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_7

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 1237
    :cond_3
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v7, v0, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1238
    add-int v17, v17, v8

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-lez v20, :cond_2

    .line 1240
    mul-int/lit8 v20, v17, 0x64

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v20, v20, v10

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 1241
    .local v16, "percent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$900(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Landroid/os/Handler;

    move-result-object v20

    new-instance v21, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5$1;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1295
    .end local v7    # "buffer":[B
    .end local v8    # "bytesRead":I
    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .end local v16    # "percent":I
    .end local v17    # "totalBytesRead":I
    :catch_0
    move-exception v9

    .line 1296
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v9, v1}, Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;->onDone(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 1299
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$result:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    move-object/from16 v20, v0

    invoke-virtual {v9}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->errorDescription:Ljava/lang/String;

    .line 1300
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1302
    if-eqz v14, :cond_5

    .line 1304
    :try_start_2
    invoke-virtual {v14}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1322
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "contentLength":J
    .end local v13    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$1400(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 1323
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    .line 1324
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v20

    if-nez v20, :cond_6

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$1400(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notify()V

    .line 1327
    :cond_6
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$result:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->success:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$result:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    move-object/from16 v24, v0

    invoke-static/range {v20 .. v24}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$1500(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;ZLjava/lang/String;Ljava/lang/String;Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;)V

    .line 1332
    return-void

    .line 1250
    .restart local v7    # "buffer":[B
    .restart local v8    # "bytesRead":I
    .restart local v10    # "contentLength":J
    .restart local v13    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v17    # "totalBytesRead":I
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$result:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$1100()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->finishDate:Ljava/lang/String;

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$result:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    move-object/from16 v20, v0

    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->dataLength:I

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$saveFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1254
    .local v6, "amrPath":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 1255
    invoke-virtual {v14}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 1262
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 1265
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$target:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/alipay/android/h5appmanager/impl/ZipUtil;->unzip(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;

    move-result-object v19

    .line 1266
    .local v19, "zipResult":Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;->mZipResult:Z

    move/from16 v18, v0

    .line 1267
    .local v18, "unzipResult":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;->mCrcValue:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmCrc(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$result:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->unzipResult:Z

    .line 1270
    if-nez v18, :cond_b

    .line 1271
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "unzip file: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " to target: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$target:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " failed!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1272
    .local v12, "errorDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$result:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v12, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->errorDescription:Ljava/lang/String;

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v12}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$1200(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/HttpException;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;->onDone(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 1277
    :cond_a
    const-string/jumbo v20, "H5AppManagerImpl"

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1302
    .end local v12    # "errorDescription":Ljava/lang/String;
    :goto_2
    if-eqz v14, :cond_5

    .line 1304
    :try_start_5
    invoke-virtual {v14}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 1305
    :catch_1
    move-exception v9

    .line 1306
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1280
    .end local v9    # "e":Ljava/io/IOException;
    :cond_b
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 1283
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, ""

    move-object/from16 v0, v20

    move/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$1200(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;->onDone(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 1287
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$result:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->success:Z

    .line 1289
    invoke-static {v6}, Lcom/alipay/android/h5appmanager/impl/FileUtil;->delete(Ljava/lang/String;)Z

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$1300(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 1302
    .end local v6    # "amrPath":Ljava/lang/String;
    .end local v7    # "buffer":[B
    .end local v8    # "bytesRead":I
    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .end local v17    # "totalBytesRead":I
    .end local v18    # "unzipResult":Z
    .end local v19    # "zipResult":Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;
    :catchall_0
    move-exception v20

    if-eqz v14, :cond_e

    .line 1304
    :try_start_7
    invoke-virtual {v14}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1307
    :cond_e
    :goto_3
    throw v20

    .line 1305
    .local v9, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 1306
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1305
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 1306
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1311
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "contentLength":J
    .end local v13    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_f
    if-eqz p2, :cond_10

    .line 1312
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "No file to download. Server replied HTTP code: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$result:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;

    move-object/from16 v20, v0

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;->errorDescription:Ljava/lang/String;

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/HttpException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "Server replied HTTP code: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;->onDone(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1318
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/http/HttpException;

    const-string/jumbo v22, "Server replied HTTP code: null"

    invoke-direct/range {v21 .. v22}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;->onDone(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1327
    :catchall_1
    move-exception v20

    :try_start_8
    monitor-exit v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v20
.end method

.method public onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 1338
    return-void
.end method
