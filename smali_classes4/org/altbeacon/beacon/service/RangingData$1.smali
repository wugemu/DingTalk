.class final Lorg/altbeacon/beacon/service/RangingData$1;
.super Ljava/lang/Object;
.source "RangingData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/RangingData;
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
        "Lorg/altbeacon/beacon/service/RangingData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangingData$1;->createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/service/RangingData;

    move-result-object v0

    return-object v0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/altbeacon/beacon/service/RangingData;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    new-instance v0, Lorg/altbeacon/beacon/service/RangingData;

    invoke-direct {v0, p1}, Lorg/altbeacon/beacon/service/RangingData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangingData$1;->newArray(I)[Lorg/altbeacon/beacon/service/RangingData;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lorg/altbeacon/beacon/service/RangingData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 72
    new-array v0, p1, [Lorg/altbeacon/beacon/service/RangingData;

    return-object v0
.end method
