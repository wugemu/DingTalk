.class public Lcom/alibaba/lightapp/runtime/location/RegistrainMapFragment;
.super Lcom/alibaba/lightapp/runtime/location/MapFragment;
.source "RegistrainMapFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;-><init>()V

    return-void
.end method

.method public static l()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 23
    new-instance v1, Lcom/alibaba/lightapp/runtime/location/RegistrainMapFragment;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/location/RegistrainMapFragment;-><init>()V

    .line 24
    .local v1, "fragment":Lcom/alibaba/lightapp/runtime/location/RegistrainMapFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/location/RegistrainMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    return-object v1
.end method


# virtual methods
.method protected final a(F)I
    .locals 1
    .param p1, "accuracy"    # F

    .prologue
    .line 68
    float-to-int v0, p1

    add-int/lit8 v0, v0, 0x14

    return v0
.end method

.method protected final a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 4
    .param p1, "latLng"    # Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    sget v2, Lhdn$g;->poi_item_icon:I

    .line 33
    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    .line 34
    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    .line 36
    .local v0, "mo":Lcom/amap/api/maps/model/MarkerOptions;
    return-object v0
.end method

.method protected final a(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    return-void
.end method

.method protected final b(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 4
    .param p1, "latLng"    # Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    sget v2, Lhdn$g;->poi_item_icon:I

    .line 43
    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    .line 44
    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    .line 46
    .local v0, "mo":Lcom/amap/api/maps/model/MarkerOptions;
    return-object v0
.end method

.method protected final h()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected final k()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
