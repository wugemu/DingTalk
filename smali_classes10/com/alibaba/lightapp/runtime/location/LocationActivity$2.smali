.class final Lcom/alibaba/lightapp/runtime/location/LocationActivity$2;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/location/LocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$2;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$2;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->c(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$2;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 238
    return-void
.end method

.method public final a(Lcom/amap/api/services/geocoder/RegeocodeResult;Lcom/amap/api/maps/model/LatLng;)V
    .locals 3
    .param p1, "regeocodeResult"    # Lcom/amap/api/services/geocoder/RegeocodeResult;
    .param p2, "latLng"    # Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeResult;->getRegeocodeAddress()Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object v0

    .line 226
    .local v0, "regeocodeAddress":Lcom/amap/api/services/geocoder/RegeocodeAddress;
    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$2;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$2;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getFormatAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .end local v0    # "regeocodeAddress":Lcom/amap/api/services/geocoder/RegeocodeAddress;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$2;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)V

    .line 232
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$2;->a:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Lcom/amap/api/maps/model/LatLng;)V

    .line 233
    return-void
.end method
