.class public Lcom/amap/api/services/route/BusStep;
.super Ljava/lang/Object;
.source "BusStep.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/BusStep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/route/RouteBusWalkItem;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RouteBusLineItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/services/route/Doorway;

.field private d:Lcom/amap/api/services/route/Doorway;

.field private e:Lcom/amap/api/services/route/RouteRailwayItem;

.field private f:Lcom/amap/api/services/route/TaxiItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/amap/api/services/route/BusStep$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/BusStep$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/BusStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    .line 191
    const-class v0, Lcom/amap/api/services/route/RouteBusWalkItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteBusWalkItem;

    iput-object v0, p0, Lcom/amap/api/services/route/BusStep;->a:Lcom/amap/api/services/route/RouteBusWalkItem;

    .line 192
    sget-object v0, Lcom/amap/api/services/route/RouteBusLineItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    .line 193
    const-class v0, Lcom/amap/api/services/route/Doorway;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/Doorway;

    iput-object v0, p0, Lcom/amap/api/services/route/BusStep;->c:Lcom/amap/api/services/route/Doorway;

    .line 194
    const-class v0, Lcom/amap/api/services/route/Doorway;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/Doorway;

    iput-object v0, p0, Lcom/amap/api/services/route/BusStep;->d:Lcom/amap/api/services/route/Doorway;

    .line 195
    const-class v0, Lcom/amap/api/services/route/RouteRailwayItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteRailwayItem;

    iput-object v0, p0, Lcom/amap/api/services/route/BusStep;->e:Lcom/amap/api/services/route/RouteRailwayItem;

    .line 196
    const-class v0, Lcom/amap/api/services/route/TaxiItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/TaxiItem;

    iput-object v0, p0, Lcom/amap/api/services/route/BusStep;->f:Lcom/amap/api/services/route/TaxiItem;

    .line 197
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteBusLineItem;

    goto :goto_0
.end method

.method public getBusLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RouteBusLineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    return-object v0
.end method

.method public getEntrance()Lcom/amap/api/services/route/Doorway;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->c:Lcom/amap/api/services/route/Doorway;

    return-object v0
.end method

.method public getExit()Lcom/amap/api/services/route/Doorway;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->d:Lcom/amap/api/services/route/Doorway;

    return-object v0
.end method

.method public getRailway()Lcom/amap/api/services/route/RouteRailwayItem;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->e:Lcom/amap/api/services/route/RouteRailwayItem;

    return-object v0
.end method

.method public getTaxi()Lcom/amap/api/services/route/TaxiItem;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->f:Lcom/amap/api/services/route/TaxiItem;

    return-object v0
.end method

.method public getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->a:Lcom/amap/api/services/route/RouteBusWalkItem;

    return-object v0
.end method

.method public setBusLine(Lcom/amap/api/services/route/RouteBusLineItem;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBusLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RouteBusLineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    .line 87
    return-void
.end method

.method public setEntrance(Lcom/amap/api/services/route/Doorway;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amap/api/services/route/BusStep;->c:Lcom/amap/api/services/route/Doorway;

    .line 107
    return-void
.end method

.method public setExit(Lcom/amap/api/services/route/Doorway;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/amap/api/services/route/BusStep;->d:Lcom/amap/api/services/route/Doorway;

    .line 127
    return-void
.end method

.method public setRailway(Lcom/amap/api/services/route/RouteRailwayItem;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amap/api/services/route/BusStep;->e:Lcom/amap/api/services/route/RouteRailwayItem;

    .line 145
    return-void
.end method

.method public setTaxi(Lcom/amap/api/services/route/TaxiItem;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amap/api/services/route/BusStep;->f:Lcom/amap/api/services/route/TaxiItem;

    .line 163
    return-void
.end method

.method public setWalk(Lcom/amap/api/services/route/RouteBusWalkItem;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amap/api/services/route/BusStep;->a:Lcom/amap/api/services/route/RouteBusWalkItem;

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->a:Lcom/amap/api/services/route/RouteBusWalkItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 179
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 180
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->c:Lcom/amap/api/services/route/Doorway;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 181
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->d:Lcom/amap/api/services/route/Doorway;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 182
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->e:Lcom/amap/api/services/route/RouteRailwayItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 183
    iget-object v0, p0, Lcom/amap/api/services/route/BusStep;->f:Lcom/amap/api/services/route/TaxiItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 184
    return-void
.end method
