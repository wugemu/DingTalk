.class public Lcom/laiwang/protocol/media/MediaIdExtUtils;
.super Ljava/lang/Object;
.source "MediaIdExtUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFrom(Lcom/laiwang/protocol/media/MediaIdExtDO;)Lcom/laiwang/protocol/media/MediaId;
    .locals 12
    .param p0, "mediaIdExt"    # Lcom/laiwang/protocol/media/MediaIdExtDO;

    .prologue
    .line 8
    if-nez p0, :cond_1

    const/4 v5, 0x0

    .line 48
    :cond_0
    :goto_0
    return-object v5

    .line 10
    :cond_1
    new-instance v5, Lcom/laiwang/protocol/media/MediaId;

    sget-object v9, Lcom/laiwang/protocol/media/MediaType;->FILE_UNKNOWN:Lcom/laiwang/protocol/media/MediaType;

    invoke-direct {v5, v9}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 11
    .local v5, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->type:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 12
    const/4 v6, 0x0

    .line 13
    .local v6, "mediaType":Lcom/laiwang/protocol/media/MediaType;
    invoke-static {}, Lcom/laiwang/protocol/media/MediaType;->values()[Lcom/laiwang/protocol/media/MediaType;

    move-result-object v8

    .line 14
    .local v8, "mediaTypes":[Lcom/laiwang/protocol/media/MediaType;
    move-object v0, v8

    .local v0, "arr$":[Lcom/laiwang/protocol/media/MediaType;
    array-length v3, v8

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 15
    .local v2, "idx":Lcom/laiwang/protocol/media/MediaType;
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaType;->name()Ljava/lang/String;

    move-result-object v7

    .line 16
    .local v7, "mediaTypeName":Ljava/lang/String;
    const-string/jumbo v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 17
    .local v4, "mediaExtension":Ljava/lang/String;
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->type:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 18
    move-object v6, v2

    .line 14
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21
    .end local v2    # "idx":Lcom/laiwang/protocol/media/MediaType;
    .end local v4    # "mediaExtension":Ljava/lang/String;
    .end local v7    # "mediaTypeName":Ljava/lang/String;
    :cond_3
    new-instance v5, Lcom/laiwang/protocol/media/MediaId;

    .end local v5    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    invoke-direct {v5, v6}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 22
    .restart local v5    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->type:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/laiwang/protocol/media/MediaId;->setExtType(Ljava/lang/String;)V

    .line 24
    .end local v0    # "arr$":[Lcom/laiwang/protocol/media/MediaType;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "mediaType":Lcom/laiwang/protocol/media/MediaType;
    .end local v8    # "mediaTypes":[Lcom/laiwang/protocol/media/MediaType;
    :cond_4
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/laiwang/protocol/media/MediaId;->setVersion(I)V

    .line 25
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->authType:Ljava/lang/Integer;

    if-eqz v9, :cond_9

    .line 26
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->authType:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/laiwang/protocol/media/MediaId;->setAuthType(I)V

    .line 31
    :goto_2
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->width:Ljava/lang/Integer;

    if-eqz v9, :cond_5

    .line 32
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->width:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/laiwang/protocol/media/MediaId;->setWidth(I)V

    .line 34
    :cond_5
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->height:Ljava/lang/Integer;

    if-eqz v9, :cond_6

    .line 35
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->height:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/laiwang/protocol/media/MediaId;->setHeight(I)V

    .line 38
    :cond_6
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->idc:Ljava/lang/Integer;

    if-eqz v9, :cond_7

    .line 39
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->idc:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/laiwang/protocol/media/MediaId;->setIdc(I)V

    .line 41
    :cond_7
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->openId:Ljava/lang/Long;

    if-eqz v9, :cond_8

    .line 42
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->openId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/laiwang/protocol/media/MediaId;->setOpenId(J)V

    .line 44
    :cond_8
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->randFactor:[B

    invoke-virtual {v5, v9}, Lcom/laiwang/protocol/media/MediaId;->setRandomFactor([B)V

    .line 45
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->expiredAt:Ljava/lang/Long;

    if-eqz v9, :cond_0

    .line 46
    iget-object v9, p0, Lcom/laiwang/protocol/media/MediaIdExtDO;->expiredAt:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/laiwang/protocol/media/MediaId;->setExpiredAt(J)V

    goto/16 :goto_0

    .line 28
    :cond_9
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/laiwang/protocol/media/MediaId;->setAuthType(I)V

    goto :goto_2
.end method

.method public static convertFrom(Lcom/laiwang/protocol/media/MediaId;)Lcom/laiwang/protocol/media/MediaIdExtDO;
    .locals 4
    .param p0, "mediaId"    # Lcom/laiwang/protocol/media/MediaId;

    .prologue
    .line 52
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/media/MediaIdExtDO;

    invoke-direct {v0}, Lcom/laiwang/protocol/media/MediaIdExtDO;-><init>()V

    .line 55
    .local v0, "mediaIdExtDO":Lcom/laiwang/protocol/media/MediaIdExtDO;
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/media/MediaIdExtDO;->type:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getAuthType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/media/MediaIdExtDO;->authType:Ljava/lang/Integer;

    .line 57
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getIdc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/media/MediaIdExtDO;->idc:Ljava/lang/Integer;

    .line 58
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/media/MediaIdExtDO;->width:Ljava/lang/Integer;

    .line 59
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/media/MediaIdExtDO;->height:Ljava/lang/Integer;

    .line 60
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getRandomFactor()[B

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/media/MediaIdExtDO;->randFactor:[B

    .line 61
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getOpenId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/media/MediaIdExtDO;->openId:Ljava/lang/Long;

    .line 62
    invoke-virtual {p0}, Lcom/laiwang/protocol/media/MediaId;->getExpiredAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/laiwang/protocol/media/MediaIdExtDO;->expiredAt:Ljava/lang/Long;

    goto :goto_0
.end method
