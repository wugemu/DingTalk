.class public Lorg/altbeacon/beacon/AltBeacon;
.super Lorg/altbeacon/beacon/Beacon;
.source "AltBeacon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/AltBeacon$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/altbeacon/beacon/AltBeacon;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AltBeacon"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/altbeacon/beacon/AltBeacon$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/AltBeacon$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/AltBeacon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/altbeacon/beacon/Beacon;-><init>()V

    .line 81
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/Beacon;-><init>(Landroid/os/Parcel;)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Lorg/altbeacon/beacon/Beacon;)V
    .locals 1
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/altbeacon/beacon/Beacon;-><init>()V

    .line 68
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    iput-object v0, p0, Lorg/altbeacon/beacon/AltBeacon;->mBluetoothAddress:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    iput-object v0, p0, Lorg/altbeacon/beacon/AltBeacon;->mIdentifiers:Ljava/util/List;

    .line 70
    iget v0, p1, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    iput v0, p0, Lorg/altbeacon/beacon/AltBeacon;->mBeaconTypeCode:I

    .line 71
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    iput-object v0, p0, Lorg/altbeacon/beacon/AltBeacon;->mDataFields:Ljava/util/List;

    .line 72
    iget-object v0, p1, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    iput-object v0, p0, Lorg/altbeacon/beacon/AltBeacon;->mDistance:Ljava/lang/Double;

    .line 73
    iget v0, p1, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    iput v0, p0, Lorg/altbeacon/beacon/AltBeacon;->mRssi:I

    .line 74
    iget v0, p1, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    iput v0, p0, Lorg/altbeacon/beacon/AltBeacon;->mTxPower:I

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getMfgReserved()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lorg/altbeacon/beacon/AltBeacon;->mDataFields:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lorg/altbeacon/beacon/Beacon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    return-void
.end method
