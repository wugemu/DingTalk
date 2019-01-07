.class public Lcom/amap/api/maps/model/RoutePara;
.super Ljava/lang/Object;
.source "RoutePara.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/amap/api/maps/model/LatLng;

.field private d:Lcom/amap/api/maps/model/LatLng;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/amap/api/maps/model/RoutePara;->a:I

    .line 20
    iput v0, p0, Lcom/amap/api/maps/model/RoutePara;->b:I

    return-void
.end method


# virtual methods
.method public getDrivingRouteStyle()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/amap/api/maps/model/RoutePara;->a:I

    return v0
.end method

.method public getEndName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amap/api/maps/model/RoutePara;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPoint()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amap/api/maps/model/RoutePara;->d:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getStartName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amap/api/maps/model/RoutePara;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPoint()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amap/api/maps/model/RoutePara;->c:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getTransitRouteStyle()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/amap/api/maps/model/RoutePara;->b:I

    return v0
.end method

.method public setDrivingRouteStyle(I)V
    .locals 1

    .prologue
    .line 57
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    .line 58
    iput p1, p0, Lcom/amap/api/maps/model/RoutePara;->a:I

    .line 59
    :cond_0
    return-void
.end method

.method public setEndName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amap/api/maps/model/RoutePara;->f:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setEndPoint(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/amap/api/maps/model/RoutePara;->d:Lcom/amap/api/maps/model/LatLng;

    .line 120
    return-void
.end method

.method public setStartName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/amap/api/maps/model/RoutePara;->e:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setStartPoint(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amap/api/maps/model/RoutePara;->c:Lcom/amap/api/maps/model/LatLng;

    .line 100
    return-void
.end method

.method public setTransitRouteStyle(I)V
    .locals 1

    .prologue
    .line 78
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 79
    iput p1, p0, Lcom/amap/api/maps/model/RoutePara;->b:I

    .line 80
    :cond_0
    return-void
.end method
