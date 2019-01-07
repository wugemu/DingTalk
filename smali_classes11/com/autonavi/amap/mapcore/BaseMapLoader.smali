.class public abstract Lcom/autonavi/amap/mapcore/BaseMapLoader;
.super Ljava/lang/Object;
.source "BaseMapLoader.java"


# instance fields
.field createtime:J

.field datasource:I

.field public httpURLConnection:Ljava/net/HttpURLConnection;

.field volatile inRequest:Z

.field volatile isFinished:Z

.field volatile mCanceled:Z

.field mCapaticy:I

.field mCapaticyExt:I

.field mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

.field mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

.field m_reqestStartLen:J

.field mapLevel:I

.field public mapTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field nextImgDataLength:I

.field recievedDataBuffer:[B

.field recievedDataSize:I

.field recievedHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mapTiles:Ljava/util/ArrayList;

    .line 32
    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    .line 33
    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 34
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedHeader:Z

    .line 35
    const/16 v0, 0x7800

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticy:I

    .line 36
    const/16 v0, 0x2800

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticyExt:I

    .line 38
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->inRequest:Z

    .line 39
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z

    .line 40
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    .line 42
    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private declared-synchronized onConnectionOver()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 236
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedVersionOrScenicWidgetData()V

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    .line 238
    const/4 v1, 0x0

    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 239
    const/4 v1, 0x0

    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 245
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget-object v2, v0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mapTiles:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    iget-object v0, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->keyGridName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->removeTile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 254
    :cond_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onConnectionRecieveData([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 422
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticy:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    add-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    .line 434
    :try_start_0
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticy:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticyExt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticy:I

    .line 435
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticy:I

    new-array v0, v0, [B

    .line 438
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    iget v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 474
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    .line 475
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isNeedProcessReturn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    :cond_1
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    goto :goto_0

    .line 458
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    goto :goto_0

    .line 467
    :catch_2
    move-exception v0

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    goto :goto_0

    .line 482
    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedHeader:Z

    if-nez v0, :cond_3

    .line 483
    invoke-virtual {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processReceivedDataHeader(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedDataByType()V

    goto :goto_0
.end method


# virtual methods
.method public OnException(I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 183
    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " network error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->privteTestTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-boolean v3, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z

    .line 188
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    if-eq v0, v3, :cond_0

    .line 191
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    .line 200
    :cond_0
    iput-boolean v3, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z

    .line 201
    return-void
.end method

.method public addReuqestTiles(Lcom/autonavi/amap/mapcore/MapSourceGridData;)V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method protected containllegal(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 177
    const-string/jumbo v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized doCancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->inRequest:Z

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 229
    :catch_0
    move-exception v0

    :try_start_4
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    goto :goto_0

    .line 229
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public doRequest()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0x3ea

    .line 260
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isRequestValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->getMapAddress()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->getMapSvrPath()Ljava/lang/String;

    move-result-object v3

    .line 275
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    if-eqz v0, :cond_0

    .line 280
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->getGridParma()Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 288
    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->inRequest:Z

    .line 293
    :try_start_0
    iget-object v5, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/mapcore/util/fk;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v5

    .line 294
    invoke-virtual {p0, v0, v3, v4}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->getURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    if-eqz v5, :cond_4

    .line 297
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v3, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 303
    :goto_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_8

    .line 304
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 305
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 319
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_6

    .line 324
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 326
    :try_start_1
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOpened()V

    .line 327
    const/16 v1, 0x200

    new-array v3, v1, [B

    move v1, v2

    .line 330
    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_7

    .line 332
    if-eqz v1, :cond_3

    .line 333
    const-string/jumbo v1, "recievedFirstByte:"

    const-string/jumbo v4, ""

    invoke-virtual {p0, v1, v4}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->privteTestTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v1, 0x0

    .line 338
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 339
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 382
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_3
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 384
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    .line 386
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 389
    :catch_1
    move-exception v0

    invoke-virtual {p0, v6}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 300
    :cond_4
    :try_start_3
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->httpURLConnection:Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 382
    :catch_2
    move-exception v0

    goto :goto_3

    .line 342
    :cond_5
    :try_start_4
    iget-boolean v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v4, :cond_7

    .line 352
    invoke-direct {p0, v3, v2}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionRecieveData([BI)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 382
    :catch_3
    move-exception v1

    move-object v1, v0

    :goto_4
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 384
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    .line 386
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 389
    :catch_4
    move-exception v0

    invoke-virtual {p0, v6}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 355
    :cond_6
    const/16 v0, 0x3ea

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    .line 382
    :cond_7
    :goto_5
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 384
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v1, :cond_0

    .line 386
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 389
    :catch_5
    move-exception v0

    invoke-virtual {p0, v6}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 359
    :cond_8
    const/16 v0, 0x3ea

    :try_start_8
    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v1

    goto :goto_5

    .line 382
    :catch_6
    move-exception v0

    :goto_6
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 384
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    .line 386
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    .line 389
    :catch_7
    move-exception v0

    invoke-virtual {p0, v6}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 382
    :catch_8
    move-exception v0

    :goto_7
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 384
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    .line 386
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_0

    .line 389
    :catch_9
    move-exception v0

    invoke-virtual {p0, v6}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 373
    :catch_a
    move-exception v0

    :goto_8
    const/16 v0, 0x3ea

    :try_start_b
    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 382
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 384
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    .line 386
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_0

    .line 389
    :catch_b
    move-exception v0

    invoke-virtual {p0, v6}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 382
    :catch_c
    move-exception v0

    :goto_9
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 384
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    .line 386
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    .line 389
    :catch_d
    move-exception v0

    invoke-virtual {p0, v6}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto/16 :goto_0

    .line 382
    :catchall_0
    move-exception v0

    :goto_a
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->onConnectionOver()V

    .line 384
    if-eqz v1, :cond_9

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v2, :cond_9

    .line 386
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    .line 391
    :cond_9
    :goto_b
    throw v0

    .line 389
    :catch_e
    move-exception v1

    invoke-virtual {p0, v6}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->OnException(I)V

    goto :goto_b

    .line 382
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_a

    :catch_f
    move-exception v1

    move-object v1, v0

    goto :goto_9

    .line 373
    :catch_10
    move-exception v1

    move-object v1, v0

    goto :goto_8

    .line 382
    :catch_11
    move-exception v1

    move-object v1, v0

    goto :goto_7

    :catch_12
    move-exception v1

    move-object v1, v0

    goto/16 :goto_6

    :catch_13
    move-exception v0

    goto/16 :goto_4
.end method

.method protected abstract getGridParma()Ljava/lang/String;
.end method

.method protected abstract getMapAddress()Ljava/lang/String;
.end method

.method protected abstract getMapSvrPath()Ljava/lang/String;
.end method

.method protected getURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method public declared-synchronized hasFinished()Z
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->isFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initTestTime()V
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->m_reqestStartLen:J

    .line 157
    return-void
.end method

.method protected isAssic(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 166
    if-nez p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v0, v1

    .line 169
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 170
    aget-char v3, v2, v0

    const/16 v4, 0x100

    if-ge v3, v4, :cond_0

    aget-char v3, v2, v0

    if-lez v3, :cond_0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract isNeedProcessReturn()Z
.end method

.method public abstract isRequestValid()Z
.end method

.method public onConnectionError(Lcom/autonavi/amap/mapcore/BaseMapLoader;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method protected onConnectionOpened()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 410
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mCapaticy:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    .line 411
    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 412
    iput v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    .line 413
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedHeader:Z

    .line 415
    return-void
.end method

.method protected privteTestTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method protected abstract processReceivedDataHeader(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected processReceivedDataV4()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 558
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    if-nez v0, :cond_1

    .line 560
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    if-lt v0, v2, :cond_0

    .line 563
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    invoke-static {v0, v5}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 566
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processReceivedDataV4()V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    if-lt v0, v1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processReceivedTileDataV4([BII)V

    .line 580
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    iget v3, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    iget v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Lcom/autonavi/amap/mapcore/Convert;->moveArray([BI[BII)V

    .line 584
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    .line 585
    iput v5, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 586
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processReceivedDataV4()V

    goto :goto_0
.end method

.method protected processReceivedTileDataV4([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 94
    .line 96
    add-int/lit8 v0, p2, 0x4

    .line 98
    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p1, v0

    .line 100
    const-string/jumbo v0, ""

    .line 103
    if-lez v2, :cond_4

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p3, :cond_4

    .line 104
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v6, v0

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_1
    return-void

    .line 111
    :cond_1
    if-le p3, p2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    invoke-virtual {v0, v1, v6}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridInScreen(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v7, v0

    .line 118
    :goto_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    sub-int v3, p3, p2

    iget v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-static {}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VMapDataCache;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    invoke-virtual {v0, v1, v6, v2}, Lcom/autonavi/amap/mapcore/VMapDataCache;->putRecoder([BLjava/lang/String;I)Lcom/autonavi/amap/mapcore/VMapDataRecoder;

    .line 122
    :cond_2
    if-eqz v7, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    goto :goto_1

    :cond_3
    move v7, v5

    .line 116
    goto :goto_2

    :cond_4
    move-object v6, v0

    goto :goto_0
.end method

.method protected processRecivedData()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 495
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    if-nez v0, :cond_1

    .line 497
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    if-lt v0, v3, :cond_0

    .line 500
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    invoke-static {v0, v6}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 502
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedData()V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    if-lt v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    invoke-static {v0, v6}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    .line 512
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    .line 514
    if-nez v1, :cond_3

    .line 516
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v1, v3, v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedTileData([BII)V

    .line 540
    :goto_1
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    if-lez v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    iget v3, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    iget v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v6, v3}, Lcom/autonavi/amap/mapcore/Convert;->moveArray([BI[BII)V

    .line 546
    :cond_2
    iget v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataSize:I

    .line 547
    iput v6, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->nextImgDataLength:I

    .line 548
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedData()V

    goto :goto_0

    .line 521
    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->recievedDataBuffer:[B

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 523
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 525
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 526
    const/16 v3, 0x80

    new-array v3, v3, [B

    .line 528
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_4

    .line 529
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 534
    :catch_0
    move-exception v0

    .line 535
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 531
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 532
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedTileData([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected abstract processRecivedDataByType()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method processRecivedTileData([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 597
    .line 599
    add-int/lit8 v0, p2, 0x2

    .line 601
    add-int/lit8 v0, v0, 0x2

    .line 603
    add-int/lit8 v0, v0, 0x4

    .line 604
    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p1, v0

    .line 606
    const-string/jumbo v0, ""

    .line 607
    if-lez v2, :cond_0

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p3, :cond_0

    .line 608
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapCore;->isMapEngineValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 629
    :cond_1
    :goto_0
    return-void

    .line 615
    :cond_2
    if-le p3, p2, :cond_1

    .line 618
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget v2, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    .line 619
    invoke-virtual {v1, v2, v0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridInScreen(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    move v6, v1

    .line 620
    :goto_1
    invoke-static {}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VMapDataCache;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/autonavi/amap/mapcore/VMapDataCache;->putRecoder([BLjava/lang/String;I)Lcom/autonavi/amap/mapcore/VMapDataRecoder;

    .line 621
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    sub-int v3, p3, p2

    iget v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIIII)Z

    .line 623
    if-eqz v6, :cond_1

    .line 627
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->doCancel()V

    goto :goto_0

    :cond_3
    move v6, v5

    .line 619
    goto :goto_1
.end method

.method processRecivedVersionData([BII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 639
    if-lez p3, :cond_0

    array-length v0, p1

    if-gt p3, v0, :cond_0

    .line 642
    invoke-static {p1, v2}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    .line 645
    if-eqz v0, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v0

    .line 651
    if-nez v0, :cond_0

    .line 655
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v4

    .line 656
    const/16 v1, 0xc

    .line 658
    const/4 v0, 0x1

    .line 659
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    move v1, v2

    .line 660
    :goto_1
    if-ge v1, v4, :cond_3

    .line 663
    if-ge v3, p3, :cond_2

    .line 664
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p1, v3

    .line 670
    if-lez v3, :cond_4

    add-int v7, v6, v3

    if-ge v7, p3, :cond_4

    .line 671
    new-instance v7, Ljava/lang/String;

    const-string/jumbo v8, "utf-8"

    invoke-direct {v7, p1, v6, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 672
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    add-int/2addr v3, v6

    .line 679
    add-int/lit8 v3, v3, 0x4

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 684
    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    move v1, v2

    .line 685
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 686
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 687
    invoke-static {}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VMapDataCache;

    move-result-object v3

    const/4 v4, 0x0

    iget v6, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    invoke-virtual {v3, v4, v0, v6}, Lcom/autonavi/amap/mapcore/VMapDataCache;->putRecoder([BLjava/lang/String;I)Lcom/autonavi/amap/mapcore/VMapDataRecoder;

    .line 685
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    move v0, v2

    .line 675
    goto :goto_2

    .line 690
    :cond_5
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    iget v4, p0, Lcom/autonavi/amap/mapcore/BaseMapLoader;->datasource:I

    move-object v1, p1

    move v3, p3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIIII)Z

    goto :goto_0
.end method

.method protected abstract processRecivedVersionOrScenicWidgetData()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method
