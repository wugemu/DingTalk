.class final Lcom/alibaba/android/projection/data/FocusDeviceObject$1;
.super Ljava/lang/Object;
.source "FocusDeviceObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/data/FocusDeviceObject;
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
        "Lcom/alibaba/android/projection/data/FocusDeviceObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    .line 2243
    new-instance v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-direct {v0, p1}, Lcom/alibaba/android/projection/data/FocusDeviceObject;-><init>(Landroid/os/Parcel;)V

    .line 240
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    .line 1248
    new-array v0, p1, [Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 240
    return-object v0
.end method
