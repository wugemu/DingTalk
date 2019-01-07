.class public Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "AttachmentDownloadRequestData.java"


# static fields
.field public static final FILE_TYPE_COMMON_FILE:Ljava/lang/String; = "0"

.field public static final FILE_TYPE_TEMP_FILE:Ljava/lang/String; = "2"

.field public static final PRESENT_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final PRESENT_INNER:Ljava/lang/String; = "inline"

.field public static final TYPE_ALBUM:I = 0x3

.field public static final TYPE_FILE:I = 0x4


# instance fields
.field private fileId:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private mailId:Ljava/lang/String;

.field private presentMethod:Ljava/lang/String;

.field private spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mailId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "fileType"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->mailId:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->fileId:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->fileName:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->fileType:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mailId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "groupId"    # Ljava/lang/String;
    .param p5, "mimeBoxType"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->mailId:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->fileId:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->fileName:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->groupId:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->spaceId:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->fileType:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "attachment"

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->presentMethod:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getMailId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->mailId:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->presentMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->fileId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->fileName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->fileType:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->groupId:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setMailId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailId"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->mailId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPresentMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "presentMethod"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->presentMethod:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->spaceId:Ljava/lang/String;

    .line 120
    return-void
.end method
