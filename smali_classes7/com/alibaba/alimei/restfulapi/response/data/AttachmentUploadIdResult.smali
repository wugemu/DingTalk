.class public Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;
.super Ljava/lang/Object;
.source "AttachmentUploadIdResult.java"


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;

.field private uploadid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;->uploadid:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;->code:I

    .line 31
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;->msg:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setUploadid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;->uploadid:Ljava/lang/String;

    .line 23
    return-void
.end method
