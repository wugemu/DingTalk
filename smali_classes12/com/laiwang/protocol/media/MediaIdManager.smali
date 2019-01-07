.class public Lcom/laiwang/protocol/media/MediaIdManager;
.super Ljava/lang/Object;
.source "MediaIdManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMediaType(Lcom/laiwang/protocol/media/MediaId;Lcom/laiwang/protocol/media/MediaType;)Z
    .locals 1
    .param p0, "mediaIdObj"    # Lcom/laiwang/protocol/media/MediaId;
    .param p1, "expectType"    # Lcom/laiwang/protocol/media/MediaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 150
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/media/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkMediaType(Ljava/lang/String;Lcom/laiwang/protocol/media/MediaType;)Z
    .locals 8
    .param p0, "mediaIdString"    # Ljava/lang/String;
    .param p1, "expectType"    # Lcom/laiwang/protocol/media/MediaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 128
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    .line 141
    :cond_1
    :goto_0
    return v4

    .line 130
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v1

    .line 131
    .local v1, "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->getMediaIdVersion(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 132
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdDecoding(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v0

    .line 133
    .local v0, "actType":Lcom/laiwang/protocol/media/MediaType;
    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/media/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 134
    .end local v0    # "actType":Lcom/laiwang/protocol/media/MediaType;
    :cond_3
    const/4 v6, 0x2

    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->getMediaIdVersion(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 135
    invoke-virtual {v1, p0}, Lcom/laiwang/protocol/media/MediaIdEncoding;->newMediaIdDecoding(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v2

    .line 136
    .local v2, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eq v6, p1, :cond_1

    :cond_4
    move v4, v5

    goto :goto_0

    .line 138
    .end local v1    # "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    .end local v2    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    :catch_0
    move-exception v3

    .line 139
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Lcom/laiwang/protocol/media/MediaIdEncodingException;

    invoke-direct {v4, v3}, Lcom/laiwang/protocol/media/MediaIdEncodingException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v1    # "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    :cond_5
    move v4, v5

    .line 141
    goto :goto_0
.end method

.method public static convertToDstMediaId(Ljava/lang/String;Lcom/laiwang/protocol/media/MediaType;)Ljava/lang/String;
    .locals 3
    .param p0, "srcMediaIdString"    # Ljava/lang/String;
    .param p1, "dstType"    # Lcom/laiwang/protocol/media/MediaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 431
    :cond_0
    const/4 v2, 0x0

    .line 437
    :goto_0
    return-object v2

    .line 434
    :cond_1
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v1

    .line 436
    .local v1, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/media/MediaId;->clone(I)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 437
    .local v0, "dstMediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFrom(Lcom/laiwang/protocol/media/MediaId;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static convertToMediaIdFrom(Lcom/laiwang/protocol/media/MediaIdExtDO;)Ljava/lang/String;
    .locals 3
    .param p0, "mediaIdExtDO"    # Lcom/laiwang/protocol/media/MediaIdExtDO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 204
    if-nez p0, :cond_0

    new-instance v1, Lcom/laiwang/protocol/media/MediaIdEncodingException;

    const-string/jumbo v2, "mediaIdExtDO object empty"

    invoke-direct {v1, v2}, Lcom/laiwang/protocol/media/MediaIdEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/media/MediaIdEncoding;

    invoke-direct {v0}, Lcom/laiwang/protocol/media/MediaIdEncoding;-><init>()V

    .line 206
    .local v0, "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/laiwang/protocol/media/MediaIdEncoding;->encodingV2MediaId(Lcom/laiwang/protocol/media/MediaIdExtDO;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static convertToMediaIdV1FromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v14, 0x0

    .line 360
    const-string/jumbo v12, "."

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 361
    .local v2, "firstIdxDot":I
    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-lt v2, v12, :cond_2

    :cond_0
    move-object v7, v11

    .line 396
    :cond_1
    :goto_0
    return-object v7

    .line 363
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "@"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 365
    .local v7, "mediaId":Ljava/lang/String;
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "fileType":Ljava/lang/String;
    const-string/jumbo v12, "_"

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 367
    .local v3, "firstUnderLineIdx":I
    if-lez v3, :cond_3

    .line 368
    invoke-virtual {v0, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_3
    const-string/jumbo v12, "@"

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 371
    .local v1, "firstAtIdx":I
    if-lez v1, :cond_4

    .line 372
    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 374
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "image_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, "imageType":Ljava/lang/String;
    const/4 v8, 0x0

    .line 377
    .local v8, "mediaType":Lcom/laiwang/protocol/media/MediaType;
    :try_start_0
    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaType;->valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaType;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 380
    :goto_1
    if-eqz v8, :cond_7

    .line 382
    invoke-virtual {p0, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 383
    .local v10, "subString":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v12, 0x2

    if-ge v4, v12, :cond_6

    .line 384
    const-string/jumbo v12, "_"

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 385
    .local v6, "lastUnderLineIdx":I
    if-gtz v6, :cond_5

    move-object v7, v11

    goto :goto_0

    .line 386
    :cond_5
    invoke-virtual {v10, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 383
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 388
    .end local v6    # "lastUnderLineIdx":I
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "@"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 392
    .end local v4    # "i":I
    .end local v10    # "subString":Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, "realUrl":Ljava/lang/String;
    invoke-static {v9}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    if-eqz v12, :cond_1

    .end local v9    # "realUrl":Ljava/lang/String;
    :goto_3
    move-object v7, v11

    .line 396
    goto/16 :goto_0

    :catch_0
    move-exception v12

    goto :goto_1

    :catch_1
    move-exception v12

    goto :goto_3
.end method

.method public static convertToMediaIdV2FromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 400
    const-string/jumbo v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 401
    .local v0, "firstIdxDot":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 403
    .end local p0    # "path":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "path":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static convertToOriginalPath(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mediaIdObj"    # Lcom/laiwang/protocol/media/MediaId;
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getVersion()I

    move-result v1

    .line 257
    .local v1, "version":I
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v0

    .line 258
    .local v0, "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ddmedia/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/laiwang/protocol/media/MediaIdEncoding;->getNewMediaFileName(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    :goto_0
    return-object v2

    .line 260
    :cond_0
    if-nez p1, :cond_1

    .line 261
    invoke-virtual {v0, p0, v3, v3}, Lcom/laiwang/protocol/media/MediaIdEncoding;->getMediaFileName(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 263
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/laiwang/protocol/media/MediaIdEncoding;->getMediaFileName(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static convertToUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 69
    if-nez p0, :cond_1

    move-object p0, v1

    .line 80
    :cond_0
    :goto_0
    return-object p0

    .line 71
    :cond_1
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->getMediaIdVersion(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "version":I
    if-nez v0, :cond_2

    .line 75
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdToUrlWithParas(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 77
    :cond_2
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/laiwang/protocol/media/MediaIdEncoding;->newMediaIdToUrlWithParas(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 79
    .end local v0    # "version":I
    :cond_3
    const-string/jumbo v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lcom/laiwang/protocol/media/MediaIdEncodingException;

    const-string/jumbo v2, "input must be start with @/$/http/https"

    invoke-direct {v1, v2}, Lcom/laiwang/protocol/media/MediaIdEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAuthType(Lcom/laiwang/protocol/media/MediaId;)Lcom/laiwang/protocol/media/AuthType;
    .locals 1
    .param p0, "mediaId"    # Lcom/laiwang/protocol/media/MediaId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getAuthType()I

    move-result v0

    invoke-static {v0}, Lcom/laiwang/protocol/media/AuthType;->getAuthType(I)Lcom/laiwang/protocol/media/AuthType;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthType(Ljava/lang/String;)Lcom/laiwang/protocol/media/AuthType;
    .locals 2
    .param p0, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 461
    .local v0, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->getAuthType(Lcom/laiwang/protocol/media/MediaId;)Lcom/laiwang/protocol/media/AuthType;

    move-result-object v1

    return-object v1
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string/jumbo v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 408
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 409
    :cond_0
    const/4 v1, 0x0

    .line 411
    :goto_0
    return-object v1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getGifThumbFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 293
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "realMediaId":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdDecoding(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 296
    .local v0, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    sget-object v3, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;

    invoke-static {v0, v3}, Lcom/laiwang/protocol/media/MediaIdManager;->checkMediaType(Lcom/laiwang/protocol/media/MediaId;Lcom/laiwang/protocol/media/MediaType;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0, v6}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToOriginalFileName(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 306
    .end local p0    # "mediaId":Ljava/lang/String;
    .local v2, "thumbObj":Lcom/laiwang/protocol/media/MediaId;
    :cond_0
    :goto_0
    return-object p0

    .line 299
    .end local v2    # "thumbObj":Lcom/laiwang/protocol/media/MediaId;
    .restart local p0    # "mediaId":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/laiwang/protocol/media/MediaId;

    sget-object v3, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    invoke-direct {v2, v3}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 300
    .restart local v2    # "thumbObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->isBurn()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/media/MediaId;->setBurn(Z)V

    .line 301
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/media/MediaId;->setHeight(I)V

    .line 302
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getSequence()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/laiwang/protocol/media/MediaId;->setSequence(J)V

    .line 303
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/media/MediaId;->setWidth(I)V

    .line 304
    invoke-static {v2, v6}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToOriginalFileName(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getGifThumbHttpUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "thumbParas"    # Ljava/lang/String;
    .param p2, "isWebp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "realMediaId":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdDecoding(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 318
    .local v0, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    sget-object v4, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;

    invoke-static {v0, v4}, Lcom/laiwang/protocol/media/MediaIdManager;->checkMediaType(Lcom/laiwang/protocol/media/MediaId;Lcom/laiwang/protocol/media/MediaType;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, p1, p2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpWithParas(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 330
    .end local v0    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    .end local v1    # "realMediaId":Ljava/lang/String;
    .end local p0    # "mediaId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 321
    .restart local v0    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    .restart local v1    # "realMediaId":Ljava/lang/String;
    .restart local p0    # "mediaId":Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/laiwang/protocol/media/MediaId;

    sget-object v4, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    invoke-direct {v3, v4}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 322
    .local v3, "thumbObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->isBurn()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/media/MediaId;->setBurn(Z)V

    .line 323
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/media/MediaId;->setHeight(I)V

    .line 324
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getSequence()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/laiwang/protocol/media/MediaId;->setSequence(J)V

    .line 325
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/media/MediaId;->setWidth(I)V

    .line 327
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/laiwang/protocol/media/MediaIdEncoding;->encodingMediaId(Lcom/laiwang/protocol/media/MediaId;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "thumbMediaId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpWithParas(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getMediaIdVersion(Ljava/lang/String;)I
    .locals 3
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 29
    if-nez p0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v1

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "trimMediaId":Ljava/lang/String;
    const-string/jumbo v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    const/4 v1, 0x2

    goto :goto_0

    .line 34
    :cond_2
    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMediaIdString(Ljava/lang/String;)Z
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    if-nez p0, :cond_1

    .line 20
    :cond_0
    :goto_0
    return v1

    .line 19
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "trimUri":Ljava/lang/String;
    const-string/jumbo v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isMediaIdUri(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTypeSupported(Ljava/lang/String;)Z
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "ext":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v6, 0x0

    .line 423
    :goto_0
    return v6

    .line 417
    :cond_0
    invoke-static {}, Lcom/laiwang/protocol/media/MediaType;->values()[Lcom/laiwang/protocol/media/MediaType;

    move-result-object v4

    .line 418
    .local v4, "mediaTypes":[Lcom/laiwang/protocol/media/MediaType;
    move-object v0, v4

    .local v0, "arr$":[Lcom/laiwang/protocol/media/MediaType;
    array-length v3, v4

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 419
    .local v5, "mt":Lcom/laiwang/protocol/media/MediaType;
    invoke-virtual {v5}, Lcom/laiwang/protocol/media/MediaType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 420
    const/4 v6, 0x1

    goto :goto_0

    .line 418
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 423
    .end local v5    # "mt":Lcom/laiwang/protocol/media/MediaType;
    :cond_2
    const-string/jumbo v6, "JPEG"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0
.end method

.method public static setDefaultDomain(Ljava/lang/String;)V
    .locals 0
    .param p0, "mediaUrl"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdEncoding(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaIdEncoding;

    .line 441
    return-void
.end method

.method public static setDefaultDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "mediaUrl"    # Ljava/lang/String;
    .param p1, "privateMediaUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 444
    invoke-static {p0, p1, v0, v0}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaIdEncoding;

    .line 445
    return-void
.end method

.method public static setDefaultDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "mediaUrl"    # Ljava/lang/String;
    .param p1, "privateMediaUrl"    # Ljava/lang/String;
    .param p2, "newMediaUrl"    # Ljava/lang/String;

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaIdEncoding;

    .line 449
    return-void
.end method

.method public static setDefaultDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "mediaUrl"    # Ljava/lang/String;
    .param p1, "privateMediaUrl"    # Ljava/lang/String;
    .param p2, "newMediaUrl"    # Ljava/lang/String;
    .param p3, "newMediaCDNUrl"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-static {p0, p1, p2, p3}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaIdEncoding;

    .line 454
    return-void
.end method

.method public static transferTo(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "urlOrMediaId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->getMediaIdVersion(Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, "version":I
    if-nez v0, :cond_1

    .line 55
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v3, v3}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdToUrlWithParas(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 60
    .end local v0    # "version":I
    .end local p0    # "mediaId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 56
    .restart local v0    # "version":I
    .restart local p0    # "mediaId":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 57
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/laiwang/protocol/media/MediaIdEncoding;->newMediaIdToUrlWithParas(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpWithParas(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transferToHttpWithParas(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "thumb"    # Ljava/lang/String;
    .param p2, "isWebp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->getMediaIdVersion(Ljava/lang/String;)I

    move-result v2

    .line 170
    .local v2, "version":I
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v0

    .line 171
    .local v0, "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    if-nez v2, :cond_1

    .line 173
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p1, v4, p2}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdToUrlWithParas(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 177
    .end local p0    # "uri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 174
    .restart local p0    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    if-ne v3, v2, :cond_0

    .line 175
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/laiwang/protocol/media/MediaIdEncoding;->newMediaIdToUrlWithParas(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 179
    .end local v0    # "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v3, Lcom/laiwang/protocol/media/MediaIdEncodingException;

    invoke-direct {v3, v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static transferToMediaIdFrom(Lcom/laiwang/protocol/media/MediaId;)Ljava/lang/String;
    .locals 3
    .param p0, "mediaIdObj"    # Lcom/laiwang/protocol/media/MediaId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 192
    if-nez p0, :cond_0

    new-instance v1, Lcom/laiwang/protocol/media/MediaIdEncodingException;

    const-string/jumbo v2, "mediaId object empty"

    invoke-direct {v1, v2}, Lcom/laiwang/protocol/media/MediaIdEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getVersion()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 195
    new-instance v0, Lcom/laiwang/protocol/media/MediaIdEncoding;

    invoke-direct {v0}, Lcom/laiwang/protocol/media/MediaIdEncoding;-><init>()V

    .line 196
    .local v0, "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdExtUtils;->convertFrom(Lcom/laiwang/protocol/media/MediaId;)Lcom/laiwang/protocol/media/MediaIdExtDO;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/laiwang/protocol/media/MediaIdEncoding;->encodingV2MediaId(Lcom/laiwang/protocol/media/MediaIdExtDO;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    .line 198
    .end local v0    # "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    :cond_1
    new-instance v0, Lcom/laiwang/protocol/media/MediaIdEncoding;

    invoke-direct {v0}, Lcom/laiwang/protocol/media/MediaIdEncoding;-><init>()V

    .line 199
    .restart local v0    # "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/laiwang/protocol/media/MediaIdEncoding;->encodingMediaId(Lcom/laiwang/protocol/media/MediaId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 338
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 356
    .end local p0    # "url":Ljava/lang/String;
    .local v0, "isMediaIdV2":Z
    .local v1, "lastSlash":I
    .local v2, "path":Ljava/lang/String;
    .local v3, "res":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 339
    .end local v0    # "isMediaIdV2":Z
    .end local v1    # "lastSlash":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "res":Ljava/lang/String;
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/laiwang/protocol/media/MediaIdEncoding;->isMediaIdPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    const-string/jumbo v4, "ddmedia/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 345
    .restart local v0    # "isMediaIdV2":Z
    const-string/jumbo v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 346
    .restart local v1    # "lastSlash":I
    if-ltz v1, :cond_0

    .line 349
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    .restart local v2    # "path":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 352
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToMediaIdV2FromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 354
    :cond_2
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToMediaIdV1FromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 355
    .restart local v3    # "res":Ljava/lang/String;
    if-eqz v3, :cond_0

    move-object p0, v3

    .line 356
    goto :goto_0
.end method

.method public static transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;
    .locals 5
    .param p0, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 275
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->getMediaIdVersion(Ljava/lang/String;)I

    move-result v2

    .line 277
    .local v2, "version":I
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v0

    .line 278
    .local v0, "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    const/4 v3, 0x2

    if-ne v3, v2, :cond_0

    .line 279
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/media/MediaIdEncoding;->newMediaIdDecoding(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v3

    .line 282
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdDecoding(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v3, Lcom/laiwang/protocol/media/MediaIdEncodingException;

    invoke-direct {v3, v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static transferToOriginalFileName(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mediaIdObj"    # Lcom/laiwang/protocol/media/MediaId;
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getVersion()I

    move-result v1

    .line 221
    .local v1, "version":I
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v0

    .line 222
    .local v0, "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 223
    invoke-virtual {v0, p0, p1}, Lcom/laiwang/protocol/media/MediaIdEncoding;->getNewMediaFileName(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    :goto_0
    return-object v2

    .line 224
    :cond_0
    if-nez p1, :cond_1

    .line 225
    invoke-virtual {v0, p0, v3, v3}, Lcom/laiwang/protocol/media/MediaIdEncoding;->getMediaFileName(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 227
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/laiwang/protocol/media/MediaIdEncoding;->getMediaFileName(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static transferToOriginalFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 238
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->getMediaIdVersion(Ljava/lang/String;)I

    move-result v2

    .line 239
    .local v2, "ver":I
    const/4 v3, 0x2

    if-ne v3, v2, :cond_1

    .line 240
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "realMediaId":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/laiwang/protocol/media/MediaIdEncoding;->newMediaIdDecoding(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 242
    .local v0, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v5}, Lcom/laiwang/protocol/media/MediaIdEncoding;->getMediaFileName(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 248
    .end local v0    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    .end local v1    # "realMediaId":Ljava/lang/String;
    .end local p0    # "mediaId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 243
    .restart local p0    # "mediaId":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_0

    .line 244
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .restart local v1    # "realMediaId":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdDecoding(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 246
    .restart local v0    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v5}, Lcom/laiwang/protocol/media/MediaIdEncoding;->getMediaFileName(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static transferToTfsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "paras"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 116
    .end local p0    # "uri":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 96
    .restart local p0    # "uri":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "mediaId":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaUrlEncoding()Lcom/laiwang/protocol/media/MediaIdEncoding;

    move-result-object v1

    .line 98
    .local v1, "encoding":Lcom/laiwang/protocol/media/MediaIdEncoding;
    invoke-virtual {v1, v4}, Lcom/laiwang/protocol/media/MediaIdEncoding;->mediaIdDecoding(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v5

    .line 100
    .local v5, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    const/4 v8, 0x0

    .line 101
    .local v8, "size":Ljava/lang/String;
    const/4 v10, 0x0

    .line 103
    .local v10, "webp":Z
    if-eqz p1, :cond_3

    invoke-virtual {v5}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/laiwang/protocol/media/MediaType;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "IMAGE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 104
    const-string/jumbo v11, "&"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "parasArray":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v7

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    .line 106
    .local v6, "paraPair":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_2

    const-string/jumbo v11, "s="

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 107
    const-string/jumbo v11, "s="

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 105
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :cond_2
    const-string/jumbo v11, "webp"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 109
    const/4 v10, 0x1

    goto :goto_2

    .line 114
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "paraPair":Ljava/lang/String;
    .end local v7    # "parasArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v5, v4, v8}, Lcom/laiwang/protocol/media/MediaIdEncoding;->getMediaFileName(Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, "srcFileName":Ljava/lang/String;
    if-eqz v10, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_.webp"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    move-object p0, v9

    .line 116
    goto :goto_0
.end method
