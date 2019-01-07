.class public Lcom/laiwang/protocol/media/MediaId;
.super Ljava/lang/Object;
.source "MediaId.java"


# instance fields
.field private angle:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private authType:I

.field private burn:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private expiredAt:J

.field private extType:Ljava/lang/String;

.field private height:I

.field private idc:I

.field private openId:J

.field private randomFactor:[B

.field private sequence:J

.field private type:Lcom/laiwang/protocol/media/MediaType;

.field private version:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/media/MediaType;)V
    .locals 1
    .param p1, "mediaType"    # Lcom/laiwang/protocol/media/MediaType;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/media/MediaId;->burn:Z

    .line 41
    iput-object p1, p0, Lcom/laiwang/protocol/media/MediaId;->type:Lcom/laiwang/protocol/media/MediaType;

    .line 42
    return-void
.end method


# virtual methods
.method public clone(I)Lcom/laiwang/protocol/media/MediaId;
    .locals 2
    .param p1, "dstType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    if-ltz p1, :cond_0

    sget v0, Lcom/laiwang/protocol/media/MediaType;->MAX_VALUE:I

    if-le p1, v0, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    .line 206
    :cond_1
    iget v0, p0, Lcom/laiwang/protocol/media/MediaId;->version:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 207
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/media/MediaId;->clonev2(I)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/media/MediaId;->clonev1(I)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    goto :goto_0
.end method

.method public clonev1(I)Lcom/laiwang/protocol/media/MediaId;
    .locals 6
    .param p1, "dstType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 182
    if-ltz p1, :cond_0

    sget v3, Lcom/laiwang/protocol/media/MediaType;->MAX_VALUE:I

    if-le p1, v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 197
    :goto_0
    return-object v0

    .line 186
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaType;->getMediaType(I)Lcom/laiwang/protocol/media/MediaType;

    move-result-object v1

    .line 187
    .local v1, "mediaType":Lcom/laiwang/protocol/media/MediaType;
    new-instance v0, Lcom/laiwang/protocol/media/MediaId;

    invoke-direct {v0, v1}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 188
    .local v0, "dstObj":Lcom/laiwang/protocol/media/MediaId;
    iget-boolean v3, p0, Lcom/laiwang/protocol/media/MediaId;->burn:Z

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/media/MediaId;->setBurn(Z)V

    .line 189
    iget-wide v4, p0, Lcom/laiwang/protocol/media/MediaId;->sequence:J

    invoke-virtual {v0, v4, v5}, Lcom/laiwang/protocol/media/MediaId;->setSequence(J)V

    .line 190
    iget v3, p0, Lcom/laiwang/protocol/media/MediaId;->width:I

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/media/MediaId;->setWidth(I)V

    .line 191
    iget v3, p0, Lcom/laiwang/protocol/media/MediaId;->height:I

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/media/MediaId;->setHeight(I)V

    .line 192
    iget-object v3, p0, Lcom/laiwang/protocol/media/MediaId;->randomFactor:[B

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/media/MediaId;->setRandomFactor([B)V

    .line 193
    iget v3, p0, Lcom/laiwang/protocol/media/MediaId;->idc:I

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/media/MediaId;->setIdc(I)V

    .line 194
    iget v3, p0, Lcom/laiwang/protocol/media/MediaId;->authType:I

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/media/MediaId;->setAuthType(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v0    # "dstObj":Lcom/laiwang/protocol/media/MediaId;
    .end local v1    # "mediaType":Lcom/laiwang/protocol/media/MediaType;
    :catch_0
    move-exception v3

    move-object v0, v2

    goto :goto_0
.end method

.method public clonev2(I)Lcom/laiwang/protocol/media/MediaId;
    .locals 8
    .param p1, "dstType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 153
    const/4 v2, 0x0

    .line 156
    .local v2, "fileExt":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaType;->getMediaType(I)Lcom/laiwang/protocol/media/MediaType;

    move-result-object v0

    .line 157
    .local v0, "dstMediaType":Lcom/laiwang/protocol/media/MediaType;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "mediaTypeName":Ljava/lang/String;
    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 159
    .local v3, "idx":I
    if-lez v3, :cond_0

    .line 160
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 166
    :cond_0
    if-nez v2, :cond_1

    .line 178
    .end local v0    # "dstMediaType":Lcom/laiwang/protocol/media/MediaType;
    .end local v3    # "idx":I
    .end local v4    # "mediaTypeName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 168
    .restart local v0    # "dstMediaType":Lcom/laiwang/protocol/media/MediaType;
    .restart local v3    # "idx":I
    .restart local v4    # "mediaTypeName":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/laiwang/protocol/media/MediaId;

    invoke-direct {v1, v0}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 169
    .local v1, "dstObj":Lcom/laiwang/protocol/media/MediaId;
    iget v5, p0, Lcom/laiwang/protocol/media/MediaId;->width:I

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/media/MediaId;->setWidth(I)V

    .line 170
    iget v5, p0, Lcom/laiwang/protocol/media/MediaId;->height:I

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/media/MediaId;->setHeight(I)V

    .line 171
    iget-object v5, p0, Lcom/laiwang/protocol/media/MediaId;->randomFactor:[B

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/media/MediaId;->setRandomFactor([B)V

    .line 172
    iget-wide v6, p0, Lcom/laiwang/protocol/media/MediaId;->openId:J

    invoke-virtual {v1, v6, v7}, Lcom/laiwang/protocol/media/MediaId;->setOpenId(J)V

    .line 173
    iget v5, p0, Lcom/laiwang/protocol/media/MediaId;->version:I

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/media/MediaId;->setVersion(I)V

    .line 174
    iget v5, p0, Lcom/laiwang/protocol/media/MediaId;->authType:I

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/media/MediaId;->setAuthType(I)V

    .line 175
    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/media/MediaId;->setExtType(Ljava/lang/String;)V

    .line 176
    iget v5, p0, Lcom/laiwang/protocol/media/MediaId;->idc:I

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/media/MediaId;->setIdc(I)V

    .line 177
    iget-wide v6, p0, Lcom/laiwang/protocol/media/MediaId;->expiredAt:J

    invoke-virtual {v1, v6, v7}, Lcom/laiwang/protocol/media/MediaId;->setExpiredAt(J)V

    goto :goto_0

    .line 163
    .end local v0    # "dstMediaType":Lcom/laiwang/protocol/media/MediaType;
    .end local v1    # "dstObj":Lcom/laiwang/protocol/media/MediaId;
    .end local v3    # "idx":I
    .end local v4    # "mediaTypeName":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public getAngle()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/laiwang/protocol/media/MediaId;->angle:I

    return v0
.end method

.method public getAuthType()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/laiwang/protocol/media/MediaId;->authType:I

    return v0
.end method

.method public getExpiredAt()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/laiwang/protocol/media/MediaId;->expiredAt:J

    return-wide v0
.end method

.method public getExtType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaId;->extType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    iget-object v2, p0, Lcom/laiwang/protocol/media/MediaId;->extType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/laiwang/protocol/media/MediaId;->extType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/laiwang/protocol/media/MediaId;->extType:Ljava/lang/String;

    .line 149
    :goto_0
    return-object v2

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/laiwang/protocol/media/MediaId;->type:Lcom/laiwang/protocol/media/MediaType;

    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "typeName":Ljava/lang/String;
    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "idx":I
    if-lez v0, :cond_1

    .line 147
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 149
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/laiwang/protocol/media/MediaId;->height:I

    return v0
.end method

.method public getIdc()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/laiwang/protocol/media/MediaId;->idc:I

    return v0
.end method

.method public getOpenId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/laiwang/protocol/media/MediaId;->openId:J

    return-wide v0
.end method

.method public getRandomFactor()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaId;->randomFactor:[B

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/laiwang/protocol/media/MediaId;->sequence:J

    return-wide v0
.end method

.method public getType()Lcom/laiwang/protocol/media/MediaType;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaId;->type:Lcom/laiwang/protocol/media/MediaType;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/laiwang/protocol/media/MediaId;->version:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/laiwang/protocol/media/MediaId;->width:I

    return v0
.end method

.method public isBurn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/laiwang/protocol/media/MediaId;->burn:Z

    return v0
.end method

.method public setAngle(I)V
    .locals 0
    .param p1, "angle"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/laiwang/protocol/media/MediaId;->angle:I

    .line 218
    return-void
.end method

.method public setAuthType(I)V
    .locals 0
    .param p1, "authType"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/laiwang/protocol/media/MediaId;->authType:I

    .line 116
    return-void
.end method

.method public setBurn(Z)V
    .locals 0
    .param p1, "burn"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/laiwang/protocol/media/MediaId;->burn:Z

    .line 56
    return-void
.end method

.method public setExpiredAt(J)V
    .locals 1
    .param p1, "expiredAt"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/laiwang/protocol/media/MediaId;->expiredAt:J

    .line 140
    return-void
.end method

.method public setExtType(Ljava/lang/String;)V
    .locals 0
    .param p1, "extType"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/laiwang/protocol/media/MediaId;->extType:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/laiwang/protocol/media/MediaId;->height:I

    .line 64
    return-void
.end method

.method public setIdc(I)V
    .locals 0
    .param p1, "idc"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/laiwang/protocol/media/MediaId;->idc:I

    .line 100
    return-void
.end method

.method public setOpenId(J)V
    .locals 1
    .param p1, "openId"    # J

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/laiwang/protocol/media/MediaId;->openId:J

    .line 132
    return-void
.end method

.method public setRandomFactor([B)V
    .locals 0
    .param p1, "randomFactor"    # [B

    .prologue
    .line 87
    iput-object p1, p0, Lcom/laiwang/protocol/media/MediaId;->randomFactor:[B

    .line 88
    return-void
.end method

.method public setSequence(J)V
    .locals 1
    .param p1, "sequence"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/laiwang/protocol/media/MediaId;->sequence:J

    .line 80
    return-void
.end method

.method public setType(Lcom/laiwang/protocol/media/MediaType;)V
    .locals 0
    .param p1, "type"    # Lcom/laiwang/protocol/media/MediaType;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/laiwang/protocol/media/MediaId;->type:Lcom/laiwang/protocol/media/MediaType;

    .line 92
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/laiwang/protocol/media/MediaId;->version:I

    .line 124
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/laiwang/protocol/media/MediaId;->width:I

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaId{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laiwang/protocol/media/MediaId;->type:Lcom/laiwang/protocol/media/MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/laiwang/protocol/media/MediaId;->sequence:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", burn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/laiwang/protocol/media/MediaId;->burn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laiwang/protocol/media/MediaId;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laiwang/protocol/media/MediaId;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laiwang/protocol/media/MediaId;->idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/protocol/media/MediaId;->extType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", authType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laiwang/protocol/media/MediaId;->authType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", randomFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/protocol/media/MediaId;->randomFactor:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laiwang/protocol/media/MediaId;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", openId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/laiwang/protocol/media/MediaId;->openId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
