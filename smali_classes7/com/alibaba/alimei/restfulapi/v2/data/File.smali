.class public Lcom/alibaba/alimei/restfulapi/v2/data/File;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "File.java"


# instance fields
.field private createTime:J

.field private creator:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

.field private downloadId:Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private folderId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private linkId:Ljava/lang/String;

.field private modifiedTime:J

.field private name:Ljava/lang/String;

.field private parentId:Ljava/lang/String;

.field private size:J

.field private versionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->createTime:J

    return-wide v0
.end method

.method public getCreator()Lcom/alibaba/alimei/restfulapi/v2/data/Creator;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->creator:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    return-object v0
.end method

.method public getDownloadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->downloadId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->linkId:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->modifiedTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->size:J

    return-wide v0
.end method

.method public getVersionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->versionType:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->createTime:J

    .line 108
    return-void
.end method

.method public setCreator(Lcom/alibaba/alimei/restfulapi/v2/data/Creator;)V
    .locals 0
    .param p1, "creator"    # Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->creator:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    .line 156
    return-void
.end method

.method public setDownloadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadId"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->downloadId:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->fileType:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->folderId:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->id:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setLinkId(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkId"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->linkId:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->modifiedTime:J

    .line 114
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->parentId:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->size:J

    .line 101
    return-void
.end method

.method public setVersionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionType"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/File;->versionType:Ljava/lang/String;

    .line 148
    return-void
.end method
