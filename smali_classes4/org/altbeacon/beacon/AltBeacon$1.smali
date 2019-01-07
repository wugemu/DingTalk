.class final Lorg/altbeacon/beacon/AltBeacon$1;
.super Ljava/lang/Object;
.source "AltBeacon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/AltBeacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/altbeacon/beacon/AltBeacon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/AltBeacon$1;->createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/AltBeacon;

    move-result-object v0

    return-object v0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/AltBeacon;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    new-instance v0, Lorg/altbeacon/beacon/AltBeacon;

    invoke-direct {v0, p1}, Lorg/altbeacon/beacon/AltBeacon;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/AltBeacon$1;->newArray(I)[Lorg/altbeacon/beacon/AltBeacon;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lorg/altbeacon/beacon/AltBeacon;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 58
    new-array v0, p1, [Lorg/altbeacon/beacon/AltBeacon;

    return-object v0
.end method
