.class public Lcom/laiwang/protocol/upload/UploaderExtra;
.super Ljava/lang/Object;
.source "UploaderExtra.java"


# instance fields
.field private authType:I

.field private conversationId:Ljava/lang/String;

.field private expiredTime:I

.field private filePath:Ljava/lang/String;

.field private isHd:Z

.field private isLarge:Z

.field private isMediaId:Z

.field private isNg:Z

.field private isPrivate:Z

.field private isStreaming:Z

.field private mediaIdVer:I

.field private mimeType:Ljava/lang/String;

.field private uip:J

.field private upFrag:I

.field private upId:Ljava/lang/String;

.field private upIdx:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->upIdx:I

    .line 16
    iput-boolean v1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isPrivate:Z

    .line 17
    iput-boolean v2, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isHd:Z

    .line 18
    iput-boolean v2, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isMediaId:Z

    .line 19
    iput-boolean v1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isStreaming:Z

    .line 26
    iput-boolean v1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isNg:Z

    .line 28
    sget-object v0, Lcom/laiwang/protocol/upload/Constants$a;->a:Lcom/laiwang/protocol/upload/Constants$a;

    iget v0, v0, Lcom/laiwang/protocol/upload/Constants$a;->d:I

    iput v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->mediaIdVer:I

    .line 30
    sget-object v0, Lcom/laiwang/protocol/upload/Constants$b;->a:Lcom/laiwang/protocol/upload/Constants$b;

    iget v0, v0, Lcom/laiwang/protocol/upload/Constants$b;->f:I

    iput v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->authType:I

    .line 34
    return-void
.end method


# virtual methods
.method public getAuthType()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->authType:I

    return v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredTime()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->expiredTime:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaIdVer()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->mediaIdVer:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPointsSet()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUip()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->uip:J

    return-wide v0
.end method

.method public getUpFrag()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->upFrag:I

    return v0
.end method

.method public getUpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->upId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpIdx()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->upIdx:I

    return v0
.end method

.method public isAuth()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    iget v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->mediaIdVer:I

    sget-object v1, Lcom/laiwang/protocol/upload/Constants$a;->c:Lcom/laiwang/protocol/upload/Constants$a;

    invoke-virtual {v1}, Lcom/laiwang/protocol/upload/Constants$a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCSpace()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    iget v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->mediaIdVer:I

    sget-object v1, Lcom/laiwang/protocol/upload/Constants$a;->b:Lcom/laiwang/protocol/upload/Constants$a;

    invoke-virtual {v1}, Lcom/laiwang/protocol/upload/Constants$a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHd()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isHd:Z

    return v0
.end method

.method public isLarge()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isLarge:Z

    return v0
.end method

.method public isMediaId()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isMediaId:Z

    return v0
.end method

.method public isNg()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isNg:Z

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isPrivate:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isStreaming:Z

    return v0
.end method

.method public setAuth(Z)V
    .locals 1
    .param p1, "auth"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    sget-object v0, Lcom/laiwang/protocol/upload/Constants$a;->c:Lcom/laiwang/protocol/upload/Constants$a;

    invoke-virtual {v0}, Lcom/laiwang/protocol/upload/Constants$a;->a()I

    move-result v0

    iput v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->mediaIdVer:I

    .line 151
    :cond_0
    return-void
.end method

.method public setAuthType(I)V
    .locals 0
    .param p1, "authType"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->authType:I

    .line 159
    return-void
.end method

.method public setCSpace(Z)V
    .locals 1
    .param p1, "cSpace"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    sget-object v0, Lcom/laiwang/protocol/upload/Constants$a;->b:Lcom/laiwang/protocol/upload/Constants$a;

    invoke-virtual {v0}, Lcom/laiwang/protocol/upload/Constants$a;->a()I

    move-result v0

    iput v0, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->mediaIdVer:I

    .line 140
    :cond_0
    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->conversationId:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setExpiredTime(I)V
    .locals 0
    .param p1, "expiredTime"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->expiredTime:I

    .line 167
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->filePath:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setHd(Z)V
    .locals 0
    .param p1, "isHd"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isHd:Z

    .line 88
    return-void
.end method

.method public setLarge(Z)V
    .locals 0
    .param p1, "large"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isLarge:Z

    .line 121
    return-void
.end method

.method public setMediaId(Z)V
    .locals 0
    .param p1, "isMediaId"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isMediaId:Z

    .line 96
    return-void
.end method

.method public setMediaIdVer(I)V
    .locals 1
    .param p1, "mediaIdVer"    # I

    .prologue
    .line 182
    invoke-static {p1}, Lcom/laiwang/protocol/upload/Constants$a;->a(I)Lcom/laiwang/protocol/upload/Constants$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iput p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->mediaIdVer:I

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->mimeType:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setNg(Z)V
    .locals 0
    .param p1, "ng"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isNg:Z

    .line 129
    return-void
.end method

.method public setPointsSet(J)V
    .locals 0
    .param p1, "pointsSet"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    return-void
.end method

.method public setPrivate(Z)V
    .locals 0
    .param p1, "isPrivate"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isPrivate:Z

    .line 80
    return-void
.end method

.method public setStreaming(Z)V
    .locals 0
    .param p1, "streaming"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->isStreaming:Z

    .line 175
    return-void
.end method

.method public setUip(J)V
    .locals 1
    .param p1, "uip"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->uip:J

    return-void
.end method

.method public setUpFrag(I)V
    .locals 0
    .param p1, "upFrag"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->upFrag:I

    return-void
.end method

.method public setUpId(Ljava/lang/String;)V
    .locals 0
    .param p1, "upId"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->upId:Ljava/lang/String;

    return-void
.end method

.method public setUpIdx(I)V
    .locals 0
    .param p1, "upIdx"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/laiwang/protocol/upload/UploaderExtra;->upIdx:I

    .line 56
    return-void
.end method
