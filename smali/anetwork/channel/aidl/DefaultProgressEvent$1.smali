.class final Lanetwork/channel/aidl/DefaultProgressEvent$1;
.super Ljava/lang/Object;
.source "DefaultProgressEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/DefaultProgressEvent;
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
        "Lanetwork/channel/aidl/DefaultProgressEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 105
    .line 2108
    invoke-static {p1}, Lanetwork/channel/aidl/DefaultProgressEvent;->readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/DefaultProgressEvent;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 105
    .line 1113
    new-array v0, p1, [Lanetwork/channel/aidl/DefaultProgressEvent;

    .line 105
    return-object v0
.end method
