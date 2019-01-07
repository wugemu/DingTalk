.class public Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;
.super Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
.source "MapBrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/amap/api/maps/AMap$InfoWindowAdapter;
.implements Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation


# instance fields
.field private a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

.field private b:Lcom/amap/api/maps/AMap;

.field private c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

.field private d:Landroid/location/Location;

.field private e:Lcom/amap/api/maps/model/LatLng;

.field private f:Lcom/amap/api/maps/model/LatLng;

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

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->h:I

    .line 70
    sget v0, Lhdn$g;->blue_ball:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->i:I

    .line 71
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->j:F

    .line 72
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->k:F

    .line 74
    sget v0, Lhdn$g;->icon_location_item_select:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->l:I

    .line 75
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->m:F

    .line 76
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->n:F

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->d:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)Lcir;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->g:Lcir;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;DD)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 48
    .line 6164
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->e:Lcom/amap/api/maps/model/LatLng;

    .line 6165
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->f()V

    .line 48
    return-void
.end method

.method private a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1
    .param p1, "latLng"    # Lcom/amap/api/maps/model/LatLng;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a(Lcom/amap/api/maps/model/LatLng;F)V

    .line 192
    :cond_0
    return-void
.end method

.method private a(Lcom/amap/api/maps/model/LatLng;F)V
    .locals 2
    .param p1, "latLng"    # Lcom/amap/api/maps/model/LatLng;
    .param p2, "zoom"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-static {p1, p2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 198
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->h:I

    return v0
.end method

.method public static c()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 81
    new-instance v1, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;-><init>()V

    .line 82
    .local v1, "fragment":Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v1
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->h:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->e:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method private f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->clear()V

    .line 307
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->e:Lcom/amap/api/maps/model/LatLng;

    .line 4176
    new-instance v2, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->j:F

    iget v4, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->k:F

    .line 4177
    invoke-virtual {v2, v3, v4}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->i:I

    .line 4179
    invoke-static {v3}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 4178
    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    .line 4180
    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->f:Lcom/amap/api/maps/model/LatLng;

    .line 4222
    new-instance v2, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->m:F

    iget v4, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->n:F

    .line 4223
    invoke-virtual {v2, v3, v4}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->l:I

    .line 4225
    invoke-static {v3}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    .line 4224
    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    .line 4226
    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    .line 4228
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4229
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 311
    :cond_1
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->showInfoWindow()V

    .line 314
    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->f:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 202
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->f:Lcom/amap/api/maps/model/LatLng;

    .line 203
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->f()V

    .line 206
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->f:Lcom/amap/api/maps/model/LatLng;

    .line 3185
    const/high16 v1, 0x41880000    # 17.0f

    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a(Lcom/amap/api/maps/model/LatLng;F)V

    .line 207
    return-void
.end method

.method public final a(IFF)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "anchorX"    # F
    .param p3, "anchorY"    # F

    .prologue
    .line 211
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->l:I

    .line 212
    iput p2, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->m:F

    .line 213
    iput p3, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->n:F

    .line 214
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->o:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public final b(IFF)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "anchorX"    # F
    .param p3, "anchorY"    # F

    .prologue
    .line 170
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->i:I

    .line 171
    iput p2, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->j:F

    .line 172
    iput p3, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->k:F

    .line 173
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
    .line 135
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    .line 136
    .local v0, "locationProxy":Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;
    new-instance v1, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;-><init>(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->g:Lcir;

    .line 155
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->g:Lcir;

    .line 1284
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;ZZ)V

    .line 158
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->f:Lcom/amap/api/maps/model/LatLng;

    .line 2185
    const/high16 v2, 0x41880000    # 17.0f

    invoke-direct {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a(Lcom/amap/api/maps/model/LatLng;F)V

    .line 161
    :cond_0
    return-void
.end method

.method public getInfoContents(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 4
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lhdn$i;->location_browser_popview:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, "v":Landroid/view/View;
    sget v1, Lhdn$h;->pop_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 349
    .local v0, "viewId":I
    sget v1, Lhdn$h;->map_location:I

    if-ne v1, v0, :cond_1

    .line 350
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_location_destination_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4370
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 4371
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->f:Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a(Lcom/amap/api/maps/model/LatLng;)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    sget v1, Lhdn$h;->map_location_mine:I

    if-ne v1, v0, :cond_0

    .line 355
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_location_myself_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 5363
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->d:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 5364
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 5365
    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a(Lcom/amap/api/maps/model/LatLng;)V

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
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->map_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    .line 1111
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    invoke-virtual {v1, p3}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->onCreate(Landroid/os/Bundle;)V

    .line 1113
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->loading:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    .line 1114
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->c:Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    sget v2, Lhdn$k;->search:I

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->setText(I)V

    .line 1116
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->map_location:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1117
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->I:Landroid/view/View;

    sget v2, Lhdn$h;->map_location_mine:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    .line 1122
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v1

    .line 1123
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 1124
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/UiSettings;->setLogoPosition(I)V

    .line 1125
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 1126
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, p0}, Lcom/amap/api/maps/AMap;->setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V

    .line 1127
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, p0}, Lcom/amap/api/maps/AMap;->setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V

    .line 98
    invoke-static {p0}, Lhks;->a(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->I:Landroid/view/View;

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
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .line 330
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->G:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->g:Lcir;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 331
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->onDestroy()V

    .line 332
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onDestroy()V

    .line 333
    return-void
.end method

.method public onInfoWindowClick(Lcom/amap/api/maps/model/Marker;)V
    .locals 9
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 253
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "chat_location_navigate_click"

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 256
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->p:Ljava/util/List;

    if-nez v5, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lhld;->a(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->p:Ljava/util/List;

    .line 258
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->p:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "hasGaode":Z
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhld;

    .line 261
    .local v3, "m":Lhld;
    instance-of v6, v3, Lhlb;

    if-eqz v6, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 266
    .end local v3    # "m":Lhld;
    :cond_1
    if-nez v0, :cond_2

    .line 267
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->p:Ljava/util/List;

    const/4 v6, 0x0

    new-instance v7, Lhlb;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Lhlb;-><init>(Landroid/app/Activity;)V

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 271
    .end local v0    # "hasGaode":Z
    :cond_2
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->p:Ljava/util/List;

    if-nez v5, :cond_4

    .line 302
    :cond_3
    :goto_0
    return-void

    .line 274
    :cond_4
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->q:Landroid/support/v7/app/AlertDialog;

    if-nez v5, :cond_6

    .line 275
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/CharSequence;

    .line 276
    .local v4, "titles":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 277
    .local v1, "i":I
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhld;

    .line 278
    .restart local v3    # "m":Lhld;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v3}, Lhld;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    move v1, v2

    .line 279
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 280
    .end local v3    # "m":Lhld;
    :cond_5
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$2;

    invoke-direct {v6, p0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$2;-><init>(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)V

    invoke-virtual {v5, v4, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 297
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->q:Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 299
    .end local v1    # "i":I
    .end local v4    # "titles":[Ljava/lang/CharSequence;
    :cond_6
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->q:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->onLowMemory()V

    .line 343
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onLowMemory()V

    .line 344
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->onPause()V

    .line 325
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onPause()V

    .line 326
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
    .line 377
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 378
    invoke-static {p0, p1, p3}, Lhks;->a(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;I[I)V

    .line 379
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a:Lcom/alibaba/lightapp/runtime/location/MapViewEx;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/MapViewEx;->onResume()V

    .line 319
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onResume()V

    .line 320
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 337
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->onStop()V

    .line 338
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lhdn$i;->fragment_map_browser_layout:I

    return v0
.end method
