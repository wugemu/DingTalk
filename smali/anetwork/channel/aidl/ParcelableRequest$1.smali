.class final Lanetwork/channel/aidl/ParcelableRequest$1;
.super Ljava/lang/Object;
.source "ParcelableRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/ParcelableRequest;
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
        "Lanetwork/channel/aidl/ParcelableRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 211
    .line 2214
    invoke-static {p1}, Lanetwork/channel/aidl/ParcelableRequest;->readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object v0

    .line 211
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 211
    .line 1219
    new-array v0, p1, [Lanetwork/channel/aidl/ParcelableRequest;

    .line 211
    return-object v0
.end method
