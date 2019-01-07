.class final Lanetwork/channel/aidl/DefaultFinishEvent$1;
.super Ljava/lang/Object;
.source "DefaultFinishEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/DefaultFinishEvent;
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
        "Lanetwork/channel/aidl/DefaultFinishEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 96
    .line 2099
    invoke-static {p1}, Lanetwork/channel/aidl/DefaultFinishEvent;->readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/DefaultFinishEvent;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 96
    .line 1104
    new-array v0, p1, [Lanetwork/channel/aidl/DefaultFinishEvent;

    .line 96
    return-object v0
.end method
