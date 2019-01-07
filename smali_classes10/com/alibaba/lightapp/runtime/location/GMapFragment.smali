.class public Lcom/alibaba/lightapp/runtime/location/GMapFragment;
.super Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
.source "GMapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation


# instance fields
.field private a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

.field private b:Lcom/google/android/gms/maps/GoogleMap;

.field private c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

.field private d:Landroid/location/Location;

.field private e:Landroid/location/Location;

.field private f:Lcom/google/android/gms/maps/model/LatLng;

.field private g:Lcir;

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:I

.field private n:F

.field private o:F

.field private p:I

.field private q:F

.field private r:F

.field private s:D

.field private t:D

.field private u:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

.field private v:Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/high16 v1, 0x3f000000    # 0.5f

    .line 58
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;-><init>()V

    .line 75
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->h:I

    .line 81
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->i:I

    .line 85
    sget v0, Lhdn$g;->blue_ball:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->j:I

    .line 86
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->k:F

    .line 87
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->l:F

    .line 89
    sget v0, Lhdn$g;->icon_location_item_select:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->m:I

    .line 90
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->n:F

    .line 91
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->o:F

    .line 93
    sget v0, Lhdn$g;->poi_item_icon:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->p:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->q:F

    .line 95
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->r:F

    .line 155
    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->s:D

    .line 156
    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->t:D

    .line 409
    new-instance v0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment$4;-><init>(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->v:Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->i:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)Lcir;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->g:Lcir;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;DD)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->c(DD)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;ILjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 58
    .line 3280
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 3281
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3282
    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3283
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->G:Landroid/app/Application;

    invoke-static {v1}, Lcms;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3284
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcis;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3286
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3287
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "GMapFragment"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/amap/api/location/AMapLocation;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 58
    .line 3264
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 3265
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3266
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(F)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3267
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(D)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3268
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(D)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3269
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3270
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3271
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->G:Landroid/app/Application;

    invoke-static {v2}, Lcms;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3272
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcis;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3274
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3275
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "GMapFragment"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/google/android/gms/maps/model/LatLng;I)V

    return-void
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 296
    .line 1310
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->k:F

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->l:F

    .line 1311
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->j:I

    .line 1313
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    .line 1312
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1314
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 297
    .local v0, "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 300
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 6
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "distance"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 346
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 348
    .local v0, "aLatLng":Lcom/amap/api/maps/model/LatLng;
    new-instance v1, Lcom/alibaba/lightapp/runtime/location/POIValueFetch;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/location/POIValueFetch;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/alibaba/lightapp/runtime/location/GMapFragment$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/alibaba/lightapp/runtime/location/GMapFragment$2;-><init>(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/amap/api/maps/model/LatLng;I)V

    invoke-virtual {v1, v0, p2, v2}, Lcom/alibaba/lightapp/runtime/location/POIValueFetch;->a(Lcom/amap/api/maps/model/LatLng;ILcom/alibaba/lightapp/runtime/location/POIValueFetch$a;)V

    .line 375
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->i:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method private b(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 338
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->h:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method private c(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 552
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->e:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->e:Landroid/location/Location;

    invoke-virtual {v1, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 554
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->e:Landroid/location/Location;

    invoke-virtual {v1, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 561
    :goto_0
    return-void

    .line 556
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "new_create"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "location":Landroid/location/Location;
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 558
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 559
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->e:Landroid/location/Location;

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->u:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->h:I

    return v0
.end method

.method public static g()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 98
    new-instance v1, Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;-><init>()V

    .line 99
    .local v1, "fragment":Lcom/alibaba/lightapp/runtime/location/GMapFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    return-object v1
.end method

.method private k()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 523
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 529
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 534
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->s:D

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->t:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(F)I
    .locals 1
    .param p1, "accuracy"    # F

    .prologue
    .line 292
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->i:I

    return v0
.end method

.method public final a(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->s:D

    .line 161
    iput-wide p3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->t:D

    .line 162
    return-void
.end method

.method public final a(IFF)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "anchorX"    # F
    .param p3, "anchorY"    # F

    .prologue
    .line 503
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->m:I

    .line 504
    iput p2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->n:F

    .line 505
    iput p3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->o:F

    .line 506
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 435
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 422
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->k()V

    .line 425
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 427
    .local v0, "cameraPosition":Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 428
    iget-object v1, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 429
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->i:I

    invoke-direct {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/google/android/gms/maps/model/LatLng;I)V

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;)V
    .locals 0
    .param p1, "onRegecodeListener"    # Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->u:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    .line 382
    return-void
.end method

.method public final a(Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;)V
    .locals 3
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 450
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 451
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 453
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/alibaba/lightapp/runtime/location/GMapFragment$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment$5;-><init>(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Landroid/os/Handler;Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    .line 498
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public final b(DD)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->k()V

    .line 440
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->c(DD)V

    .line 441
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 442
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    .line 2509
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->n:F

    iget v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->o:F

    .line 2510
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->m:I

    .line 2512
    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 2511
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 2513
    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 443
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 445
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 446
    return-void
.end method

.method public final b(IFF)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "anchorX"    # F
    .param p3, "anchorY"    # F

    .prologue
    .line 304
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->j:I

    .line 305
    iput p2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->k:F

    .line 306
    iput p3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->l:F

    .line 307
    return-void
.end method

.method public final c()Lcom/amap/api/maps/model/LatLng;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 577
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_0

    .line 578
    const/4 v0, 0x0

    .line 584
    :goto_0
    return-object v0

    .line 581
    :cond_0
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 584
    .local v0, "aLatLng":Lcom/amap/api/maps/model/LatLng;
    goto :goto_0
.end method

.method public final c(IFF)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "anchorX"    # F
    .param p3, "anchorY"    # F

    .prologue
    .line 150
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->p:I

    .line 151
    iput p2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->q:F

    .line 152
    iput p3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->r:F

    .line 153
    return-void
.end method

.method public final d()Landroid/location/Location;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 538
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    if-eqz v2, :cond_0

    .line 539
    new-instance v0, Landroid/location/Location;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 540
    .local v0, "location":Landroid/location/Location;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 541
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    move-object v1, v0

    .line 547
    .end local v0    # "location":Landroid/location/Location;
    .local v1, "location":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 544
    .end local v1    # "location":Ljava/lang/Object;
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v2, "new_create"

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 545
    .restart local v0    # "location":Landroid/location/Location;
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->s:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 546
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->t:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    move-object v1, v0

    .line 547
    .restart local v1    # "location":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final f()Landroid/location/Location;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 565
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->e:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 566
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->e:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 571
    :goto_0
    return-object v0

    .line 568
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "new_create"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, "location":Landroid/location/Location;
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->s:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 570
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->t:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 4
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    .line 212
    .local v0, "locationProxy":Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;
    new-instance v1, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;-><init>(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->g:Lcir;

    .line 256
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->g:Lcir;

    .line 1284
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;ZZ)V

    .line 257
    return-void
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 620
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 622
    .local v0, "viewId":I
    sget v1, Lhdn$h;->map_location:I

    if-ne v1, v0, :cond_1

    .line 2640
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 2641
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 2644
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    if-eqz v1, :cond_2

    .line 2645
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2646
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2647
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->c(DD)V

    .line 2653
    :goto_0
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2654
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->i:I

    invoke-direct {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 625
    :cond_1
    return-void

    .line 2649
    :cond_2
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->s:D

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->t:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2650
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->s:D

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->t:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2651
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->s:D

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->t:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->c(DD)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 112
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1127
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->gmap_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    .line 1129
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    invoke-virtual {v0, p3}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->onCreate(Landroid/os/Bundle;)V

    .line 1130
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->v:Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;

    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->setOnTouchEvent(Lcom/alibaba/lightapp/runtime/location/GMapViewEx$a;)V

    .line 1132
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->gmap_center_poi:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1165
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->p:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1166
    if-eqz v5, :cond_0

    .line 1171
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->q:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    .line 1172
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->q:F

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v7

    float-to-int v2, v2

    move v3, v2

    move v4, v1

    .line 1176
    :goto_0
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->r:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    .line 1177
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->r:F

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 1181
    :goto_1
    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1182
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1140
    :goto_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->I:Landroid/view/View;

    sget v1, Lhdn$h;->gloading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    .line 1141
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    sget v1, Lhdn$k;->search:I

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->setText(I)V

    .line 1143
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->I:Landroid/view/View;

    sget v1, Lhdn$h;->gmap_location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->I:Landroid/view/View;

    return-object v0

    .line 1173
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->q:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_5

    .line 1174
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->q:F

    neg-float v2, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v7

    float-to-int v2, v2

    move v3, v1

    move v4, v2

    goto :goto_0

    .line 1178
    :cond_2
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->r:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_4

    .line 1179
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->r:F

    neg-float v2, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    mul-float/2addr v2, v7

    float-to-int v2, v2

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1

    .line 1137
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 119
    :catch_0
    move-exception v0

    sget v0, Lhdn$k;->map_cant_use:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v3, v1

    move v4, v1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->onDestroy()V

    .line 603
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onDestroy()V

    .line 604
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->onLowMemory()V

    .line 614
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onLowMemory()V

    .line 615
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 6
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 386
    if-nez p1, :cond_0

    .line 2203
    :goto_0
    return-void

    .line 390
    :cond_0
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    .line 391
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    .line 392
    .local v0, "setting":Lcom/google/android/gms/maps/UiSettings;
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 394
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 396
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/alibaba/lightapp/runtime/location/GMapFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment$3;-><init>(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 2194
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->t:D

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->s:D

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    .line 2196
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->s:D

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->t:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2197
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2199
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2201
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->i:I

    invoke-direct {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/google/android/gms/maps/model/LatLng;I)V

    goto :goto_0

    .line 2204
    :cond_1
    invoke-static {p0}, Lhkq;->a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->onPause()V

    .line 596
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onPause()V

    .line 597
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 659
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 660
    invoke-static {p0, p1, p3}, Lhkq;->a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;I[I)V

    .line 661
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->onResume()V

    .line 590
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onResume()V

    .line 591
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 608
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onStop()V

    .line 609
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lhdn$i;->fragment_gmap_layout:I

    return v0
.end method
