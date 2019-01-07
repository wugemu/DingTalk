.class public Lcom/alibaba/alimei/restfulapi/data/Attach;
.super Ljava/lang/Object;
.source "Attach.java"


# instance fields
.field public contentId:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public encoding:Ljava/lang/String;

.field public height:I

.field public id:Ljava/lang/String;

.field public localId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public originId:Ljava/lang/String;

.field public originSpaceId:Ljava/lang/String;

.field public originToken:Ljava/lang/String;

.field public partId:Ljava/lang/String;

.field public size:I

.field public tempLocation:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->originId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->originSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->originToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPartId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->partId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->size:I

    return v0
.end method

.method public getTempLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->tempLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->width:I

    return v0
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->contentId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->contentType:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->encoding:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->height:I

    .line 99
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->localId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->name:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setOriginId(Ljava/lang/String;)V
    .locals 0
    .param p1, "originId"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->originId:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setOriginSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "originSpaceId"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->originSpaceId:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setOriginToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "originToken"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->originToken:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setPartId(Ljava/lang/String;)V
    .locals 0
    .param p1, "partId"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->partId:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->size:I

    .line 93
    return-void
.end method

.method public setTempLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "tempLocation"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->tempLocation:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->width:I

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Attach [name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", localId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->localId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", originSpaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->originSpaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", originId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->originId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", originToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->originToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tempLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->tempLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/data/Attach;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
