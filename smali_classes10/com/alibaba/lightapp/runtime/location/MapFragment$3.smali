.class final Lcom/alibaba/lightapp/runtime/location/MapFragment$3;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/location/POIValueFetch$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/amap/api/maps/model/LatLng;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/model/LatLng;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/lightapp/runtime/location/MapFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/amap/api/maps/model/LatLng;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$3;->c:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$3;->a:Lcom/amap/api/maps/model/LatLng;

    iput p3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/services/geocoder/RegeocodeResult;)V
    .locals 2
    .param p1, "result"    # Lcom/amap/api/services/geocoder/RegeocodeResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 407
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$3;->c:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$3;->c:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->e(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$3;->c:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->e(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$3;->a:Lcom/amap/api/maps/model/LatLng;

    invoke-interface {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;->a(Lcom/amap/api/services/geocoder/RegeocodeResult;Lcom/amap/api/maps/model/LatLng;)V

    .line 419
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 5
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$3;->c:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->setVisibility(I)V

    .line 398
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "MapFragment"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "MapFragment regeocodeLatLng err code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 399
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " info:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 398
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$3;->c:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->e(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$3;->c:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->e(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;->a()V

    .line 403
    :cond_0
    return-void
.end method
