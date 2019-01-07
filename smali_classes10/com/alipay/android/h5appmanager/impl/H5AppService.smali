.class public Lcom/alipay/android/h5appmanager/impl/H5AppService;
.super Ljava/lang/Object;
.source "H5AppService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "H5AppService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAllApps(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Landroid/net/http/AndroidHttpClient;Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;)Lcom/alipay/android/h5appmanager/impl/H5AppList;
    .locals 26
    .param p1, "appManagerImpl"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;
    .param p2, "httpClient"    # Landroid/net/http/AndroidHttpClient;
    .param p3, "h5AppQueryParams"    # Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;

    .prologue
    .line 34
    const/16 v16, 0x0

    .line 35
    .local v16, "result":Lcom/alipay/android/h5appmanager/impl/H5AppList;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/alipay/android/h5appmanager/H5AppManager;->getServiceUrl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/api/apps?client=%s&platform=%s&sdkver=%s&clientver=%s&systemver=%s"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 36
    invoke-virtual/range {p3 .. p3}, Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;->getClient()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string/jumbo v25, "android"

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "1.1.0"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    .line 37
    invoke-virtual/range {p3 .. p3}, Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;->getClientVersion()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x4

    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    .line 35
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 38
    .local v21, "url":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->trafficStatsStart(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v14, ""

    .line 41
    .local v14, "responseString":Ljava/lang/String;
    :try_start_0
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 42
    .local v12, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string/jumbo v22, "Accept"

    const-string/jumbo v23, "application/json, */*"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 48
    .local v13, "response":Lorg/apache/http/HttpResponse;
    const-wide/16 v18, 0x0

    .line 49
    .local v18, "size":J
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 50
    .local v10, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v10, :cond_0

    .line 51
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v18

    .line 53
    :cond_0
    const-string/jumbo v22, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmTraffic(Ljava/lang/String;Ljava/lang/String;J)V

    .line 55
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    .line 56
    .local v17, "status":Lorg/apache/http/StatusLine;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    const/16 v23, 0xc8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 57
    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "HTTP error: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/16 v22, 0x0

    .line 100
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    .end local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "status":Lorg/apache/http/StatusLine;
    .end local v18    # "size":J
    :goto_0
    return-object v22

    .line 61
    .restart local v10    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v17    # "status":Lorg/apache/http/StatusLine;
    .restart local v18    # "size":J
    :cond_1
    const-string/jumbo v22, "Content-Type"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    .line 63
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    if-eqz v10, :cond_4

    .line 66
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v7, v0

    .line 67
    .local v7, "contentLen":I
    if-gtz v7, :cond_2

    .line 68
    const-string/jumbo v22, "H5AppService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "unexpected contentLen:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/16 v22, 0x0

    goto :goto_0

    .line 71
    :cond_2
    new-array v6, v7, [B

    .line 72
    .local v6, "buffer":[B
    new-instance v8, Ljava/io/DataInputStream;

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    .local v8, "dis":Ljava/io/DataInputStream;
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .local v11, "gson":Lcom/google/gson/Gson;
    :try_start_1
    invoke-virtual {v8, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 76
    new-instance v15, Ljava/lang/String;

    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v22

    invoke-direct {v15, v6, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .end local v14    # "responseString":Ljava/lang/String;
    .local v15, "responseString":Ljava/lang/String;
    :try_start_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 78
    const-class v22, Lcom/alipay/android/h5appmanager/impl/H5AppList;

    move-object/from16 v0, v22

    invoke-virtual {v11, v15, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Lcom/alipay/android/h5appmanager/impl/H5AppList;

    move-object/from16 v16, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    :cond_3
    :try_start_3
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v14, v15

    .line 96
    .end local v6    # "buffer":[B
    .end local v7    # "contentLen":I
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "gson":Lcom/google/gson/Gson;
    .end local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "responseString":Ljava/lang/String;
    .end local v17    # "status":Lorg/apache/http/StatusLine;
    .end local v18    # "size":J
    .restart local v14    # "responseString":Ljava/lang/String;
    :cond_4
    :goto_1
    const/16 v22, 0x1

    const-string/jumbo v23, "query app list"

    const-string/jumbo v24, ""

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmQuery(ZLjava/lang/String;Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->trafficStatsEnd(Ljava/lang/String;)V

    .line 98
    if-eqz v16, :cond_5

    const/16 v20, 0x1

    .line 99
    .local v20, "success":Z
    :goto_2
    if-eqz v20, :cond_6

    const-string/jumbo v22, ""

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v14, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmUpdate(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v16

    .line 100
    goto/16 :goto_0

    .line 83
    .end local v14    # "responseString":Ljava/lang/String;
    .end local v20    # "success":Z
    .restart local v6    # "buffer":[B
    .restart local v7    # "contentLen":I
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "gson":Lcom/google/gson/Gson;
    .restart local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v15    # "responseString":Ljava/lang/String;
    .restart local v17    # "status":Lorg/apache/http/StatusLine;
    .restart local v18    # "size":J
    :catch_0
    move-exception v9

    .line 84
    .local v9, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    const-string/jumbo v22, "H5AppService"

    const-string/jumbo v23, "Unexpected IOException."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v14, v15

    .line 87
    .end local v15    # "responseString":Ljava/lang/String;
    .restart local v14    # "responseString":Ljava/lang/String;
    goto :goto_1

    .line 81
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v22

    .line 82
    :goto_4
    :try_start_5
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 86
    :goto_5
    :try_start_6
    throw v22
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 89
    .end local v6    # "buffer":[B
    .end local v7    # "contentLen":I
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "gson":Lcom/google/gson/Gson;
    .end local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "status":Lorg/apache/http/StatusLine;
    .end local v18    # "size":J
    :catch_1
    move-exception v9

    .line 90
    .local v9, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    const/16 v22, 0x0

    const-string/jumbo v23, "query app list"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->logHpmQuery(ZLjava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "error "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 83
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "buffer":[B
    .restart local v7    # "contentLen":I
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "gson":Lcom/google/gson/Gson;
    .restart local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v17    # "status":Lorg/apache/http/StatusLine;
    .restart local v18    # "size":J
    :catch_2
    move-exception v9

    .line 84
    .local v9, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    const-string/jumbo v23, "H5AppService"

    const-string/jumbo v24, "Unexpected IOException."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 98
    .end local v6    # "buffer":[B
    .end local v7    # "contentLen":I
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "gson":Lcom/google/gson/Gson;
    .end local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "status":Lorg/apache/http/StatusLine;
    .end local v18    # "size":J
    :cond_5
    const/16 v20, 0x0

    goto :goto_2

    .line 99
    .restart local v20    # "success":Z
    :cond_6
    const-string/jumbo v22, "query app list failed as network issue"

    goto :goto_3

    .line 89
    .end local v14    # "responseString":Ljava/lang/String;
    .end local v20    # "success":Z
    .restart local v6    # "buffer":[B
    .restart local v7    # "contentLen":I
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "gson":Lcom/google/gson/Gson;
    .restart local v12    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v15    # "responseString":Ljava/lang/String;
    .restart local v17    # "status":Lorg/apache/http/StatusLine;
    .restart local v18    # "size":J
    :catch_3
    move-exception v9

    move-object v14, v15

    .end local v15    # "responseString":Ljava/lang/String;
    .restart local v14    # "responseString":Ljava/lang/String;
    goto :goto_6

    .line 81
    .end local v14    # "responseString":Ljava/lang/String;
    .restart local v15    # "responseString":Ljava/lang/String;
    :catchall_1
    move-exception v22

    move-object v14, v15

    .end local v15    # "responseString":Ljava/lang/String;
    .restart local v14    # "responseString":Ljava/lang/String;
    goto :goto_4
.end method
