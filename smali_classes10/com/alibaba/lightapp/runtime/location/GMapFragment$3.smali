.class final Lcom/alibaba/lightapp/runtime/location/GMapFragment$3;
.super Ljava/lang/Object;
.source "GMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/location/GMapFragment;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/location/GMapFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$3;->a:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 2
    .param p1, "cameraPosition"    # Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 399
    if-eqz p1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$3;->a:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->c(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 402
    :cond_0
    return-void
.end method
