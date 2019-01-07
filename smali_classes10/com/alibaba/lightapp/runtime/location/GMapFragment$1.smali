.class final Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;
.super Ljava/lang/Object;
.source "GMapFragment.java"

# interfaces
.implements Lcir;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/location/GMapFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/amap/api/location/AMapLocation;)V
    .locals 6
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->c(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)I

    move-result v3

    if-gez v3, :cond_2

    .line 232
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)Lcir;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 233
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->d(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->setVisibility(I)V

    .line 235
    const/4 v0, -0x1

    .line 237
    .local v0, "code":I
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 238
    .local v2, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcis;->a(I)I

    move-result v0

    .line 240
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "reason":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 242
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 243
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 246
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->e(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->e(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;->a()V

    .line 250
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;ILjava/lang/String;)V

    .line 254
    .end local v0    # "code":I
    .end local v2    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_0
    return-void

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->f(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)I

    goto :goto_0
.end method

.method public final onSuccess(Lcom/amap/api/location/AMapLocation;)V
    .locals 6
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)Lcir;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 217
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Landroid/location/Location;)Landroid/location/Location;

    .line 218
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;DD)V

    .line 219
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 220
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-static {v1, v0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 222
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-static {v1, v0}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 223
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(F)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;I)I

    .line 224
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->b(Lcom/alibaba/lightapp/runtime/location/GMapFragment;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 225
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapFragment;Lcom/amap/api/location/AMapLocation;)V

    .line 227
    .end local v0    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    return-void
.end method
