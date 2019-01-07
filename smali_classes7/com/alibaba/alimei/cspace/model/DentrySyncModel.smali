.class public Lcom/alibaba/alimei/cspace/model/DentrySyncModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "DentrySyncModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentrySyncModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createTime:J

.field private dentryId:J

.field private id:J

.field private loadmoreId:Ljava/lang/String;

.field private modifiedTime:J

.field private path:Ljava/lang/String;

.field private spaceId:Ljava/lang/String;

.field private syncKey:Ljava/lang/String;

.field private totalDentry:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentrySyncModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->id:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->dentryId:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->syncKey:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->loadmoreId:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->createTime:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->modifiedTime:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->spaceId:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->path:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->totalDentry:J

    .line 125
    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->createTime:J

    return-wide v0
.end method

.method public getDentryId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->dentryId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->id:J

    return-wide v0
.end method

.method public getLoadmoreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->loadmoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->modifiedTime:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->syncKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDentry()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->totalDentry:J

    return-wide v0
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->createTime:J

    .line 67
    return-void
.end method

.method public setDentryId(J)V
    .locals 1
    .param p1, "dentryId"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->dentryId:J

    .line 43
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->id:J

    .line 35
    return-void
.end method

.method public setLoadmoreId(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadmoreId"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->loadmoreId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->modifiedTime:J

    .line 75
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->path:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->spaceId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setSyncKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "syncKey"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->syncKey:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setTotalDentry(J)V
    .locals 1
    .param p1, "totalDentry"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->totalDentry:J

    .line 99
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->dentryId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->syncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->loadmoreId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->modifiedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentrySyncModel;->totalDentry:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    return-void
.end method
