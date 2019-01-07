.class public final Lcom/amap/api/maps/model/PolylineOptions;
.super Ljava/lang/Object;
.source "PolylineOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/PolylineOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:I

.field private e:F

.field private f:Z

.field private g:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:F

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/amap/api/maps/model/PolylineOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PolylineOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/PolylineOptions;->CREATOR:Lcom/amap/api/maps/model/PolylineOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->c:F

    .line 20
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->d:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->e:F

    .line 22
    iput-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->f:Z

    .line 31
    iput-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->k:Z

    .line 32
    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->l:Z

    .line 34
    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->m:Z

    .line 35
    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->n:Z

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->o:F

    .line 43
    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->p:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public final aboveMaskLayer(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->p:Z

    .line 434
    return-object p0
.end method

.method public final add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    return-object p0
.end method

.method public final varargs add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    return-object p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 223
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 225
    iget-object v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    :cond_0
    return-object p0
.end method

.method public final color(I)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    .prologue
    .line 253
    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->d:I

    .line 254
    return-object p0
.end method

.method public final colorValues(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->i:Ljava/util/List;

    .line 135
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public final geodesic(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->l:Z

    .line 290
    return-object p0
.end method

.method public final getColor()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->d:I

    return v0
.end method

.method public final getColorValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->i:Ljava/util/List;

    return-object v0
.end method

.method public final getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public final getCustomTextureIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->j:Ljava/util/List;

    return-object v0
.end method

.method public final getCustomTextureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->h:Ljava/util/List;

    return-object v0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getTransparency()F
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->o:F

    return v0
.end method

.method public final getWidth()F
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->c:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->e:F

    return v0
.end method

.method public final isAboveMaskLayer()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->p:Z

    return v0
.end method

.method public final isDottedLine()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->m:Z

    return v0
.end method

.method public final isGeodesic()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->l:Z

    return v0
.end method

.method public final isUseGradient()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->n:Z

    return v0
.end method

.method public final isUseTexture()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->k:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->f:Z

    return v0
.end method

.method public final setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 72
    return-object p0
.end method

.method public final setCustomTextureIndex(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->j:Ljava/util/List;

    .line 114
    return-object p0
.end method

.method public final setCustomTextureList(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->h:Ljava/util/List;

    .line 94
    return-object p0
.end method

.method public final setDottedLine(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->m:Z

    .line 302
    return-object p0
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 523
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 525
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 527
    :cond_0
    return-void
.end method

.method public final setUseTexture(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->k:Z

    .line 60
    return-object p0
.end method

.method public final transparency(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    .prologue
    .line 412
    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->o:F

    .line 413
    return-object p0
.end method

.method public final useGradient(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->n:Z

    .line 155
    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->f:Z

    .line 278
    return-object p0
.end method

.method public final width(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->c:F

    .line 242
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 379
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 381
    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 382
    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 384
    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->o:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 385
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x5

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->f:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->m:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->l:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->n:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->p:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 387
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->j:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 403
    :cond_3
    return-void
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    .prologue
    .line 265
    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->e:F

    .line 266
    return-object p0
.end method
