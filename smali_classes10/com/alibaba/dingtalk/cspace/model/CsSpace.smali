.class public Lcom/alibaba/dingtalk/cspace/model/CsSpace;
.super Ljava/lang/Object;
.source "CsSpace.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsSpace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aclAuthFlag:Ljava/lang/String;

.field private aclEnabled:Z

.field private coFolderRole:I

.field private coFolderRoleCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private conversationId:Ljava/lang/String;

.field private createTime:J

.field private creatorId:J

.field private creatorName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private modifyTime:J

.field private name:Ljava/lang/String;

.field private org:Lcom/alibaba/dingtalk/cspace/model/CsOrg;

.field private readOnlyEnabled:Z

.field private shareUrl:Ljava/lang/String;

.field private spaceQuota:J

.field private spaceUsedQuota:J

.field private templateFolderCreated:Z

.field private totalQuota:J

.field private totalUsedQuota:J

.field private type:I

.field private typeString:Ljava/lang/String;

.field private waterMarkEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/CsSpace$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->id:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->type:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->typeString:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->name:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->createTime:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->modifyTime:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->creatorId:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->creatorName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->spaceQuota:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->spaceUsedQuota:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->totalQuota:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->totalUsedQuota:J

    .line 105
    const-class v0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->org:Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    .line 107
    invoke-static {p1}, Lgqa;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->aclEnabled:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->aclAuthFlag:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lgqa;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->templateFolderCreated:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->conversationId:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lgqa;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->readOnlyEnabled:Z

    .line 112
    invoke-static {p1}, Lgqa;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->waterMarkEnabled:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->shareUrl:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->coFolderRole:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->coFolderRoleCount:Ljava/util/HashMap;

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/dingtalk/cspace/model/CsSpace$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/dingtalk/cspace/model/CsSpace$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create()Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;-><init>()V

    return-object v0
.end method


# virtual methods
.method public checkAdmin(Z)Z
    .locals 4
    .param p1, "defaultValue"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getType()I

    move-result v0

    .line 172
    .local v0, "spaceType":I
    invoke-static {v0}, Lgqu;->h(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getAclAuthFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgqd;->c(Ljava/lang/String;)Z

    move-result p1

    .line 189
    .end local p1    # "defaultValue":Z
    :cond_0
    :goto_0
    return p1

    .line 175
    .restart local p1    # "defaultValue":Z
    :cond_1
    invoke-static {v0}, Lgqu;->d(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->isAclEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getAclAuthFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgqd;->c(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getCoFolderRole()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_3

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getCoFolderRole()I

    move-result v2

    if-ne v2, v1, :cond_4

    :cond_3
    move p1, v1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_0

    .line 183
    :cond_5
    invoke-static {v0}, Lgqu;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move p1, v1

    .line 184
    goto :goto_0

    .line 186
    :cond_6
    invoke-static {v0}, Lgqu;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move p1, v1

    .line 187
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getAclAuthFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->aclAuthFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getCoFolderRole()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->coFolderRole:I

    return v0
.end method

.method public getCoFolderRoleCount()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->coFolderRoleCount:Ljava/util/HashMap;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->createTime:J

    return-wide v0
.end method

.method public getCreatorId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->creatorId:J

    return-wide v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->modifyTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrg()Lcom/alibaba/dingtalk/cspace/model/CsOrg;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->org:Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceQuota()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->spaceQuota:J

    return-wide v0
.end method

.method public getSpaceUsedQuota()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->spaceUsedQuota:J

    return-wide v0
.end method

.method public getTotalQuota()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->totalQuota:J

    return-wide v0
.end method

.method public getTotalUsedQuota()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->totalUsedQuota:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->type:I

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->typeString:Ljava/lang/String;

    return-object v0
.end method

.method public isAclEnabled()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->aclEnabled:Z

    return v0
.end method

.method public isReadOnlyEnabled()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->readOnlyEnabled:Z

    return v0
.end method

.method public isTemplateFolderCreated()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->templateFolderCreated:Z

    return v0
.end method

.method public isWaterMarkEnabled()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->waterMarkEnabled:Z

    return v0
.end method

.method public setAclAuthFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "aclAuthFlag"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->aclAuthFlag:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setAclEnabled(Z)V
    .locals 0
    .param p1, "aclEnabled"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->aclEnabled:Z

    .line 304
    return-void
.end method

.method public setCoFolderRole(I)V
    .locals 0
    .param p1, "coFolderRole"    # I

    .prologue
    .line 359
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->coFolderRole:I

    .line 360
    return-void
.end method

.method public setCoFolderRoleCount(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "coFolderRoleCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 368
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "coFolderRoleCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->coFolderRoleCount:Ljava/util/HashMap;

    .line 372
    :goto_0
    return-void

    .line 370
    .restart local p1    # "coFolderRoleCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->coFolderRoleCount:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->conversationId:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 231
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->createTime:J

    .line 232
    return-void
.end method

.method public setCreatorId(J)V
    .locals 1
    .param p1, "creatorId"    # J

    .prologue
    .line 247
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->creatorId:J

    .line 248
    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "creatorName"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->creatorName:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->id:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setModifyTime(J)V
    .locals 1
    .param p1, "modifyTime"    # J

    .prologue
    .line 239
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->modifyTime:J

    .line 240
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->name:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setOrg(Lcom/alibaba/dingtalk/cspace/model/CsOrg;)V
    .locals 0
    .param p1, "org"    # Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->org:Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    .line 296
    return-void
.end method

.method public setReadOnlyEnabled(Z)V
    .locals 0
    .param p1, "readOnlyEnabled"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->readOnlyEnabled:Z

    .line 336
    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareUrl"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->shareUrl:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setSpaceQuota(J)V
    .locals 1
    .param p1, "spaceQuota"    # J

    .prologue
    .line 263
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->spaceQuota:J

    .line 264
    return-void
.end method

.method public setSpaceUsedQuota(J)V
    .locals 1
    .param p1, "spaceUsedQuota"    # J

    .prologue
    .line 271
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->spaceUsedQuota:J

    .line 272
    return-void
.end method

.method public setTemplateFolderCreated(Z)V
    .locals 0
    .param p1, "templateFolderCreated"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->templateFolderCreated:Z

    .line 320
    return-void
.end method

.method public setTotalQuota(J)V
    .locals 1
    .param p1, "totalQuota"    # J

    .prologue
    .line 279
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->totalQuota:J

    .line 280
    return-void
.end method

.method public setTotalUsedQuota(J)V
    .locals 1
    .param p1, "totalUsedQuota"    # J

    .prologue
    .line 287
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->totalUsedQuota:J

    .line 288
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->type:I

    .line 208
    return-void
.end method

.method public setTypeString(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeString"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->typeString:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setWaterMarkEnabled(Z)V
    .locals 0
    .param p1, "waterMarkEnabled"    # Z

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->waterMarkEnabled:Z

    .line 344
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->typeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->modifyTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->creatorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->creatorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->spaceQuota:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->spaceUsedQuota:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->totalQuota:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->totalUsedQuota:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->org:Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 138
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->aclEnabled:Z

    invoke-static {p1, v0}, Lgqa;->a(Landroid/os/Parcel;Z)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->aclAuthFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->templateFolderCreated:Z

    invoke-static {p1, v0}, Lgqa;->a(Landroid/os/Parcel;Z)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->readOnlyEnabled:Z

    invoke-static {p1, v0}, Lgqa;->a(Landroid/os/Parcel;Z)V

    .line 143
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->waterMarkEnabled:Z

    invoke-static {p1, v0}, Lgqa;->a(Landroid/os/Parcel;Z)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->coFolderRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->coFolderRoleCount:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 148
    return-void
.end method
