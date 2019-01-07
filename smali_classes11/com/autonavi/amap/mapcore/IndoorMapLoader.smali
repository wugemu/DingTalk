.class public Lcom/autonavi/amap/mapcore/IndoorMapLoader;
.super Lcom/autonavi/amap/mapcore/BaseMapLoader;
.source "IndoorMapLoader.java"


# static fields
.field private static final IndoorSignKey:Ljava/lang/String; = "@1071a2a4e3gte2Uc32cY3a98Tf33H1c4Gc23f"


# instance fields
.field private mIndoorChannel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/MapCore;Lcom/autonavi/amap/mapcore/BaseMapCallImplement;I)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;-><init>()V

    .line 41
    const-string/jumbo v0, "amap7"

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mIndoorChannel:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->datasource:I

    .line 20
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    .line 21
    iput-object p2, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->createtime:J

    .line 23
    return-void
.end method

.method private assScodeToParma(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fn;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/amap/api/mapcore/util/fg;->a()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&ts="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    .line 146
    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/amap/api/mapcore/util/fg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIndoorMD5Params(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mIndoorChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@1071a2a4e3gte2Uc32cY3a98Tf33H1c4Gc23f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/Md5Utility;->getStringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIndoorRequestParams()Ljava/lang/String;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 60
    .line 63
    const-string/jumbo v6, ";"

    move v4, v5

    move-object v2, v1

    move-object v3, v1

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v7

    .line 66
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    iget v8, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->mIndoorIndex:I

    .line 67
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mapTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    iget v0, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->mIndoorVersion:I

    .line 68
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p0, v7}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->containllegal(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 69
    invoke-virtual {p0, v7}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->isAssic(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 72
    if-nez v3, :cond_0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    :goto_1
    if-nez v2, :cond_1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    :goto_2
    if-nez v1, :cond_2

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    .line 64
    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 80
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 85
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    .line 88
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 90
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 91
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 97
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 99
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, " "

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 101
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 106
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 108
    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, " "

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 111
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 110
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_9
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    :try_start_0
    const-string/jumbo v0, "poiid="

    .line 117
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v3, "&floor="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "&version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "&diver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/amap/api/mapcore/util/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "&servicetype=unify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "&zoomlevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapCore;->getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "&key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fd;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_4
    invoke-direct {p0, v4}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->assScodeToParma(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_a
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_3
.end method

.method public static getInt2([BI)I
    .locals 4

    .prologue
    .line 26
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 27
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 28
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 29
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 30
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x0

    add-int/2addr v0, v1

    .line 31
    return v0
.end method

.method public static getShort2([BI)S
    .locals 2

    .prologue
    .line 35
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 36
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 37
    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    int-to-short v0, v0

    .line 38
    return v0
.end method

.method private processReceivedIndoorData()V
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
    const/4 v5, 0x0

    .line 181
    :goto_0
    iget v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->nextImgDataLength:I

    if-nez v0, :cond_1

    .line 183
    iget v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataSize:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataBuffer:[B

    invoke-static {v0, v5}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->getInt2([BI)I

    move-result v0

    iput v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->nextImgDataLength:I

    .line 186
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->processReceivedIndoorData()V

    .line 205
    :cond_0
    return-void

    .line 190
    :cond_1
    iget v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataSize:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->nextImgDataLength:I

    if-lt v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->nextImgDataLength:I

    invoke-virtual {p0, v0, v5, v1}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->processReceivedTileDataV4([BII)V

    .line 196
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->nextImgDataLength:I

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataBuffer:[B

    iget v3, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataSize:I

    iget v4, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->nextImgDataLength:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Lcom/autonavi/amap/mapcore/Convert;->moveArray([BI[BII)V

    .line 200
    iget v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataSize:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->nextImgDataLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataSize:I

    .line 201
    iput v5, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->nextImgDataLength:I

    goto :goto_0
.end method


# virtual methods
.method protected getGridParma()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->getIndoorRequestParams()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMapAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string/jumbo v0, "http://restapi.amap.com/v3/indoor/indoormaps"

    return-object v0
.end method

.method protected getMapSvrPath()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    iget v1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->datasource:I

    packed-switch v1, :pswitch_data_0

    .line 170
    :goto_0
    return-object v0

    .line 165
    :pswitch_0
    const-string/jumbo v0, "?"

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected isNeedProcessReturn()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 288
    iget v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->datasource:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 291
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
    .line 174
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mapTiles:Ljava/util/ArrayList;

    iget v2, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->datasource:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isIndoorGridsInScreen(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method protected processReceivedDataHeader(I)Z
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    iget v2, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataSize:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 271
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataBuffer:[B

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataBuffer:[B

    add-int/lit8 v5, p1, -0x6

    invoke-static {v2, v3, v4, v1, v5}, Lcom/autonavi/amap/mapcore/Convert;->moveArray([BI[BII)V

    .line 273
    iget v2, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataSize:I

    add-int/lit8 v2, v2, -0x6

    iput v2, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataSize:I

    .line 275
    iput v1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->nextImgDataLength:I

    .line 276
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedHeader:Z

    .line 278
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->processReceivedIndoorData()V

    .line 281
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected processReceivedTileDataV4([BII)V
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
    const/4 v5, 0x0

    .line 213
    add-int/lit8 v2, p2, 0x4

    .line 216
    add-int/lit8 v1, v2, 0x1

    aget-byte v3, p1, v2

    .line 217
    const/16 v0, 0xa

    if-le v3, v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const-string/jumbo v0, ""

    .line 225
    if-lez v3, :cond_4

    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v4, p3, :cond_4

    .line 226
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v0, p1, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v6, v0

    .line 228
    :goto_1
    add-int v0, v1, v3

    .line 230
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapCore;->isMapEngineValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    if-le p3, v2, :cond_0

    .line 238
    invoke-static {p1, v0}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->getShort2([BI)S

    move-result v8

    .line 239
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mMapCallback:Lcom/autonavi/amap/mapcore/BaseMapCallImplement;

    iget v1, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->datasource:I

    invoke-virtual {v0, v1, v6, v8}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isIndoorGridInScreen(ILjava/lang/String;S)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v7, v0

    .line 242
    :goto_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->mGLMapEngine:Lcom/autonavi/amap/mapcore/MapCore;

    sub-int v3, p3, v2

    iget v4, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->datasource:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VMapDataCache;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->datasource:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/autonavi/amap/mapcore/VMapDataCache;->putRecoder([BLjava/lang/String;I)Lcom/autonavi/amap/mapcore/VMapDataRecoder;

    .line 247
    :cond_2
    if-eqz v7, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->doCancel()V

    goto :goto_0

    :cond_3
    move v7, v5

    .line 239
    goto :goto_2

    :cond_4
    move-object v6, v0

    goto :goto_1
.end method

.method protected processRecivedDataByType()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->processReceivedIndoorData()V

    .line 311
    return-void
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
    .line 258
    iget v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->datasource:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataBuffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->recievedDataSize:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;->processRecivedVersionData([BII)V

    .line 262
    :cond_0
    return-void
.end method
