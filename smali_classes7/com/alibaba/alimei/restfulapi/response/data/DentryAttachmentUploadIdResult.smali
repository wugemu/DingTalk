.class public Lcom/alibaba/alimei/restfulapi/response/data/DentryAttachmentUploadIdResult;
.super Ljava/lang/Object;
.source "DentryAttachmentUploadIdResult.java"


# instance fields
.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/DentryAttachmentUploadIdResult;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/DentryAttachmentUploadIdResult;->uploadId:Ljava/lang/String;

    .line 18
    return-void
.end method
