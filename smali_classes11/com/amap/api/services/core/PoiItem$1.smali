.class final Lcom/amap/api/services/core/PoiItem$1;
.super Ljava/lang/Object;
.source "PoiItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/core/PoiItem;
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
        "Lcom/amap/api/services/core/PoiItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/amap/api/services/core/PoiItem;
    .locals 1

    .prologue
    .line 576
    new-instance v0, Lcom/amap/api/services/core/PoiItem;

    invoke-direct {v0, p1}, Lcom/amap/api/services/core/PoiItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final a(I)[Lcom/amap/api/services/core/PoiItem;
    .locals 1

    .prologue
    .line 580
    new-array v0, p1, [Lcom/amap/api/services/core/PoiItem;

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Lcom/amap/api/services/core/PoiItem$1;->a(Landroid/os/Parcel;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Lcom/amap/api/services/core/PoiItem$1;->a(I)[Lcom/amap/api/services/core/PoiItem;

    move-result-object v0

    return-object v0
.end method
