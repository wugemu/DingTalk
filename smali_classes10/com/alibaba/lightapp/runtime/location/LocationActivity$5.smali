.class final Lcom/alibaba/lightapp/runtime/location/LocationActivity$5;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/location/LocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/location/LocationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$5;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$5;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 495
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$5;->a:Landroid/content/Intent;

    const-string/jumbo v2, "location_image"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$5;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->s(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->c()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    .line 499
    .local v0, "latlng":Lcom/amap/api/maps/model/LatLng;
    if-eqz v0, :cond_0

    .line 500
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$5;->a:Landroid/content/Intent;

    const-string/jumbo v2, "map_latitude"

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 501
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$5;->a:Landroid/content/Intent;

    const-string/jumbo v2, "map_longitude"

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$5;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$5;->a:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 505
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$5;->b:Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->finish()V

    .line 506
    return-void
.end method
