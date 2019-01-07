.class public Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "FavoriteSyncModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountName:Ljava/lang/String;

.field private bizType:Ljava/lang/String;

.field private id:J

.field private loadMoreId:Ljava/lang/String;

.field private modifiedTime:J

.field private spaceId:Ljava/lang/String;

.field private syncKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->id:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->accountName:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->bizType:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->spaceId:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->syncKey:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->loadMoreId:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->modifiedTime:J

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-wide v0, p1, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->id:J

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->id:J

    .line 90
    iget-object v0, p1, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->accountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->accountName:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->bizType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->bizType:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->spaceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->spaceId:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->syncKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->syncKey:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->loadMoreId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->loadMoreId:Ljava/lang/String;

    .line 95
    iget-wide v0, p1, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;->modifiedTime:J

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->modifiedTime:J

    .line 97
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->accountName:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->bizType:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->spaceId:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->modifiedTime:J

    .line 85
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->id:J

    return-wide v0
.end method

.method public getLoadMoreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->loadMoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->modifiedTime:J

    return-wide v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->syncKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->accountName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizType"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->bizType:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->id:J

    .line 30
    return-void
.end method

.method public setLoadMoreId(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadMoreId"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->loadMoreId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->modifiedTime:J

    .line 78
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->spaceId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSyncKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "syncKey"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->syncKey:Ljava/lang/String;

    .line 62
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
    .line 113
    iget-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->bizType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->syncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->loadMoreId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteSyncModel;->modifiedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    return-void
.end method
