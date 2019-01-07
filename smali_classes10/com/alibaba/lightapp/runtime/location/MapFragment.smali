.class public Lcom/alibaba/lightapp/runtime/location/MapFragment;
.super Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
.source "MapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation


# instance fields
.field private a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

.field private b:Lcom/amap/api/maps/AMap;

.field private c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

.field private d:Landroid/location/Location;

.field private e:Landroid/location/Location;

.field private f:Lcom/amap/api/maps/model/LatLng;

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

.field private v:Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/high16 v1, 0x3f000000    # 0.5f

    .line 59
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;-><init>()V

    .line 76
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->h:I

    .line 82
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->i:I

    .line 84
    sget v0, Lhdn$g;->blue_ball:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->j:I

    .line 85
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->k:F

    .line 86
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->l:F

    .line 88
    sget v0, Lhdn$g;->icon_location_item_select:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->m:I

    .line 89
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->n:F

    .line 90
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->o:F

    .line 92
    sget v0, Lhdn$g;->poi_item_icon:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->p:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->q:F

    .line 94
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->r:F

    .line 150
    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->s:D

    .line 151
    iput-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->t:D

    .line 432
    new-instance v0, Lcom/alibaba/lightapp/runtime/location/MapFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment$4;-><init>(Lcom/alibaba/lightapp/runtime/location/MapFragment;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->v:Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/MapFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->i:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/MapFragment;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcir;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->g:Lcir;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;
    .param p1, "x1"    # Lcom/amap/api/maps/model/LatLng;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->f:Lcom/amap/api/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/MapFragment;DD)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(DD)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/MapFragment;ILjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    .line 2324
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 2325
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2326
    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2327
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->G:Landroid/app/Application;

    invoke-static {v1}, Lcms;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2328
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcis;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2330
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2331
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "MapFragment"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/amap/api/location/AMapLocation;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 59
    .line 2308
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 2309
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2310
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(F)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2311
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(D)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2312
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(D)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2313
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2314
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2315
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->G:Landroid/app/Application;

    invoke-static {v2}, Lcms;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2316
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcis;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2318
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2319
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "MapFragment"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/amap/api/maps/model/LatLng;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;
    .param p1, "x1"    # Lcom/amap/api/maps/model/LatLng;
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/amap/api/maps/model/LatLng;I)V

    return-void
.end method

.method private a(Lcom/amap/api/maps/model/LatLng;I)V
    .locals 2
    .param p1, "latLng"    # Lcom/amap/api/maps/model/LatLng;
    .param p2, "distance"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 393
    new-instance v0, Lcom/alibaba/lightapp/runtime/location/POIValueFetch;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/location/POIValueFetch;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/alibaba/lightapp/runtime/location/MapFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/location/MapFragment$3;-><init>(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/amap/api/maps/model/LatLng;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/lightapp/runtime/location/POIValueFetch;->a(Lcom/amap/api/maps/model/LatLng;ILcom/alibaba/lightapp/runtime/location/POIValueFetch$a;)V

    .line 422
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/location/MapFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->i:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/amap/api/maps/model/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;
    .param p1, "x1"    # Lcom/amap/api/maps/model/LatLng;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(Lcom/amap/api/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/location/MapFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->h:I

    return v0
.end method

.method private c(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 575
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->e:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->e:Landroid/location/Location;

    invoke-virtual {v1, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 577
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->e:Landroid/location/Location;

    invoke-virtual {v1, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 584
    :goto_0
    return-void

    .line 579
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "new_create"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, "location":Landroid/location/Location;
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 581
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 582
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->e:Landroid/location/Location;

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/amap/api/maps/model/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;
    .param p1, "x1"    # Lcom/amap/api/maps/model/LatLng;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d(Lcom/amap/api/maps/model/LatLng;)V

    return-void
.end method

.method private c(Lcom/amap/api/maps/model/LatLng;)V
    .locals 2
    .param p1, "latLng"    # Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    .line 341
    .local v0, "mo":Lcom/amap/api/maps/model/MarkerOptions;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    .line 345
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    return-object v0
.end method

.method private d(Lcom/amap/api/maps/model/LatLng;)V
    .locals 2
    .param p1, "latLng"    # Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {p1, v1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 385
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->u:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/location/MapFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->h:I

    return v0
.end method

.method public static g()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 97
    new-instance v1, Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/location/MapFragment;-><init>()V

    .line 98
    .local v1, "fragment":Lcom/alibaba/lightapp/runtime/location/MapFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 100
    return-object v1
.end method

.method private l()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 546
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->clear()V

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 552
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(Lcom/amap/api/maps/model/LatLng;)V

    .line 557
    :cond_1
    :goto_0
    return-void

    .line 554
    :cond_2
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->s:D

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->t:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(Lcom/amap/api/maps/model/LatLng;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(F)I
    .locals 1
    .param p1, "accuracy"    # F

    .prologue
    .line 336
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->i:I

    return v0
.end method

.method protected a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 4
    .param p1, "latLng"    # Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 355
    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->k:F

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->l:F

    .line 356
    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->j:I

    .line 358
    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    .line 357
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    .line 359
    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    .line 361
    .local v0, "mo":Lcom/amap/api/maps/model/MarkerOptions;
    return-object v0
.end method

.method public final a(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->s:D

    .line 156
    iput-wide p3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->t:D

    .line 157
    return-void
.end method

.method public final a(IFF)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "anchorX"    # F
    .param p3, "anchorY"    # F

    .prologue
    .line 526
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->m:I

    .line 527
    iput p2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->n:F

    .line 528
    iput p3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->o:F

    .line 529
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 445
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->l()V

    .line 448
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-virtual {v2}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 449
    .local v0, "cameraPosition":Lcom/amap/api/maps/model/CameraPosition;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 450
    iget-object v1, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    .line 451
    .local v1, "latLng":Lcom/amap/api/maps/model/LatLng;
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->i:I

    invoke-direct {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/amap/api/maps/model/LatLng;I)V

    goto :goto_0

    .line 440
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
    .line 428
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->u:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    .line 429
    return-void
.end method

.method public final a(Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;)V
    .locals 3
    .param p1, "callback"    # Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 471
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 472
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 473
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    new-instance v2, Lcom/alibaba/lightapp/runtime/location/MapFragment$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/lightapp/runtime/location/MapFragment$5;-><init>(Lcom/alibaba/lightapp/runtime/location/MapFragment;Landroid/os/Handler;Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V

    .line 522
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method protected b(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 4
    .param p1, "latLng"    # Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 532
    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->n:F

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->o:F

    .line 533
    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->m:I

    .line 535
    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    .line 534
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    .line 536
    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    .line 538
    .local v0, "mo":Lcom/amap/api/maps/model/MarkerOptions;
    return-object v0
.end method

.method public final b(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->l()V

    .line 460
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(DD)V

    .line 461
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 462
    .local v0, "latLng":Lcom/amap/api/maps/model/LatLng;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    .line 466
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d(Lcom/amap/api/maps/model/LatLng;)V

    .line 467
    return-void
.end method

.method public final b(IFF)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "anchorX"    # F
    .param p3, "anchorY"    # F

    .prologue
    .line 349
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->j:I

    .line 350
    iput p2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->k:F

    .line 351
    iput p3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->l:F

    .line 352
    return-void
.end method

.method public final c()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->f:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public final c(IFF)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "anchorX"    # F
    .param p3, "anchorY"    # F

    .prologue
    .line 145
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->p:I

    .line 146
    iput p2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->q:F

    .line 147
    iput p3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->r:F

    .line 148
    return-void
.end method

.method public final d()Landroid/location/Location;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 561
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    if-eqz v2, :cond_0

    .line 562
    new-instance v0, Landroid/location/Location;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 563
    .local v0, "location":Landroid/location/Location;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 564
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    move-object v1, v0

    .line 570
    .end local v0    # "location":Landroid/location/Location;
    .local v1, "location":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 567
    .end local v1    # "location":Ljava/lang/Object;
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v2, "new_create"

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 568
    .restart local v0    # "location":Landroid/location/Location;
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->s:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 569
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->t:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    move-object v1, v0

    .line 570
    .restart local v1    # "location":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final f()Landroid/location/Location;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 588
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->e:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 589
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->e:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 594
    :goto_0
    return-object v0

    .line 591
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "new_create"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, "location":Landroid/location/Location;
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->s:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 593
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->t:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 14
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v10, 0x0

    .line 218
    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->t:D

    cmpl-double v7, v8, v12

    if-eqz v7, :cond_0

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->s:D

    cmpl-double v7, v8, v12

    if-eqz v7, :cond_0

    .line 220
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->s:D

    iget-wide v10, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->t:D

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 221
    .local v2, "latLng":Lcom/amap/api/maps/model/LatLng;
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(Lcom/amap/api/maps/model/LatLng;)V

    .line 223
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d(Lcom/amap/api/maps/model/LatLng;)V

    .line 225
    iget v7, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->i:I

    invoke-direct {p0, v2, v7}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/amap/api/maps/model/LatLng;I)V

    .line 243
    .end local v2    # "latLng":Lcom/amap/api/maps/model/LatLng;
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string/jumbo v7, "mp_recent_lat"

    invoke-static {v7}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "latStr":Ljava/lang/String;
    const-string/jumbo v7, "mp_recent_lng"

    invoke-static {v7}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "lngStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 232
    invoke-static {v3}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v0

    .line 233
    .local v0, "lat":D
    invoke-static {v6}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v4

    .line 234
    .local v4, "lng":D
    cmpl-double v7, v0, v10

    if-lez v7, :cond_1

    cmpl-double v7, v4, v10

    if-lez v7, :cond_1

    .line 235
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    if-eqz v7, :cond_1

    .line 236
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v8, v0, v1, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/high16 v9, 0x41880000    # 17.0f

    invoke-static {v8, v9}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 240
    .end local v0    # "lat":D
    .end local v4    # "lng":D
    :cond_1
    invoke-static {p0}, Lhkt;->a(Lcom/alibaba/lightapp/runtime/location/MapFragment;)V

    goto :goto_0
.end method

.method public final j()V
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
    .line 247
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    .line 248
    .local v0, "locationProxy":Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;
    new-instance v1, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;-><init>(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->g:Lcir;

    .line 300
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->g:Lcir;

    .line 1284
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;ZZ)V

    .line 301
    return-void
.end method

.method protected k()Z
    .locals 1

    .prologue
    .line 542
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
    .line 636
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 638
    .local v0, "viewId":I
    sget v1, Lhdn$h;->map_location:I

    if-ne v1, v0, :cond_1

    .line 1656
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    if-eqz v1, :cond_0

    .line 1657
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->clear()V

    .line 1660
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    if-eqz v1, :cond_2

    .line 1661
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(Lcom/amap/api/maps/model/LatLng;)V

    .line 1662
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 1663
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(DD)V

    .line 1669
    :goto_0
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d(Lcom/amap/api/maps/model/LatLng;)V

    .line 1670
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->i:I

    invoke-direct {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/amap/api/maps/model/LatLng;I)V

    .line 641
    :cond_1
    return-void

    .line 1665
    :cond_2
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->s:D

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->t:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(Lcom/amap/api/maps/model/LatLng;)V

    .line 1666
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->s:D

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->t:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 1667
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->s:D

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->t:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(DD)V

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

    .line 111
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1125
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->map_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    .line 1126
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    invoke-virtual {v0, p3}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->onCreate(Landroid/os/Bundle;)V

    .line 1127
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->v:Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;

    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->setOnTouchEvent(Lcom/alibaba/lightapp/runtime/location/MapViewEx$a;)V

    .line 1129
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->map_center_poi:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1160
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->p:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1161
    if-eqz v5, :cond_0

    .line 1166
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->q:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    .line 1167
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->q:F

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v7

    float-to-int v2, v2

    move v3, v2

    move v4, v1

    .line 1171
    :goto_0
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->r:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_3

    .line 1172
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->r:F

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 1176
    :goto_1
    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1177
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1137
    :goto_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->I:Landroid/view/View;

    sget v1, Lhdn$h;->loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    .line 1138
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    sget v1, Lhdn$k;->search:I

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->setText(I)V

    .line 1140
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->I:Landroid/view/View;

    sget v1, Lhdn$h;->map_location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    .line 1187
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    .line 1189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 1190
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setLogoPosition(I)V

    .line 1191
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 1193
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/alibaba/lightapp/runtime/location/MapFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment$1;-><init>(Lcom/alibaba/lightapp/runtime/location/MapFragment;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->i()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->I:Landroid/view/View;

    return-object v0

    .line 1168
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->q:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_6

    .line 1169
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->q:F

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

    .line 1173
    :cond_3
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->r:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_5

    .line 1174
    iget v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->r:F

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

    goto/16 :goto_1

    .line 1134
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 117
    :catch_0
    move-exception v0

    sget v0, Lhdn$k;->map_cant_use:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_3

    :cond_5
    move v2, v1

    goto/16 :goto_1

    :cond_6
    move v3, v1

    move v4, v1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->onDestroy()V

    .line 619
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onDestroy()V

    .line 620
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->onLowMemory()V

    .line 630
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onLowMemory()V

    .line 631
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->onPause()V

    .line 612
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onPause()V

    .line 613
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
    .line 675
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 676
    invoke-static {p0, p1, p3}, Lhkt;->a(Lcom/alibaba/lightapp/runtime/location/MapFragment;I[I)V

    .line 677
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->onResume()V

    .line 606
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onResume()V

    .line 607
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 624
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->onStop()V

    .line 625
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lhdn$i;->fragment_map_layout:I

    return v0
.end method
