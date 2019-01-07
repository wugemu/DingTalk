.class final Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;
.super Ljava/lang/Object;
.source "LocationProxy.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;ZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZ)Lcom/amap/api/location/AMapLocationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcir;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;Lcir;Lcom/alibaba/android/dingtalkbase/amap/LocationCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->c:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->a:Lcir;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->b:Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 5
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 177
    if-eqz p1, :cond_2

    .line 179
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->a:Lcir;

    invoke-interface {v0, p1}, Lcir;->onSuccess(Lcom/amap/api/location/AMapLocation;)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->b:Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mLatitude:F

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->b:Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mLongitude:F

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->b:Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mTimeStamp:J

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->c:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->b:Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->saveToPreference(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/amap/LocationCache;)V

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->c:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)Lcim;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->c:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)Lcim;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->a:Lcir;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcim;->a(Ljava/lang/String;)V

    .line 199
    :cond_0
    const-string/jumbo v0, "lightapp"

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "startPersistentLocation onLocationChanged "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->a:Lcir;

    .line 200
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 199
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->a:Lcir;

    invoke-interface {v0, p1}, Lcir;->onError(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;->a:Lcir;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcir;->onError(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0
.end method
