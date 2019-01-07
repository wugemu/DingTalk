.class public final Lcom/amap/api/services/district/DistrictItem;
.super Ljava/lang/Object;
.source "DistrictItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amap/api/services/core/LatLonPoint;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/amap/api/services/district/DistrictItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/district/DistrictItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/district/DistrictItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->g:[Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->g:[Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    .line 216
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/amap/api/services/district/DistrictItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->g:[Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->g:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->g:[Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 95
    iput-object p5, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public final districtBoundary()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    if-ne p0, p1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 271
    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 273
    goto :goto_0

    .line 274
    :cond_3
    check-cast p1, Lcom/amap/api/services/district/DistrictItem;

    .line 275
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 276
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 277
    goto :goto_0

    .line 278
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 279
    goto :goto_0

    .line 280
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_6

    .line 281
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_7

    move v0, v1

    .line 282
    goto :goto_0

    .line 283
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 284
    goto :goto_0

    .line 285
    :cond_7
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 286
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 287
    goto :goto_0

    .line 288
    :cond_8
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 289
    goto :goto_0

    .line 290
    :cond_9
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->g:[Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 291
    goto :goto_0

    .line 292
    :cond_a
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    if-nez v2, :cond_b

    .line 293
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    if-eqz v2, :cond_c

    move v0, v1

    .line 294
    goto :goto_0

    .line 295
    :cond_b
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 296
    goto/16 :goto_0

    .line 297
    :cond_c
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 298
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    if-eqz v2, :cond_e

    move v0, v1

    .line 299
    goto/16 :goto_0

    .line 300
    :cond_d
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 301
    goto/16 :goto_0

    .line 302
    :cond_e
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 303
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 304
    goto/16 :goto_0

    .line 305
    :cond_f
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 306
    goto/16 :goto_0
.end method

.method public final getAdcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getCenter()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public final getCitycode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubDistrict()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 249
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 250
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 251
    :goto_2
    add-int/2addr v0, v2

    .line 252
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->g:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 253
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    .line 254
    :goto_3
    add-int/2addr v0, v2

    .line 255
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 256
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 257
    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    goto :goto_1

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 254
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_3

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 256
    :cond_5
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public final setAdcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public final setCenter(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 168
    return-void
.end method

.method public final setCitycode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public final setDistrictBoundary([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->g:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method public final setLevel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public final setSubDistrict(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 204
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DistrictItem [mCitycode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAdcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDistricts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 31
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 33
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->g:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->g:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 36
    return-void
.end method
