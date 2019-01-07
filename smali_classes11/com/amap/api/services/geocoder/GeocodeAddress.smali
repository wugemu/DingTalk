.class public final Lcom/amap/api/services/geocoder/GeocodeAddress;
.super Ljava/lang/Object;
.source "GeocodeAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/amap/api/services/core/LatLonPoint;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/amap/api/services/geocoder/GeocodeAddress$1;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/GeocodeAddress$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/geocoder/GeocodeAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->a:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->b:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->c:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->d:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->e:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->f:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->g:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->h:Ljava/lang/String;

    .line 246
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 247
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->i:Lcom/amap/api/services/core/LatLonPoint;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->j:Ljava/lang/String;

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/api/services/geocoder/GeocodeAddress$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/amap/api/services/geocoder/GeocodeAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public final getAdcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getBuilding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormatAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->i:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public final getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeighborhood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getTownship()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final setAdcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->h:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public final setBuilding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->g:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public final setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->c:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public final setDistrict(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->d:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public final setFormatAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public final setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->i:Lcom/amap/api/services/core/LatLonPoint;

    .line 192
    return-void
.end method

.method public final setLevel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->j:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public final setNeighborhood(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->f:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public final setProvince(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->b:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public final setTownship(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->e:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->i:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeAddress;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    return-void
.end method
