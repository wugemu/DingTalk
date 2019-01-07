.class public Lcom/taobao/weex/amap/component/WXMapMarkerComponent;
.super Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;
.source "WXMapMarkerComponent.java"


# annotations
.annotation build Lcom/alibaba/weex/plugin/annotation/WeexComponent;
    names = {
        "weex-amap-marker"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent",
        "<",
        "Lcom/amap/api/maps/model/Marker;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "dom"    # Lcom/taobao/weex/dom/WXDomObject;
    .param p3, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapMarkerComponent;
    .param p1, "x1"    # Lcom/amap/api/maps/model/Marker;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->setMarkerTitle(Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapMarkerComponent;
    .param p1, "x1"    # Lcom/amap/api/maps/model/Marker;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->setMarkerIcon(Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Lcom/amap/api/maps/model/Marker;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapMarkerComponent;
    .param p1, "x1"    # Lcom/amap/api/maps/model/Marker;
    .param p2, "x2"    # Ljava/lang/Boolean;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->setMarkerHideCallOut(Lcom/amap/api/maps/model/Marker;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapMarkerComponent;
    .param p1, "x1"    # Lcom/amap/api/maps/model/Marker;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->setMarkerPosition(Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapMarkerComponent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->fetchIcon(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->isGif(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private fetchIcon(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "cache"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 320
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, "name":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 324
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 373
    :goto_0
    return-object v9

    .line 327
    :cond_0
    const/4 v6, 0x0

    .line 328
    .local v6, "inputstream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 330
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 331
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v9, 0x1388

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 332
    const-string/jumbo v9, "GET"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 333
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 334
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_2

    .line 335
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 336
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v0, v9, [B

    .line 339
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    .line 340
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 347
    .end local v0    # "buffer":[B
    .end local v7    # "len":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 348
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/net/MalformedURLException;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    if-eqz v6, :cond_1

    .line 358
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 363
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 365
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 373
    :cond_2
    :goto_4
    const/4 v9, 0x0

    goto :goto_0

    .line 342
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "len":I
    :cond_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 343
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 345
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v9

    .line 356
    if-eqz v6, :cond_4

    .line 358
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 365
    :cond_4
    :goto_5
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 366
    :catch_1
    move-exception v2

    .line 367
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 359
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 360
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 359
    .end local v0    # "buffer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "len":I
    .local v2, "e":Ljava/net/MalformedURLException;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 360
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 366
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 367
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 349
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 350
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 356
    if-eqz v6, :cond_5

    .line 358
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 363
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    :goto_7
    if-eqz v4, :cond_2

    .line 365
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_4

    .line 366
    :catch_6
    move-exception v2

    .line 367
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 359
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v2

    .line 360
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 351
    .end local v2    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 352
    .local v2, "e":Ljava/net/ProtocolException;
    :goto_8
    :try_start_b
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 356
    if-eqz v6, :cond_6

    .line 358
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 363
    .end local v2    # "e":Ljava/net/ProtocolException;
    :cond_6
    :goto_9
    if-eqz v4, :cond_2

    .line 365
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_4

    .line 366
    :catch_9
    move-exception v2

    .line 367
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 359
    .local v2, "e":Ljava/net/ProtocolException;
    :catch_a
    move-exception v2

    .line 360
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 353
    .end local v2    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v2

    .line 354
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_a
    :try_start_e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 356
    if-eqz v6, :cond_7

    .line 358
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 363
    :cond_7
    :goto_b
    if-eqz v4, :cond_2

    .line 365
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    goto/16 :goto_4

    .line 366
    :catch_c
    move-exception v2

    .line 367
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 359
    :catch_d
    move-exception v2

    .line 360
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 356
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_c
    if-eqz v6, :cond_8

    .line 358
    :try_start_11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    .line 363
    :cond_8
    :goto_d
    if-eqz v4, :cond_9

    .line 365
    :try_start_12
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    .line 368
    :cond_9
    :goto_e
    throw v9

    .line 359
    :catch_e
    move-exception v2

    .line 360
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 366
    .end local v2    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v2

    .line 367
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 356
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_c

    .line 353
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v2

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_a

    .line 351
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_11
    move-exception v2

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 349
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v2

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 347
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    :catch_13
    move-exception v2

    goto/16 :goto_2
.end method

.method private initMarker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;-><init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->postMapOperationTask(Lcom/taobao/weex/amap/component/WXMapViewComponent;Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 177
    return-void
.end method

.method private static isGif(Ljava/lang/String;)Z
    .locals 9
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, "imgFile":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v2    # "imgFile":Ljava/io/FileInputStream;
    .local v3, "imgFile":Ljava/io/FileInputStream;
    const/4 v7, 0x3

    :try_start_1
    new-array v1, v7, [B

    .line 64
    .local v1, "header":[B
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 65
    .local v4, "length":I
    if-ne v4, v8, :cond_0

    const/4 v7, 0x0

    aget-byte v7, v1, v7

    const/16 v8, 0x47

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    const/16 v8, 0x49

    if-ne v7, v8, :cond_0

    const/4 v7, 0x2

    aget-byte v7, v1, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v8, 0x46

    if-ne v7, v8, :cond_0

    .line 71
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    move-object v2, v3

    .line 78
    .end local v1    # "header":[B
    .end local v3    # "imgFile":Ljava/io/FileInputStream;
    .end local v4    # "length":I
    .restart local v2    # "imgFile":Ljava/io/FileInputStream;
    :goto_2
    return v5

    .end local v2    # "imgFile":Ljava/io/FileInputStream;
    .restart local v1    # "header":[B
    .restart local v3    # "imgFile":Ljava/io/FileInputStream;
    .restart local v4    # "length":I
    :cond_0
    move v5, v6

    .line 65
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "header":[B
    .end local v3    # "imgFile":Ljava/io/FileInputStream;
    .end local v4    # "length":I
    .restart local v2    # "imgFile":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    :goto_3
    if-eqz v2, :cond_1

    .line 71
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_4
    move v5, v6

    .line 78
    goto :goto_2

    .line 72
    :catch_2
    move-exception v0

    .line 73
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v2, :cond_2

    .line 71
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 74
    :cond_2
    :goto_6
    throw v5

    .line 72
    :catch_3
    move-exception v0

    .line 73
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "imgFile":Ljava/io/FileInputStream;
    .restart local v3    # "imgFile":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "imgFile":Ljava/io/FileInputStream;
    .restart local v2    # "imgFile":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2    # "imgFile":Ljava/io/FileInputStream;
    .restart local v3    # "imgFile":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3    # "imgFile":Ljava/io/FileInputStream;
    .restart local v2    # "imgFile":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private setMarkerHideCallOut(Lcom/amap/api/maps/model/Marker;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "mMarker"    # Lcom/amap/api/maps/model/Marker;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "hide"    # Ljava/lang/Boolean;

    .prologue
    .line 290
    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    .line 295
    :cond_0
    return-void

    .line 292
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMarkerIcon(Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V
    .locals 9
    .param p1, "mMarker"    # Lcom/amap/api/maps/model/Marker;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "icon"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 197
    const-string/jumbo v5, "WXMapViewComponent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invoke setMarkerIcon on thread "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v5, "WXMapViewComponent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setMarkerIcon from: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v7, "image"

    invoke-virtual {v5, v6, v7}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 204
    .local v3, "rewrited":Landroid/net/Uri;
    const-string/jumbo v5, "local"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 206
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 207
    .local v4, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 208
    const-string/jumbo v6, "WXMapViewComponent"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Load marker icon from drawable: "

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "drawable"

    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 210
    .local v1, "id":I
    if-eqz v1, :cond_3

    .line 211
    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 212
    .local v0, "descriptor":Lcom/amap/api/maps/model/BitmapDescriptor;
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    new-instance v6, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$7;

    invoke-direct {v6, p0, p1, v0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$7;-><init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Lcom/amap/api/maps/model/Marker;Lcom/amap/api/maps/model/BitmapDescriptor;)V

    invoke-virtual {v5, v6}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 221
    .end local v0    # "descriptor":Lcom/amap/api/maps/model/BitmapDescriptor;
    .end local v1    # "id":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v5, "path"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 222
    const-string/jumbo v5, "WXMapViewComponent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Load marker icon from path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromPath(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 224
    .restart local v0    # "descriptor":Lcom/amap/api/maps/model/BitmapDescriptor;
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    new-instance v6, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$8;

    invoke-direct {v6, p0, p1, v0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$8;-><init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Lcom/amap/api/maps/model/Marker;Lcom/amap/api/maps/model/BitmapDescriptor;)V

    invoke-virtual {v5, v6}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 233
    .end local v0    # "descriptor":Lcom/amap/api/maps/model/BitmapDescriptor;
    :cond_3
    new-instance v5, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;

    invoke-direct {v5, p0, p2, p1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;-><init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/String;Lcom/amap/api/maps/model/Marker;)V

    new-array v6, v8, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private setMarkerPosition(Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V
    .locals 8
    .param p1, "mMarker"    # Lcom/amap/api/maps/model/Marker;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "position"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "jsonArray":Lorg/json/JSONArray;
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 301
    .local v2, "latLng":Lcom/amap/api/maps/model/LatLng;
    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getOptions()Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v3

    .line 303
    .local v3, "markerOptions":Lcom/amap/api/maps/model/MarkerOptions;
    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 304
    invoke-virtual {p1, v3}, Lcom/amap/api/maps/model/Marker;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "latLng":Lcom/amap/api/maps/model/LatLng;
    .end local v3    # "markerOptions":Lcom/amap/api/maps/model/MarkerOptions;
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setMarkerTitle(Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V
    .locals 1
    .param p1, "mMarker"    # Lcom/amap/api/maps/model/Marker;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getOptions()Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    .line 314
    .local v0, "markerOptions":Lcom/amap/api/maps/model/MarkerOptions;
    invoke-virtual {v0, p2}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 315
    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/Marker;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V

    .line 317
    .end local v0    # "markerOptions":Lcom/amap/api/maps/model/MarkerOptions;
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->destroy()V

    .line 148
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getWidget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    .line 151
    :cond_0
    return-void
.end method

.method public getMarker()Lcom/amap/api/maps/model/Marker;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v3

    instance-of v3, v3, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getDomObject()Lcom/taobao/weex/dom/ImmutableDomObject;

    move-result-object v3

    invoke-interface {v3}, Lcom/taobao/weex/dom/ImmutableDomObject;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getDomObject()Lcom/taobao/weex/dom/ImmutableDomObject;

    move-result-object v3

    invoke-interface {v3}, Lcom/taobao/weex/dom/ImmutableDomObject;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "icon"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, "icon":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getDomObject()Lcom/taobao/weex/dom/ImmutableDomObject;

    move-result-object v3

    invoke-interface {v3}, Lcom/taobao/weex/dom/ImmutableDomObject;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "position"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "position":Ljava/lang/String;
    invoke-direct {p0, v2, v1, v0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->initMarker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v0    # "icon":Ljava/lang/String;
    .end local v1    # "position":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/view/ViewStub;

    invoke-direct {v3, p1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    return-object v3
.end method

.method public onClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "click"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setHideCallOut(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "hide"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hideCallout"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    const-string/jumbo v0, "setHideCallOut"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$3;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$3;-><init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "icon"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "icon"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    const-string/jumbo v0, "setIcon"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$2;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$2;-><init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public setOpened(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "opened"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "open"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    const-string/jumbo v0, "setOpened"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$6;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$6;-><init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 2
    .param p1, "position"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "position"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    const-string/jumbo v0, "setPosition"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$4;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$4;-><init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 102
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    .line 95
    :pswitch_0
    const-string/jumbo v2, "position"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 97
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "position":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->setPosition(Ljava/lang/String;)V

    .line 100
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x2c929929
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "title"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    const-string/jumbo v0, "setTitle"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$1;-><init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method
