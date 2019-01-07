.class public Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;
.super Ljava/lang/Object;
.source "SpaceLinkShareModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPACE_LINK_SHARE_MODEL_TYPE_DENTRY:I = 0x1

.field public static final SPACE_LINK_SHARE_MODEL_TYPE_FILE:I


# instance fields
.field private createTime:J

.field private createTimeString:Ljava/lang/String;

.field private creatorId:J

.field private creatorName:Ljava/lang/String;

.field private dentryType:I

.field private downloadCount:J

.field private expireTime:J

.field private expireTimeString:Ljava/lang/String;

.field private fileLength:J

.field private fileNumber:J

.field private orgId:J

.field private orgName:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private shareName:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;

.field private shortLink:Ljava/lang/String;

.field private viewCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->shareUrl:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->shortLink:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->shareName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->creatorId:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->createTime:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->creatorName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->expireTime:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->createTimeString:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->expireTimeString:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->fileNumber:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->fileLength:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->viewCount:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->downloadCount:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->password:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->dentryType:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->orgId:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->orgName:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->createTime:J

    return-wide v0
.end method

.method public getCreateTimeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->createTimeString:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->creatorId:J

    return-wide v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getDentryType()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->dentryType:I

    return v0
.end method

.method public getDownloadCount()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->downloadCount:J

    return-wide v0
.end method

.method public getExpireTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->expireTime:J

    return-wide v0
.end method

.method public getExpireTimeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->expireTimeString:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->fileLength:J

    return-wide v0
.end method

.method public getFileNumber()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->fileNumber:J

    return-wide v0
.end method

.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->orgId:J

    return-wide v0
.end method

.method public getOrgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->orgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getShareName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->shareName:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShortLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->shortLink:Ljava/lang/String;

    return-object v0
.end method

.method public getViewCount()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->viewCount:J

    return-wide v0
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->createTime:J

    .line 145
    return-void
.end method

.method public setCreateTimeString(Ljava/lang/String;)V
    .locals 0
    .param p1, "createTimeString"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->createTimeString:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setCreatorId(J)V
    .locals 1
    .param p1, "creatorId"    # J

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->creatorId:J

    .line 137
    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "creatorName"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->creatorName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setDentryType(I)V
    .locals 0
    .param p1, "dentryType"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->dentryType:I

    .line 225
    return-void
.end method

.method public setDownloadCount(J)V
    .locals 1
    .param p1, "downloadCount"    # J

    .prologue
    .line 208
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->downloadCount:J

    .line 209
    return-void
.end method

.method public setExpireTime(J)V
    .locals 1
    .param p1, "expireTime"    # J

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->expireTime:J

    .line 161
    return-void
.end method

.method public setExpireTimeString(Ljava/lang/String;)V
    .locals 0
    .param p1, "expireTimeString"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->expireTimeString:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setFileLength(J)V
    .locals 1
    .param p1, "fileLength"    # J

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->fileLength:J

    .line 193
    return-void
.end method

.method public setFileNumber(J)V
    .locals 1
    .param p1, "fileNumber"    # J

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->fileNumber:J

    .line 185
    return-void
.end method

.method public setOrgId(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 232
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->orgId:J

    .line 233
    return-void
.end method

.method public setOrgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "orgName"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->orgName:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->password:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setShareName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareName"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->shareName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareUrl"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->shareUrl:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setShortLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortLink"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->shortLink:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setViewCount(J)V
    .locals 1
    .param p1, "viewCount"    # J

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->viewCount:J

    .line 201
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
    .line 84
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->shortLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->shareName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->creatorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->creatorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->expireTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->createTimeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->expireTimeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->fileNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->fileLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->viewCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->downloadCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->dentryType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->orgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->orgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return-void
.end method
