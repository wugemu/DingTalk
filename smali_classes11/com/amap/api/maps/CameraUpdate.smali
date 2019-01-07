.class public final Lcom/amap/api/maps/CameraUpdate;
.super Ljava/lang/Object;
.source "CameraUpdate.java"


# instance fields
.field a:Lcom/autonavi/amap/mapcore/MapMessage;


# direct methods
.method constructor <init>(Lcom/autonavi/amap/mapcore/MapMessage;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amap/api/maps/CameraUpdate;->a:Lcom/autonavi/amap/mapcore/MapMessage;

    .line 17
    return-void
.end method


# virtual methods
.method public final getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/MapMessage;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amap/api/maps/CameraUpdate;->a:Lcom/autonavi/amap/mapcore/MapMessage;

    return-object v0
.end method
