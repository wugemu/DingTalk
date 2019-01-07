.class public Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;
.super Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
.source "GMapBrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation


# instance fields
.field private a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

.field private b:Lcom/google/android/gms/maps/GoogleMap;

.field private c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

.field private d:Landroid/location/Location;

.field private e:Lcom/google/android/gms/maps/model/LatLng;

.field private f:Lcom/google/android/gms/maps/model/LatLng;

.field private g:Lcir;

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:I

.field private m:F

.field private n:F

.field private o:Ljava/lang/String;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhld;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/support/v7/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 48
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;-><init>()V

    .line 66
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->h:I

    .line 70
    sget v0, Lhdn$g;->blue_ball:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->i:I

    .line 71
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->j:F

    .line 72
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->k:F

    .line 74
    sget v0, Lhdn$g;->icon_location_item_select:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->l:I

    .line 75
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->m:F

    .line 76
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->n:F

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->d:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;DD)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 48
    .line 6165
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->e:Lcom/google/android/gms/maps/model/LatLng;

    .line 6166
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f()V

    .line 48
    return-void
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a(Lcom/google/android/gms/maps/model/LatLng;F)V

    .line 193
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;F)V
    .locals 2
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 199
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->e:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public static c()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 81
    new-instance v1, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;-><init>()V

    .line 82
    .local v1, "fragment":Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v1
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcir;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->g:Lcir;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    return-object v0
.end method

.method private f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    const-string/jumbo v0, "ZXX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mGMap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 310
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->e:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->e:Lcom/google/android/gms/maps/model/LatLng;

    .line 2177
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->j:F

    iget v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->k:F

    .line 2178
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->i:I

    .line 2180
    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 2179
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 2181
    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    .line 2223
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->m:F

    iget v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->n:F

    .line 2224
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->l:I

    .line 2226
    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 2225
    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 2227
    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 2229
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2230
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 314
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 317
    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->h:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->h:I

    return v0
.end method


# virtual methods
.method public final a(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 203
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    .line 204
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f()V

    .line 207
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    .line 1186
    const/high16 v1, 0x41880000    # 17.0f

    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a(Lcom/google/android/gms/maps/model/LatLng;F)V

    .line 208
    return-void
.end method

.method public final a(IFF)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "anchorX"    # F
    .param p3, "anchorY"    # F

    .prologue
    .line 212
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->l:I

    .line 213
    iput p2, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->m:F

    .line 214
    iput p3, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->n:F

    .line 215
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->o:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public final b(IFF)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "anchorX"    # F
    .param p3, "anchorY"    # F

    .prologue
    .line 171
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->i:I

    .line 172
    iput p2, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->j:F

    .line 173
    iput p3, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->k:F

    .line 174
    return-void
.end method

.method public final d()V
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
    .line 401
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    .line 402
    .local v0, "locationProxy":Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;
    new-instance v1, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;-><init>(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->g:Lcir;

    .line 421
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->g:Lcir;

    .line 4284
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;ZZ)V

    .line 424
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    .line 5186
    const/high16 v2, 0x41880000    # 17.0f

    invoke-direct {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a(Lcom/google/android/gms/maps/model/LatLng;F)V

    .line 427
    :cond_0
    return-void
.end method

.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lhdn$i;->location_browser_popview:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, "v":Landroid/view/View;
    sget v1, Lhdn$h;->pop_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 352
    .local v0, "viewId":I
    sget v1, Lhdn$h;->map_location:I

    if-ne v1, v0, :cond_1

    .line 353
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_location_destination_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2373
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 2374
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    sget v1, Lhdn$h;->map_location_mine:I

    if-ne v1, v0, :cond_0

    .line 358
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_location_myself_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 3366
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->d:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 3367
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 3368
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1110
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->gmap_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    .line 1111
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    invoke-virtual {v1, p3}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->onCreate(Landroid/os/Bundle;)V

    .line 1113
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->gloading:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    .line 1114
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    sget v2, Lhdn$k;->search:I

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->setText(I)V

    .line 1116
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->gmap_location:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1117
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->gmap_location_mine:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1119
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    invoke-virtual {v1, p0}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->I:Landroid/view/View;

    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "t":Ljava/lang/Throwable;
    sget v1, Lhdn$k;->map_cant_use:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 102
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "MapBrowserFragment"

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->G:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->g:Lcir;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 334
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->onDestroy()V

    .line 335
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onDestroy()V

    .line 336
    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 9
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 254
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "chat_location_navigate_click"

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 257
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->p:Ljava/util/List;

    if-nez v5, :cond_2

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lhld;->a(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->p:Ljava/util/List;

    .line 259
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->p:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "hasGaode":Z
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhld;

    .line 262
    .local v3, "m":Lhld;
    instance-of v6, v3, Lhlb;

    if-eqz v6, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 267
    .end local v3    # "m":Lhld;
    :cond_1
    if-nez v0, :cond_2

    .line 268
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->p:Ljava/util/List;

    const/4 v6, 0x0

    new-instance v7, Lhlb;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Lhlb;-><init>(Landroid/app/Activity;)V

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 272
    .end local v0    # "hasGaode":Z
    :cond_2
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->p:Ljava/util/List;

    if-nez v5, :cond_4

    .line 303
    :cond_3
    :goto_0
    return-void

    .line 275
    :cond_4
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->q:Landroid/support/v7/app/AlertDialog;

    if-nez v5, :cond_6

    .line 276
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/CharSequence;

    .line 277
    .local v4, "titles":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 278
    .local v1, "i":I
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhld;

    .line 279
    .restart local v3    # "m":Lhld;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v3}, Lhld;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    move v1, v2

    .line 280
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 281
    .end local v3    # "m":Lhld;
    :cond_5
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;

    invoke-direct {v6, p0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$1;-><init>(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)V

    invoke-virtual {v5, v4, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 298
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->q:Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 300
    .end local v1    # "i":I
    .end local v4    # "titles":[Ljava/lang/CharSequence;
    :cond_6
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->q:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->onLowMemory()V

    .line 346
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onLowMemory()V

    .line 347
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 381
    if-nez p1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 385
    :cond_0
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    .line 386
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    .line 387
    .local v0, "setting":Lcom/google/android/gms/maps/UiSettings;
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 389
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 390
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 391
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->b:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 393
    invoke-static {p0}, Lhkp;->a(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->onPause()V

    .line 328
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onPause()V

    .line 329
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
    .line 431
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 432
    invoke-static {p0, p1, p3}, Lhkp;->a(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;I[I)V

    .line 433
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/GMapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/GMapViewEx;->onResume()V

    .line 322
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onResume()V

    .line 323
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 340
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onStop()V

    .line 341
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lhdn$i;->fragment_gmap_browser_layout:I

    return v0
.end method
