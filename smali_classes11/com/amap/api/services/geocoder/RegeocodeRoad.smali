.class public final Lcom/amap/api/services/geocoder/RegeocodeRoad;
.super Ljava/lang/Object;
.source "RegeocodeRoad.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/geocoder/RegeocodeRoad;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:F

.field private d:Ljava/lang/String;

.field private e:Lcom/amap/api/services/core/LatLonPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/amap/api/services/geocoder/RegeocodeRoad$1;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/RegeocodeRoad$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->a:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->b:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->c:F

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->d:Ljava/lang/String;

    .line 144
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->e:Lcom/amap/api/services/core/LatLonPoint;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/api/services/geocoder/RegeocodeRoad$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/amap/api/services/geocoder/RegeocodeRoad;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public final getDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDistance()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->c:F

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatLngPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->e:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final setDirection(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->d:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public final setDistance(F)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->c:F

    .line 81
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->a:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final setLatLngPoint(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->e:Lcom/amap/api/services/core/LatLonPoint;

    .line 117
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 135
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeRoad;->e:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 137
    return-void
.end method
