.class public Lorg/altbeacon/beacon/simulator/StaticBeaconSimulator;
.super Ljava/lang/Object;
.source "StaticBeaconSimulator.java"

# interfaces
.implements Lorg/altbeacon/beacon/simulator/BeaconSimulator;


# instance fields
.field public beacons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/simulator/StaticBeaconSimulator;->beacons:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBeacons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lorg/altbeacon/beacon/simulator/StaticBeaconSimulator;->beacons:Ljava/util/List;

    return-object v0
.end method

.method public setBeacons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "beacons":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Beacon;>;"
    iput-object p1, p0, Lorg/altbeacon/beacon/simulator/StaticBeaconSimulator;->beacons:Ljava/util/List;

    .line 20
    return-void
.end method
