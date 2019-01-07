.class public Lcom/amap/api/services/route/WalkRouteResult;
.super Lcom/amap/api/services/route/RouteResult;
.source "WalkRouteResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/WalkRouteResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/WalkPath;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/amap/api/services/route/WalkRouteResult$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/WalkRouteResult$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/WalkRouteResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/amap/api/services/route/RouteResult;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/WalkRouteResult;->a:Ljava/util/List;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/amap/api/services/route/RouteResult;-><init>(Landroid/os/Parcel;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/WalkRouteResult;->a:Ljava/util/List;

    .line 78
    sget-object v0, Lcom/amap/api/services/route/WalkPath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/WalkRouteResult;->a:Ljava/util/List;

    .line 79
    const-class v0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    iput-object v0, p0, Lcom/amap/api/services/route/WalkRouteResult;->b:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/WalkPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/amap/api/services/route/WalkRouteResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public getWalkQuery()Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amap/api/services/route/WalkRouteResult;->b:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    return-object v0
.end method

.method public setPaths(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/WalkPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amap/api/services/route/WalkRouteResult;->a:Ljava/util/List;

    .line 34
    return-void
.end method

.method public setWalkQuery(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/amap/api/services/route/WalkRouteResult;->b:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/route/RouteResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    iget-object v0, p0, Lcom/amap/api/services/route/WalkRouteResult;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 69
    iget-object v0, p0, Lcom/amap/api/services/route/WalkRouteResult;->b:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 70
    return-void
.end method
