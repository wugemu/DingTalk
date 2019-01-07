.class public Lcom/alibaba/alimei/restfulapi/response/data/AvatarUploadResult;
.super Ljava/lang/Object;
.source "AvatarUploadResult.java"


# instance fields
.field private fileId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AvatarUploadResult;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AvatarUploadResult;->fileId:Ljava/lang/String;

    .line 22
    return-void
.end method
