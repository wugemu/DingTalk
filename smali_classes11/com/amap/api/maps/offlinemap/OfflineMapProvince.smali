.class public Lcom/amap/api/maps/offlinemap/OfflineMapProvince;
.super Lcom/amap/api/maps/offlinemap/Province;
.source "OfflineMapProvince.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince$1;

    invoke-direct {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince$1;-><init>()V

    sput-object v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/amap/api/maps/offlinemap/Province;-><init>()V

    .line 15
    const/4 v0, 0x6

    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->b:I

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->e:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/Province;-><init>(Landroid/os/Parcel;)V

    .line 15
    const/4 v0, 0x6

    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->b:I

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->e:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->a:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->b:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->c:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->d:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->e:I

    .line 164
    sget-object v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->f:Ljava/util/ArrayList;

    .line 165
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->f:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->c:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->b:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getcompleteCode()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->e:I

    return v0
.end method

.method public setCityList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->f:Ljava/util/ArrayList;

    .line 155
    return-void
.end method

.method public setCompleteCode(I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->e:I

    .line 117
    return-void
.end method

.method public setSize(J)V
    .locals 1

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->c:J

    .line 81
    return-void
.end method

.method public setState(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->b:I

    .line 63
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->a:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->d:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/amap/api/maps/offlinemap/Province;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-wide v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 134
    return-void
.end method
