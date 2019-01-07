.class public final Lcom/amap/api/services/geocoder/RegeocodeAddress;
.super Ljava/lang/Object;
.source "RegeocodeAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/geocoder/RegeocodeAddress;",
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

.field private h:Lcom/amap/api/services/geocoder/StreetNumber;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/RegeocodeRoad;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/road/Crossroad;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/BusinessArea;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/AoiItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/amap/api/services/geocoder/RegeocodeAddress$1;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->l:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->m:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->n:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->o:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->p:Ljava/util/List;

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->l:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->m:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->n:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->o:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->p:Ljava/util/List;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->a:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->b:Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->c:Ljava/lang/String;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->d:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->e:Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->f:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->g:Ljava/lang/String;

    .line 367
    const-class v0, Lcom/amap/api/services/geocoder/StreetNumber;

    .line 368
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 367
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/geocoder/StreetNumber;

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->h:Lcom/amap/api/services/geocoder/StreetNumber;

    .line 369
    const-class v0, Lcom/amap/api/services/road/Road;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->l:Ljava/util/List;

    .line 370
    const-class v0, Lcom/amap/api/services/road/Crossroad;

    .line 371
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->m:Ljava/util/List;

    .line 372
    const-class v0, Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->n:Ljava/util/List;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->i:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->j:Ljava/lang/String;

    .line 375
    const-class v0, Lcom/amap/api/services/geocoder/BusinessArea;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->o:Ljava/util/List;

    .line 376
    const-class v0, Lcom/amap/api/services/geocoder/AoiItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->p:Ljava/util/List;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->k:Ljava/lang/String;

    .line 378
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/api/services/geocoder/RegeocodeAddress$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public final getAdCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getAois()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/AoiItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->p:Ljava/util/List;

    return-object v0
.end method

.method public final getBuilding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getBusinessAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/BusinessArea;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->o:Ljava/util/List;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getCrossroads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/road/Crossroad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->m:Ljava/util/List;

    return-object v0
.end method

.method public final getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormatAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeighborhood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getPois()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->n:Ljava/util/List;

    return-object v0
.end method

.method public final getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getRoads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/RegeocodeRoad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->l:Ljava/util/List;

    return-object v0
.end method

.method public final getStreetNumber()Lcom/amap/api/services/geocoder/StreetNumber;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->h:Lcom/amap/api/services/geocoder/StreetNumber;

    return-object v0
.end method

.method public final getTowncode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getTownship()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final setAdCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->j:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public final setAois(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/AoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->p:Ljava/util/List;

    .line 309
    return-void
.end method

.method public final setBuilding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->g:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public final setBusinessAreas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/BusinessArea;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->o:Ljava/util/List;

    .line 293
    return-void
.end method

.method public final setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->c:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public final setCityCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->i:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final setCrossroads(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/road/Crossroad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->m:Ljava/util/List;

    .line 275
    return-void
.end method

.method public final setDistrict(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->d:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public final setFormatAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public final setNeighborhood(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->f:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public final setPois(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->n:Ljava/util/List;

    .line 257
    return-void
.end method

.method public final setProvince(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->b:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public final setRoads(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/RegeocodeRoad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->l:Ljava/util/List;

    .line 239
    return-void
.end method

.method public final setStreetNumber(Lcom/amap/api/services/geocoder/StreetNumber;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->h:Lcom/amap/api/services/geocoder/StreetNumber;

    .line 221
    return-void
.end method

.method public final setTowncode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->k:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public final setTownship(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->e:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->h:Lcom/amap/api/services/geocoder/StreetNumber;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 349
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->m:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 350
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->n:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 351
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->o:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 354
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->p:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 355
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeAddress;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    return-void
.end method
