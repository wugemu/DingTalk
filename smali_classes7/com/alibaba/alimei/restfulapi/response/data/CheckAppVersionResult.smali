.class public Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;
.super Ljava/lang/Object;
.source "CheckAppVersionResult.java"


# static fields
.field public static final STATUS_FORCE_UPDATE:I = 0x2

.field public static final STATUS_NO_UPDATE:I = 0x0

.field public static final STATUS_UPDATE:I = 0x1


# instance fields
.field private appName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileSize:J

.field private fullVersion:Z

.field private info:Ljava/lang/String;

.field private originalName:Ljava/lang/String;

.field private updateStatus:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->fileSize:J

    return-wide v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->originalName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateStatus()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->updateStatus:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isFullVersion()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->fullVersion:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->appName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->filePath:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->fileSize:J

    .line 99
    return-void
.end method

.method public setFullVersion(Z)V
    .locals 0
    .param p1, "fullVersion"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->fullVersion:Z

    .line 122
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->info:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setOriginalName(Ljava/lang/String;)V
    .locals 0
    .param p1, "originalName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->originalName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setUpdateStatus(I)V
    .locals 0
    .param p1, "updateStatus"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->updateStatus:I

    .line 52
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CheckAppVersionResult;->version:Ljava/lang/String;

    .line 133
    return-void
.end method
