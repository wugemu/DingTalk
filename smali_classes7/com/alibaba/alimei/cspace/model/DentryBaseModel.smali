.class public abstract Lcom/alibaba/alimei/cspace/model/DentryBaseModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "DentryBaseModel.java"


# instance fields
.field protected contentType:Ljava/lang/String;

.field protected createTime:J

.field protected creatorEmail:Ljava/lang/String;

.field protected creatorNick:Ljava/lang/String;

.field protected dirty:Z

.field protected downloadedSize:J

.field protected extension:Ljava/lang/String;

.field protected id:J

.field protected localUrl:Ljava/lang/String;

.field protected modifiedTime:J

.field protected modifierEmail:Ljava/lang/String;

.field protected modifierNick:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected parentPath:Ljava/lang/String;

.field protected path:Ljava/lang/String;

.field protected size:J

.field protected spaceId:Ljava/lang/String;

.field protected tempUrl:Ljava/lang/String;

.field protected type:Ljava/lang/String;

.field protected versionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->id:J

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->spaceId:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->path:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->name:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->type:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->contentType:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->extension:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->size:J

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->createTime:J

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->modifiedTime:J

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->creatorEmail:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->creatorNick:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->modifierEmail:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->modifierNick:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->versionType:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->localUrl:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->tempUrl:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->dirty:Z

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->fixParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->parentPath:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->downloadedSize:J

    .line 301
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->createTime:J

    return-wide v0
.end method

.method public getCreatorEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->creatorEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->creatorNick:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->downloadedSize:J

    return-wide v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->id:J

    return-wide v0
.end method

.method public getLocalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->localUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->modifiedTime:J

    return-wide v0
.end method

.method public getModifierEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->modifierEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getModifierNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->modifierNick:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->parentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->size:J

    return-wide v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTempUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->tempUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->versionType:Ljava/lang/String;

    return-object v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->dirty:Z

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->contentType:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->createTime:J

    .line 189
    return-void
.end method

.method public setCreatorEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "creatorEmail"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->creatorEmail:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setCreatorNick(Ljava/lang/String;)V
    .locals 0
    .param p1, "creatorNick"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->creatorNick:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->dirty:Z

    .line 261
    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 1
    .param p1, "downloadedSize"    # J

    .prologue
    .line 276
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->downloadedSize:J

    .line 277
    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->extension:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->id:J

    .line 125
    return-void
.end method

.method public setLocalUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "localUrl"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->localUrl:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->modifiedTime:J

    .line 197
    return-void
.end method

.method public setModifierEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "modifierEmail"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->modifierEmail:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setModifierNick(Ljava/lang/String;)V
    .locals 0
    .param p1, "modifierNick"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->modifierNick:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->name:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setParentPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "parentPath"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->fixParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->parentPath:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->path:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 180
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->size:J

    .line 181
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->spaceId:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setTempUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "tempUrl"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->tempUrl:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->type:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setVersionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionType"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;->versionType:Ljava/lang/String;

    .line 237
    return-void
.end method
