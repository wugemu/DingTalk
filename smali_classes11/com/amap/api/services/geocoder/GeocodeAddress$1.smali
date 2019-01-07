.class final Lcom/amap/api/services/geocoder/GeocodeAddress$1;
.super Ljava/lang/Object;
.source "GeocodeAddress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/geocoder/GeocodeAddress;
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
        "Lcom/amap/api/services/geocoder/GeocodeAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/amap/api/services/geocoder/GeocodeAddress;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    new-instance v0, Lcom/amap/api/services/geocoder/GeocodeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amap/api/services/geocoder/GeocodeAddress;-><init>(Landroid/os/Parcel;Lcom/amap/api/services/geocoder/GeocodeAddress$1;)V

    return-object v0
.end method

.method public final a(I)[Lcom/amap/api/services/geocoder/GeocodeAddress;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/amap/api/services/geocoder/GeocodeAddress$1;->a(Landroid/os/Parcel;)Lcom/amap/api/services/geocoder/GeocodeAddress;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/amap/api/services/geocoder/GeocodeAddress$1;->a(I)[Lcom/amap/api/services/geocoder/GeocodeAddress;

    move-result-object v0

    return-object v0
.end method
