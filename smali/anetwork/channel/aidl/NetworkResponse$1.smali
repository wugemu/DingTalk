.class final Lanetwork/channel/aidl/NetworkResponse$1;
.super Ljava/lang/Object;
.source "NetworkResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/NetworkResponse;
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
        "Lanetwork/channel/aidl/NetworkResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 155
    .line 2158
    invoke-static {p1}, Lanetwork/channel/aidl/NetworkResponse;->readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object v0

    .line 155
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 155
    .line 1163
    new-array v0, p1, [Lanetwork/channel/aidl/NetworkResponse;

    .line 155
    return-object v0
.end method
