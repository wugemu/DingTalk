.class public final Lcom/amap/api/maps/model/GroundOverlayOptions;
.super Ljava/lang/Object;
.source "GroundOverlayOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/GroundOverlayOptionsCreator;

.field public static final NO_DIMENSION:F = -1.0f


# instance fields
.field private final a:I

.field private b:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private c:Lcom/amap/api/maps/model/LatLng;

.field private d:F

.field private e:F

.field private f:Lcom/amap/api/maps/model/LatLngBounds;

.field private g:F

.field private h:F

.field private i:Z

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/amap/api/maps/model/GroundOverlayOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/GroundOverlayOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/GroundOverlayOptions;->CREATOR:Lcom/amap/api/maps/model/GroundOverlayOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->h:F

    .line 25
    iput-boolean v2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->i:Z

    .line 26
    iput v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->j:F

    .line 27
    iput v1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->k:F

    .line 28
    iput v1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->l:F

    .line 55
    iput v2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->a:I

    .line 56
    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/amap/api/maps/model/LatLng;FFLcom/amap/api/maps/model/LatLngBounds;FFZFFF)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->h:F

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->i:Z

    .line 26
    iput v1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->j:F

    .line 27
    iput v2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->k:F

    .line 28
    iput v2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->l:F

    .line 35
    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->a:I

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 37
    iput-object p3, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->c:Lcom/amap/api/maps/model/LatLng;

    .line 38
    iput p4, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->d:F

    .line 39
    iput p5, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->e:F

    .line 40
    iput-object p6, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->f:Lcom/amap/api/maps/model/LatLngBounds;

    .line 41
    iput p7, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->g:F

    .line 42
    iput p8, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->h:F

    .line 43
    iput-boolean p9, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->i:Z

    .line 44
    iput p10, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->j:F

    .line 45
    iput p11, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->k:F

    .line 46
    iput p12, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->l:F

    .line 47
    return-void
.end method

.method private a(Lcom/amap/api/maps/model/LatLng;FF)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->c:Lcom/amap/api/maps/model/LatLng;

    .line 137
    iput p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->d:F

    .line 138
    iput p3, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->e:F

    .line 139
    return-object p0
.end method


# virtual methods
.method public final anchor(FF)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->k:F

    .line 80
    iput p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->l:F

    .line 81
    return-object p0
.end method

.method public final bearing(F)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->g:F

    .line 168
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public final getAnchorU()F
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->k:F

    return v0
.end method

.method public final getAnchorV()F
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->l:F

    return v0
.end method

.method public final getBearing()F
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->g:F

    return v0
.end method

.method public final getBounds()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->f:Lcom/amap/api/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final getHeight()F
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->e:F

    return v0
.end method

.method public final getImage()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public final getLocation()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->c:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public final getTransparency()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->j:F

    return v0
.end method

.method public final getWidth()F
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->d:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->h:F

    return v0
.end method

.method public final image(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 67
    return-object p0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->i:Z

    return v0
.end method

.method public final position(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->f:Lcom/amap/api/maps/model/LatLngBounds;

    if-eqz v0, :cond_0

    .line 95
    const-string/jumbo v0, "GroundOverlayOptions"

    const-string/jumbo v1, "Position has already been set using positionFromBounds"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    if-nez p1, :cond_1

    .line 99
    const-string/jumbo v0, "GroundOverlayOptions"

    const-string/jumbo v1, "Location must be specified"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    .line 103
    const-string/jumbo v0, "GroundOverlayOptions"

    const-string/jumbo v1, "Width must be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    invoke-direct {p0, p1, p2, p2}, Lcom/amap/api/maps/model/GroundOverlayOptions;->a(Lcom/amap/api/maps/model/LatLng;FF)Lcom/amap/api/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0
.end method

.method public final position(Lcom/amap/api/maps/model/LatLng;FF)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->f:Lcom/amap/api/maps/model/LatLngBounds;

    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v0, "GroundOverlayOptions"

    const-string/jumbo v1, "Position has already been set using positionFromBounds"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    if-nez p1, :cond_1

    .line 125
    const-string/jumbo v0, "GroundOverlayOptions"

    const-string/jumbo v1, "Location must be specified"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    cmpg-float v0, p2, v2

    if-lez v0, :cond_2

    cmpg-float v0, p3, v2

    if-gtz v0, :cond_3

    .line 129
    :cond_2
    const-string/jumbo v0, "GroundOverlayOptions"

    const-string/jumbo v1, "Width and Height must be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/maps/model/GroundOverlayOptions;->a(Lcom/amap/api/maps/model/LatLng;FF)Lcom/amap/api/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0
.end method

.method public final positionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->c:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 153
    const-string/jumbo v0, "GroundOverlayOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Position has already been set using position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->c:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->f:Lcom/amap/api/maps/model/LatLngBounds;

    .line 156
    return-object p0
.end method

.method public final transparency(F)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 203
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 204
    const-string/jumbo v1, "GroundOverlayOptions"

    const-string/jumbo v2, "Transparency must be in the range [0..1]"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 207
    :cond_0
    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->j:F

    .line 208
    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->i:Z

    .line 192
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 330
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->c:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 331
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 332
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 333
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->f:Lcom/amap/api/maps/model/LatLngBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 334
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 335
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 336
    iget-boolean v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 337
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 338
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->k:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 339
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 340
    return-void

    .line 336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->h:F

    .line 180
    return-object p0
.end method
