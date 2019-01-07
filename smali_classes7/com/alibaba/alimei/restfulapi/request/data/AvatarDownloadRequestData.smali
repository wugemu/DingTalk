.class public Lcom/alibaba/alimei/restfulapi/request/data/AvatarDownloadRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "AvatarDownloadRequestData.java"


# instance fields
.field private avatarSpec:I

.field private email:Ljava/lang/String;

.field private fileId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarSpec()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AvatarDownloadRequestData;->avatarSpec:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AvatarDownloadRequestData;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AvatarDownloadRequestData;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarSpec(I)V
    .locals 0
    .param p1, "avatarSpec"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AvatarDownloadRequestData;->avatarSpec:I

    .line 24
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AvatarDownloadRequestData;->email:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AvatarDownloadRequestData;->fileId:Ljava/lang/String;

    .line 18
    return-void
.end method
