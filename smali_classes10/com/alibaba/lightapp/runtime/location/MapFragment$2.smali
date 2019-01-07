.class final Lcom/alibaba/lightapp/runtime/location/MapFragment$2;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Lcir;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/location/MapFragment;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/location/MapFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/MapFragment;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/amap/api/location/AMapLocation;)V
    .locals 8
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 271
    const-string/jumbo v4, "lightapp"

    const-string/jumbo v5, "MapFragment"

    const/4 v3, 0x6

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v7, "MapFragment startLocation err code:"

    aput-object v7, v6, v3

    const/4 v7, 0x1

    if-nez p1, :cond_2

    const-string/jumbo v3, "null"

    .line 272
    :goto_0
    aput-object v3, v6, v7

    const/4 v3, 0x2

    const-string/jumbo v7, " info:"

    aput-object v7, v6, v3

    const/4 v7, 0x3

    if-nez p1, :cond_3

    const-string/jumbo v3, "null"

    .line 273
    :goto_1
    aput-object v3, v6, v7

    const/4 v3, 0x4

    const-string/jumbo v7, " tryTimes:"

    aput-object v7, v6, v3

    const/4 v3, 0x5

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    .line 274
    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(Lcom/alibaba/lightapp/runtime/location/MapFragment;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 271
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(Lcom/alibaba/lightapp/runtime/location/MapFragment;)I

    move-result v3

    if-gez v3, :cond_4

    .line 276
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcir;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 277
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->d(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->setVisibility(I)V

    .line 279
    const/4 v0, -0x1

    .line 281
    .local v0, "code":I
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 282
    .local v2, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcis;->a(I)I

    move-result v0

    .line 284
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "reason":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 286
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 287
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 290
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->e(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 291
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->e(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;->a()V

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapFragment;ILjava/lang/String;)V

    .line 298
    .end local v0    # "code":I
    .end local v2    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_2
    return-void

    .line 272
    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 273
    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 296
    :cond_4
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->f(Lcom/alibaba/lightapp/runtime/location/MapFragment;)I

    goto :goto_2
.end method

.method public final onSuccess(Lcom/amap/api/location/AMapLocation;)V
    .locals 6
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapFragment;)Lcir;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapFragment;Landroid/location/Location;)Landroid/location/Location;

    .line 254
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapFragment;DD)V

    .line 256
    const-string/jumbo v1, "mp_recent_lat"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v1, "mp_recent_lng"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 260
    .local v0, "latLng":Lcom/amap/api/maps/model/LatLng;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v1, v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/amap/api/maps/model/LatLng;)V

    .line 262
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v1, v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->c(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/amap/api/maps/model/LatLng;)V

    .line 263
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(F)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapFragment;I)I

    .line 264
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->b(Lcom/alibaba/lightapp/runtime/location/MapFragment;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/amap/api/maps/model/LatLng;I)V

    .line 265
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapFragment;Lcom/amap/api/location/AMapLocation;)V

    .line 267
    .end local v0    # "latLng":Lcom/amap/api/maps/model/LatLng;
    :cond_0
    return-void
.end method
