.class public Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "Dentry.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private createTime:J

.field private creator:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

.field private expireTime:J

.field private extension:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private modifiedTime:J

.field private modifier:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:J

.field private spaceId:Ljava/lang/String;

.field private thumbnailUrl:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->createTime:J

    return-wide v0
.end method

.method public getCreator()Lcom/alibaba/alimei/restfulapi/v2/data/Creator;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->creator:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->expireTime:J

    return-wide v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->modifiedTime:J

    return-wide v0
.end method

.method public getModifier()Lcom/alibaba/alimei/restfulapi/v2/data/Creator;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->modifier:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->size:J

    return-wide v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->contentType:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->createTime:J

    .line 137
    return-void
.end method

.method public setCreator(Lcom/alibaba/alimei/restfulapi/v2/data/Creator;)V
    .locals 0
    .param p1, "creator"    # Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->creator:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    .line 153
    return-void
.end method

.method public setExpireTime(J)V
    .locals 1
    .param p1, "expireTime"    # J

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->expireTime:J

    .line 201
    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->extension:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->id:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->modifiedTime:J

    .line 145
    return-void
.end method

.method public setModifier(Lcom/alibaba/alimei/restfulapi/v2/data/Creator;)V
    .locals 0
    .param p1, "modifier"    # Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->modifier:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    .line 161
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->name:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->path:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->size:J

    .line 129
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->spaceId:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->thumbnailUrl:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->type:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->version:Ljava/lang/String;

    .line 169
    return-void
.end method
