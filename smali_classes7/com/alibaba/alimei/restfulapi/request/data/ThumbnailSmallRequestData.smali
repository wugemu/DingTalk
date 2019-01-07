.class public Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "ThumbnailSmallRequestData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;
    }
.end annotation


# instance fields
.field private extInfo:Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;

.field private fileId:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private mailId:Ljava/lang/String;

.field private publicAccount:Ljava/lang/String;

.field private spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "mailId"    # Ljava/lang/String;
    .param p3, "minSize"    # I
    .param p4, "maxSize"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->fileId:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->mailId:Ljava/lang/String;

    .line 11
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;

    invoke-direct {v0, p3, p4}, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;-><init>(II)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->extInfo:Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "mailId"    # Ljava/lang/String;
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "spaceId"    # Ljava/lang/String;
    .param p5, "minSize"    # I
    .param p6, "maxSize"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->fileId:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->mailId:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->groupId:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->spaceId:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;

    invoke-direct {v0, p5, p6}, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;-><init>(II)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->extInfo:Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;

    .line 20
    return-void
.end method


# virtual methods
.method public getExtInfo()Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->extInfo:Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getMailId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->mailId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->publicAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public setExtInfo(Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;)V
    .locals 0
    .param p1, "extInfo"    # Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->extInfo:Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;

    .line 60
    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->fileId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->groupId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setMailId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailId"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->mailId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPublicAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicAccount"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->publicAccount:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;->spaceId:Ljava/lang/String;

    .line 76
    return-void
.end method
