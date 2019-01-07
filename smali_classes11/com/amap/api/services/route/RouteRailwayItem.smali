.class public Lcom/amap/api/services/route/RouteRailwayItem;
.super Lcom/amap/api/services/route/Railway;
.source "RouteRailwayItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RouteRailwayItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:F

.field private d:Ljava/lang/String;

.field private e:Lcom/amap/api/services/route/RailwayStationItem;

.field private f:Lcom/amap/api/services/route/RailwayStationItem;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RailwayStationItem;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/Railway;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RailwaySpace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/amap/api/services/route/RouteRailwayItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteRailwayItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteRailwayItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/amap/api/services/route/Railway;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->g:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->h:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->i:Ljava/util/List;

    .line 30
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/amap/api/services/route/Railway;-><init>(Landroid/os/Parcel;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->g:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->h:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->i:Ljava/util/List;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->a:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->b:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->c:F

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->d:Ljava/lang/String;

    .line 205
    const-class v0, Lcom/amap/api/services/route/RailwayStationItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RailwayStationItem;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->e:Lcom/amap/api/services/route/RailwayStationItem;

    .line 206
    const-class v0, Lcom/amap/api/services/route/RailwayStationItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RailwayStationItem;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->f:Lcom/amap/api/services/route/RailwayStationItem;

    .line 207
    sget-object v0, Lcom/amap/api/services/route/RailwayStationItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->g:Ljava/util/List;

    .line 208
    sget-object v0, Lcom/amap/api/services/route/Railway;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->h:Ljava/util/List;

    .line 209
    sget-object v0, Lcom/amap/api/services/route/RailwaySpace;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->i:Ljava/util/List;

    .line 210
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public getAlters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/Railway;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->h:Ljava/util/List;

    return-object v0
.end method

.method public getArrivalstop()Lcom/amap/api/services/route/RailwayStationItem;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->f:Lcom/amap/api/services/route/RailwayStationItem;

    return-object v0
.end method

.method public getDeparturestop()Lcom/amap/api/services/route/RailwayStationItem;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->e:Lcom/amap/api/services/route/RailwayStationItem;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->c:F

    return v0
.end method

.method public getSpaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RailwaySpace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->i:Ljava/util/List;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTrip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getViastops()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RailwayStationItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->g:Ljava/util/List;

    return-object v0
.end method

.method public setAlters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/Railway;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amap/api/services/route/RouteRailwayItem;->h:Ljava/util/List;

    .line 183
    return-void
.end method

.method public setArrivalstop(Lcom/amap/api/services/route/RailwayStationItem;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amap/api/services/route/RouteRailwayItem;->f:Lcom/amap/api/services/route/RailwayStationItem;

    .line 165
    return-void
.end method

.method public setDeparturestop(Lcom/amap/api/services/route/RailwayStationItem;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amap/api/services/route/RouteRailwayItem;->e:Lcom/amap/api/services/route/RailwayStationItem;

    .line 156
    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/amap/api/services/route/RouteRailwayItem;->c:F

    .line 138
    return-void
.end method

.method public setSpaces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RailwaySpace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    iput-object p1, p0, Lcom/amap/api/services/route/RouteRailwayItem;->i:Ljava/util/List;

    .line 192
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/amap/api/services/route/RouteRailwayItem;->a:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setTrip(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amap/api/services/route/RouteRailwayItem;->b:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amap/api/services/route/RouteRailwayItem;->d:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setViastops(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RailwayStationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    iput-object p1, p0, Lcom/amap/api/services/route/RouteRailwayItem;->g:Ljava/util/List;

    .line 174
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/route/Railway;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 221
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->e:Lcom/amap/api/services/route/RailwayStationItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 223
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->f:Lcom/amap/api/services/route/RailwayStationItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 224
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 225
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 226
    iget-object v0, p0, Lcom/amap/api/services/route/RouteRailwayItem;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 228
    return-void
.end method
