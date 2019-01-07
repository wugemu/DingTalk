.class final Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$8;
.super Ljava/lang/Object;
.source "AddRobotActivity.java"

# interfaces
.implements Lcir;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 451
    return-void
.end method

.method public final onSuccess(Lcom/amap/api/location/AMapLocation;)V
    .locals 7
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x2

    .line 435
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 437
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;-><init>()V

    .line 439
    .local v0, "getWeatherBotPageObject":Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;
    iput v6, v0, Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;->mUserLocationType:I

    .line 441
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 442
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ":"

    aput-object v3, v1, v2

    .line 443
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 442
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;->mUserLocation:Ljava/lang/String;

    .line 444
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Lctl;

    move-result-object v2

    .line 1221
    new-instance v3, Lctl$4;

    invoke-direct {v3, v2}, Lctl$4;-><init>(Lctl;)V

    .line 1253
    iget-object v1, v2, Lctl;->a:Lctl$a;

    invoke-interface {v1}, Lctl$a;->a()V

    .line 1254
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v4

    const-string/jumbo v1, "EVENTBUTLER"

    .line 1256
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Lcma;

    iget-object v2, v2, Lctl;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1257
    invoke-interface {v1, v3, v5, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1254
    invoke-interface {v4, v0, v1}, Ldxu;->a(Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;Lcma;)V

    .line 446
    .end local v0    # "getWeatherBotPageObject":Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;
    :cond_0
    return-void
.end method
