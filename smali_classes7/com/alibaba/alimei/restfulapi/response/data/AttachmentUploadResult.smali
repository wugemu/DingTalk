.class public Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadResult;
.super Ljava/lang/Object;
.source "AttachmentUploadResult.java"


# instance fields
.field private tempLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getTempLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadResult;->tempLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setTempLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "tempLocation"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadResult;->tempLocation:Ljava/lang/String;

    .line 28
    return-void
.end method
