.class public Lcom/autonavi/amap/mapcore/NormalMapLoader;
.super Lcom/autonavi/amap/mapcore/BaseMapLoader;
.source "NormalMapLoader.java"


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/MapCore;Lcom/autonavi/amap/mapcore/BaseMapCallImplement;I)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;-><init>()V

    .line 13
    iput p3, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    .line 14
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    .line 15
    iput-object p2, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->createtime:J

    .line 17
    return-void
.end method


# virtual methods
.method protected getGridParma()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->getGridParmaV4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGridParmaV4()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 21
    .line 22
    const-string/jumbo v6, ";"

    move v2, v3

    move-object v1, v4

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v5

    .line 25
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    .line 26
    invoke-virtual {p0, v5}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->containllegal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 27
    invoke-virtual {p0, v5}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->isAssic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 29
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    if-ne v0, v8, :cond_f

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mapTiles:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    iget-object v0, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_f

    .line 33
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    iget-object v0, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 35
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "utf-8"

    .line 36
    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 44
    :goto_1
    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 47
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 54
    :cond_1
    if-nez v1, :cond_3

    .line 89
    :cond_2
    :goto_3
    return-object v4

    .line 56
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    move-object v0, v1

    .line 58
    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 59
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v1, v0

    .line 64
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 68
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    if-nez v0, :cond_7

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mapdataver=5&type=20&mesh="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 70
    :cond_7
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mapdataver=5&type=11&mesh="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 72
    :cond_8
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_9

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mapdataver=5&type=1&mesh="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 74
    :cond_9
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_a

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mapdataver=5&type=13&mesh="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 76
    :cond_a
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_b

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mapdataver=5&type=40&mesh="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 78
    :cond_b
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "t=BMPBM&mapdataver=5&mesh="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 80
    :cond_c
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mapdataver=5&mesh="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 82
    :cond_d
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    if-ne v0, v8, :cond_e

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mapdataver=5&v=6.0.0&bver=2&mesh="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 86
    :cond_e
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "t=VMMV3&mapdataver=5&type=mod&cp=0&mid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_f
    move-object v0, v5

    goto/16 :goto_1

    :cond_10
    move-object v0, v1

    goto/16 :goto_2
.end method

.method protected getMapAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getMapSvrAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMapSvrPath()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    iget v1, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    return-object v0

    .line 103
    :pswitch_1
    const-string/jumbo v0, "/ws/mps/rtt?"

    goto :goto_0

    .line 106
    :pswitch_2
    const-string/jumbo v0, "/ws/mps/smap?"

    goto :goto_0

    .line 113
    :pswitch_3
    const-string/jumbo v0, "/ws/mps/vmap?"

    goto :goto_0

    .line 117
    :pswitch_4
    const-string/jumbo v0, "/amapsrv/MPS?"

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected isNeedProcessReturn()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestValid()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mapTiles:Ljava/util/ArrayList;

    iget v2, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridsInScreen(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method protected processReceivedDataHeader(I)Z
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
    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 157
    iget v2, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->recievedDataSize:I

    if-le v2, v5, :cond_0

    .line 162
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->recievedDataBuffer:[B

    invoke-static {v2, v0}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v2

    .line 164
    if-eqz v2, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->doCancel()V

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->recievedDataBuffer:[B

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->recievedDataBuffer:[B

    add-int/lit8 v4, p1, -0x8

    invoke-static {v2, v6, v3, v0, v4}, Lcom/autonavi/amap/mapcore/Convert;->moveArray([BI[BII)V

    .line 180
    iget v2, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->recievedDataSize:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->recievedDataSize:I

    .line 182
    iput v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->nextImgDataLength:I

    .line 183
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->recievedHeader:Z

    .line 184
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    if-ne v0, v5, :cond_3

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->processReceivedDataV4()V

    :goto_1
    move v0, v1

    .line 192
    goto :goto_0

    .line 190
    :cond_3
    invoke-super {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedData()V

    goto :goto_1
.end method

.method protected processRecivedDataByType()V
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
    .line 144
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->processReceivedDataV4()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-super {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedData()V

    goto :goto_0
.end method

.method processRecivedModels([BII)V
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

    .line 306
    .line 307
    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    .line 308
    if-gez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, p1, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->isMapEngineValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    if-le p3, p2, :cond_0

    .line 320
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget v1, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridInScreen(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v6, v0

    .line 322
    :goto_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    sub-int v3, p3, p2

    iget v4, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIIII)Z

    .line 323
    if-eqz v6, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->doCancel()V

    goto :goto_0

    :cond_2
    move v6, v5

    .line 320
    goto :goto_1
.end method

.method processRecivedTileData([BII)V
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
    .line 207
    if-nez p2, :cond_1

    .line 218
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->processRecivedTileData([BII)V

    .line 221
    :goto_0
    return-void

    .line 210
    :cond_1
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 212
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->processRecivedTileDataBmp([BII)V

    goto :goto_0

    .line 213
    :cond_3
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 214
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->processRecivedTileDataVTmc([BII)V

    goto :goto_0

    .line 215
    :cond_4
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->processRecivedModels([BII)V

    goto :goto_0
.end method

.method processRecivedTileDataBmp([BII)V
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

    .line 224
    .line 226
    add-int/lit8 v0, p2, 0x4

    .line 227
    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p1, v0

    .line 229
    const-string/jumbo v0, ""

    .line 230
    if-lez v2, :cond_4

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p3, :cond_4

    .line 231
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v6, v0

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_1
    return-void

    .line 238
    :cond_1
    if-le p3, p2, :cond_0

    .line 245
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget v1, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    .line 246
    invoke-virtual {v0, v1, v6}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridInScreen(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v7, v0

    .line 248
    :goto_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    sub-int v3, p3, p2

    iget v4, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-static {}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VMapDataCache;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    invoke-virtual {v0, v1, v6, v2}, Lcom/autonavi/amap/mapcore/VMapDataCache;->putRecoder([BLjava/lang/String;I)Lcom/autonavi/amap/mapcore/VMapDataRecoder;

    .line 252
    :cond_2
    if-eqz v7, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->doCancel()V

    goto :goto_1

    :cond_3
    move v7, v5

    .line 246
    goto :goto_2

    :cond_4
    move-object v6, v0

    goto :goto_0
.end method

.method processRecivedTileDataVTmc([BII)V
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
    const/4 v2, 0x0

    .line 261
    .line 263
    add-int/lit8 v0, p2, 0x4

    .line 264
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    .line 266
    add-int v3, v1, v0

    array-length v4, p1

    if-gt v3, v4, :cond_0

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_0

    if-gez v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v3, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapCore;->isMapEngineValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/autonavi/amap/mapcore/VTMCDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VTMCDataCache;

    move-result-object v0

    .line 284
    if-le p3, p2, :cond_0

    .line 286
    sub-int v1, p3, p2

    new-array v1, v1, [B

    .line 287
    sub-int v4, p3, p2

    invoke-static {p1, p2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/VTMCDataCache;->putData([B)Lcom/autonavi/amap/mapcore/VTmcData;

    move-result-object v5

    .line 290
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget v1, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    .line 291
    invoke-virtual {v0, v1, v3}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridInScreen(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v6, v0

    .line 293
    :goto_1
    if-eqz v5, :cond_2

    .line 294
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    iget-object v1, v5, Lcom/autonavi/amap/mapcore/VTmcData;->data:[B

    iget-object v3, v5, Lcom/autonavi/amap/mapcore/VTmcData;->data:[B

    array-length v3, v3

    iget v4, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    iget v5, v5, Lcom/autonavi/amap/mapcore/VTmcData;->createTime:I

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIIII)Z

    .line 297
    :cond_2
    if-eqz v6, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->doCancel()V

    goto :goto_0

    :cond_3
    move v6, v2

    .line 291
    goto :goto_1
.end method

.method protected processRecivedVersionOrScenicWidgetData()V
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
    .line 136
    iget v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->datasource:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->recievedDataBuffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/amap/mapcore/NormalMapLoader;->recievedDataSize:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/amap/mapcore/NormalMapLoader;->processRecivedVersionData([BII)V

    .line 140
    :cond_0
    return-void
.end method
