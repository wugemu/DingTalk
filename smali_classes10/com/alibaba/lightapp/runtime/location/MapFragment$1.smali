.class final Lcom/alibaba/lightapp/runtime/location/MapFragment$1;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/location/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/location/MapFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/MapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraChange(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 0
    .param p1, "cameraPosition"    # Lcom/amap/api/maps/model/CameraPosition;

    .prologue
    .line 197
    return-void
.end method

.method public final onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 6
    .param p1, "cameraPosition"    # Lcom/amap/api/maps/model/CameraPosition;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    iget-object v1, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    .line 203
    iget-object v0, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$1;->a:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    iget-object v1, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v1, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v0, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapFragment;DD)V

    .line 207
    :cond_0
    return-void
.end method
