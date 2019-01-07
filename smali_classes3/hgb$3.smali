.class final Lhgb$3;
.super Ljava/lang/Object;
.source "LightBeaconManager.java"

# interfaces
.implements Lcir;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/altbeacon/beacon/Region;

.field final synthetic b:J

.field final synthetic c:Lhgb;


# direct methods
.method constructor <init>(Lhgb;Lorg/altbeacon/beacon/Region;J)V
    .locals 1
    .param p1, "this$0"    # Lhgb;

    .prologue
    .line 349
    iput-object p1, p0, Lhgb$3;->c:Lhgb;

    iput-object p2, p0, Lhgb$3;->a:Lorg/altbeacon/beacon/Region;

    iput-wide p3, p0, Lhgb$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/amap/api/location/AMapLocation;)V
    .locals 4
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 364
    const-string/jumbo v0, "SW"

    const-string/jumbo v1, "LocationCallback"

    const-string/jumbo v2, "LocationCallback error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 367
    iget-object v0, p0, Lhgb$3;->c:Lhgb;

    invoke-static {}, Lhge;->d()Lhge;

    move-result-object v1

    iget-object v2, p0, Lhgb$3;->a:Lorg/altbeacon/beacon/Region;

    invoke-virtual {v2}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lhgb$3;->b:J

    invoke-static {v0, v1, v2, v3}, Lhgb;->a(Lhgb;Ljava/lang/String;J)V

    .line 368
    return-void
.end method

.method public final onSuccess(Lcom/amap/api/location/AMapLocation;)V
    .locals 4
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 352
    const-string/jumbo v0, "SW"

    const-string/jumbo v1, "LocationCallback"

    const-string/jumbo v2, "LocationCallback success"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 355
    if-eqz p1, :cond_0

    .line 356
    iget-object v0, p0, Lhgb$3;->c:Lhgb;

    iget-object v1, p0, Lhgb$3;->a:Lorg/altbeacon/beacon/Region;

    iget-wide v2, p0, Lhgb$3;->b:J

    invoke-static {v0, p1, v1, v2, v3}, Lhgb;->a(Lhgb;Lcom/amap/api/location/AMapLocation;Lorg/altbeacon/beacon/Region;J)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lhgb$3;->c:Lhgb;

    invoke-static {}, Lhge;->d()Lhge;

    move-result-object v1

    iget-object v2, p0, Lhgb$3;->a:Lorg/altbeacon/beacon/Region;

    invoke-virtual {v2}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lhgb$3;->b:J

    invoke-static {v0, v1, v2, v3}, Lhgb;->a(Lhgb;Ljava/lang/String;J)V

    goto :goto_0
.end method
