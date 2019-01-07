.class public Lorg/altbeacon/beacon/service/RangingData;
.super Ljava/lang/Object;
.source "RangingData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/altbeacon/beacon/service/RangingData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RangingData"


# instance fields
.field private final beacons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field private final region:Lorg/altbeacon/beacon/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lorg/altbeacon/beacon/service/RangingData$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/RangingData$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/service/RangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 78
    .local v1, "parcelables":[Landroid/os/Parcelable;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/altbeacon/beacon/service/RangingData;->beacons:Ljava/util/Collection;

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 80
    iget-object v3, p0, Lorg/altbeacon/beacon/service/RangingData;->beacons:Ljava/util/Collection;

    aget-object v2, v1, v0

    check-cast v2, Lorg/altbeacon/beacon/Beacon;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Region;

    iput-object v2, p0, Lorg/altbeacon/beacon/service/RangingData;->region:Lorg/altbeacon/beacon/Region;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V
    .locals 1
    .param p2, "region"    # Lorg/altbeacon/beacon/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;",
            "Lorg/altbeacon/beacon/Region;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "beacons":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/altbeacon/beacon/Beacon;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    monitor-enter p1

    .line 44
    :try_start_0
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RangingData;->beacons:Ljava/util/Collection;

    .line 45
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iput-object p2, p0, Lorg/altbeacon/beacon/service/RangingData;->region:Lorg/altbeacon/beacon/Region;

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getBeacons()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangingData;->beacons:Ljava/util/Collection;

    return-object v0
.end method

.method public getRegion()Lorg/altbeacon/beacon/Region;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangingData;->region:Lorg/altbeacon/beacon/Region;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 61
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangingData;->beacons:Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Parcelable;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 62
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangingData;->region:Lorg/altbeacon/beacon/Region;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    return-void
.end method
