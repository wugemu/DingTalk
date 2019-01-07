.class public Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;
.super Ljava/lang/Object;
.source "AttachmentChunkedUploadResult.java"


# instance fields
.field private code:I

.field private filepath:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private size:J

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->code:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->size:J

    return-wide v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->statusCode:I

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->code:I

    .line 65
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->filepath:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->filepath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->md5:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->msg:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->size:J

    .line 49
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->statusCode:I

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AttachmentChunkedUploadResult{statusCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
