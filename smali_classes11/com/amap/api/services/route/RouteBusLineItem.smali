.class public Lcom/amap/api/services/route/RouteBusLineItem;
.super Lcom/amap/api/services/busline/BusLineItem;
.source "RouteBusLineItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RouteBusLineItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/busline/BusStationItem;

.field private b:Lcom/amap/api/services/busline/BusStationItem;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/amap/api/services/route/RouteBusLineItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteBusLineItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteBusLineItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/amap/api/services/busline/BusLineItem;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->e:Ljava/util/List;

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/amap/api/services/busline/BusLineItem;-><init>(Landroid/os/Parcel;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->e:Ljava/util/List;

    .line 161
    const-class v0, Lcom/amap/api/services/busline/BusStationItem;

    .line 162
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationItem;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    .line 163
    const-class v0, Lcom/amap/api/services/busline/BusStationItem;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationItem;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    .line 165
    sget-object v0, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->d:I

    .line 167
    sget-object v0, Lcom/amap/api/services/busline/BusStationItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->e:Ljava/util/List;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->f:F

    .line 169
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    if-ne p0, p1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    invoke-super {p0, p1}, Lcom/amap/api/services/busline/BusLineItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 220
    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 222
    goto :goto_0

    .line 223
    :cond_3
    check-cast p1, Lcom/amap/api/services/route/RouteBusLineItem;

    .line 224
    iget-object v2, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    if-nez v2, :cond_4

    .line 225
    iget-object v2, p1, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    if-eqz v2, :cond_5

    move v0, v1

    .line 226
    goto :goto_0

    .line 227
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/busline/BusStationItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 228
    goto :goto_0

    .line 229
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    if-nez v2, :cond_6

    .line 230
    iget-object v2, p1, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    if-eqz v2, :cond_0

    move v0, v1

    .line 231
    goto :goto_0

    .line 232
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/busline/BusStationItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 233
    goto :goto_0
.end method

.method public getArrivalBusStation()Lcom/amap/api/services/busline/BusStationItem;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    return-object v0
.end method

.method public getDepartureBusStation()Lcom/amap/api/services/busline/BusStationItem;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->f:F

    return v0
.end method

.method public getPassStationNum()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->d:I

    return v0
.end method

.method public getPassStations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->e:Ljava/util/List;

    return-object v0
.end method

.method public getPolyline()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-super {p0}, Lcom/amap/api/services/busline/BusLineItem;->hashCode()I

    move-result v0

    .line 199
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    if-nez v0, :cond_0

    move v0, v1

    .line 202
    :goto_0
    add-int/2addr v0, v2

    .line 203
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    if-nez v2, :cond_1

    .line 206
    :goto_1
    add-int/2addr v0, v1

    .line 207
    return v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    .line 202
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationItem;->hashCode()I

    move-result v0

    goto :goto_0

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    .line 206
    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusStationItem;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setArrivalBusStation(Lcom/amap/api/services/busline/BusStationItem;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    .line 59
    return-void
.end method

.method public setDepartureBusStation(Lcom/amap/api/services/busline/BusStationItem;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    .line 41
    return-void
.end method

.method public setDuration(F)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->f:F

    .line 131
    return-void
.end method

.method public setPassStationNum(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->d:I

    .line 95
    return-void
.end method

.method public setPassStations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->e:Ljava/util/List;

    .line 113
    return-void
.end method

.method public setPolyline(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    .line 77
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/busline/BusLineItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 147
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 149
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 150
    iget v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 152
    iget v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 153
    return-void
.end method
