.class public Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Geolocation.java"


# static fields
.field private static final GENERAL_OPEN_GOOGLE_LOCATION:Ljava/lang/String; = "general_open_google_location"

.field private static final LOCATION_DEFAULT_SCENEID:Ljava/lang/String; = "runtime.plugin.geolocation.default_sceneId"

.field private static final LOCATION_ERROR_FORMAT:Ljava/lang/String; = "AMap error code = %s, error message = %s."

.field private static final LOCATION_GPS:Ljava/lang/String; = "gps"

.field private static final PERMISSION_LOCATION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Geolocation"


# instance fields
.field private mAMapLocation:Lcom/amap/api/location/AMapLocation;

.field private mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

.field final mAMapLocationClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/location/AMapLocationClient;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackId:Ljava/lang/String;

.field final mContinualLocationMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGMapLocation:Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

.field private mGoogleLocationCallback:Lcio;

.field private mLocationCallback:Lcir;

.field private mMaxTryTimes:I

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->PERMISSION_LOCATION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mStartTime:J

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mContinualLocationMethodMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/amap/api/location/AMapLocationClient;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->resumeContinualAMapLocationClient()V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;ZLcom/amap/api/location/AMapLocation;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/amap/api/location/AMapLocation;
    .param p3, "x3"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->dispatchContinualLocationResult2H5(ZLcom/amap/api/location/AMapLocation;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;ZLcom/alibaba/android/dingtalkbase/amap/GMapLocation;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;
    .param p3, "x3"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->dispatchGoogleContinualLocationResult2H5(ZLcom/alibaba/android/dingtalkbase/amap/GMapLocation;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/amap/api/location/AMapLocation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocation:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocation:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->locationCallback(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->destoryAMapLocationClient()V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mGMapLocation:Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    return-object v0
.end method

.method static synthetic access$802(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mGMapLocation:Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    return-object p1
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->googleLocationCallback(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;Ljava/lang/String;)V

    return-void
.end method

.method private addTrace(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "info"    # Ljava/lang/String;

    .prologue
    .line 662
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 663
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "data:"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 664
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 665
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 666
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcms;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 667
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcis;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 669
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "str":Ljava/lang/String;
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "Geolocation"

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method private buildResultData(Lcom/amap/api/location/AMapLocation;I)Lorg/json/JSONObject;
    .locals 9
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;
    .param p2, "errorCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 448
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 450
    .local v3, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_1

    .line 452
    :try_start_0
    const-string/jumbo v5, "errorCode"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 454
    const-string/jumbo v1, ""

    .line 455
    .local v1, "errorMessage":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 456
    const-string/jumbo v5, "AMap error code = %s, error message = %s."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 458
    :cond_0
    const-string/jumbo v5, "errorMessage"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    const-string/jumbo v5, "locationType"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 462
    const-string/jumbo v5, "accuracy"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 463
    const-string/jumbo v5, "latitude"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 464
    const-string/jumbo v5, "longitude"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 465
    const-string/jumbo v5, "province"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    const-string/jumbo v5, "city"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    const-string/jumbo v5, "district"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    const-string/jumbo v5, "road"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getRoad()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    const-string/jumbo v5, "address"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v5, "netType"

    const/4 v6, 0x0

    invoke-static {v6}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string/jumbo v5, "operatorType"

    invoke-static {}, Lcis;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string/jumbo v5, "imei"

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcms;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string/jumbo v5, "time"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 477
    invoke-static {p1}, Lcis;->a(Lcom/amap/api/location/AMapLocation;)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "provider":Ljava/lang/String;
    const-string/jumbo v5, "provider"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    invoke-direct {p0, p1, p2, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->isMock(Lcom/amap/api/location/AMapLocation;ILjava/lang/String;)Z

    move-result v2

    .line 484
    .local v2, "isMock":Z
    const-string/jumbo v5, "isFromMock"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 487
    const-string/jumbo v5, "isGpsEnabled"

    invoke-static {}, Lcis;->a()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 488
    const-string/jumbo v5, "isWifiEnabled"

    const/4 v6, 0x0

    invoke-static {v6}, Lcms;->k(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 489
    const-string/jumbo v5, "isMobileEnabled"

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->isMobileEnabled()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 490
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->addTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 500
    .end local v1    # "errorMessage":Ljava/lang/String;
    .end local v2    # "isMock":Z
    .end local v4    # "provider":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 492
    :cond_1
    const-string/jumbo v5, "errorCode"

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 493
    const-string/jumbo v5, "errorMessage"

    const-string/jumbo v6, "Result is null"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "null"

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->addTrace(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private buildResultDataNew(Lcom/amap/api/location/AMapLocation;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;
    .param p2, "errorCode"    # I
    .param p3, "sceneId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 504
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 506
    .local v3, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_2

    .line 509
    :try_start_0
    const-string/jumbo v1, ""

    .line 510
    .local v1, "errorMessage":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 511
    const-string/jumbo v5, "AMap error code = %s, error message = %s."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 514
    :cond_0
    const-string/jumbo v5, "aMapCode"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 515
    const-string/jumbo v5, "resultCode"

    invoke-static {p2}, Lcis;->a(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 516
    const-string/jumbo v5, "resultMessage"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string/jumbo v5, "locationType"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 520
    const-string/jumbo v5, "accuracy"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 521
    const-string/jumbo v5, "latitude"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 522
    const-string/jumbo v5, "longitude"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 523
    const-string/jumbo v5, "country"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string/jumbo v5, "province"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string/jumbo v5, "city"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string/jumbo v5, "district"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string/jumbo v5, "road"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getRoad()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    const-string/jumbo v5, "address"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    const-string/jumbo v5, "netType"

    const/4 v6, 0x0

    invoke-static {v6}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    const-string/jumbo v5, "operatorType"

    invoke-static {}, Lcis;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    const-string/jumbo v5, "imei"

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcms;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    const-string/jumbo v5, "time"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 536
    invoke-static {p1}, Lcis;->a(Lcom/amap/api/location/AMapLocation;)Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, "provider":Ljava/lang/String;
    const-string/jumbo v5, "provider"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    invoke-direct {p0, p1, p2, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->isMock(Lcom/amap/api/location/AMapLocation;ILjava/lang/String;)Z

    move-result v2

    .line 543
    .local v2, "isMock":Z
    const-string/jumbo v5, "isFromMock"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 546
    const-string/jumbo v5, "isGpsEnabled"

    invoke-static {}, Lcis;->a()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 547
    const-string/jumbo v5, "isWifiEnabled"

    const/4 v6, 0x0

    invoke-static {v6}, Lcms;->k(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 548
    const-string/jumbo v5, "isMobileEnabled"

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->isMobileEnabled()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 549
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 550
    const-string/jumbo v5, "sceneId"

    invoke-virtual {v3, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->addTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 562
    .end local v1    # "errorMessage":Ljava/lang/String;
    .end local v2    # "isMock":Z
    .end local v4    # "provider":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 554
    :cond_2
    const-string/jumbo v5, "errorCode"

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 555
    const-string/jumbo v5, "errorMessage"

    const-string/jumbo v6, "Result is null"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "null"

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->addTrace(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private buildResultDataNewFromGoogle(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "mapLocation"    # Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;
    .param p2, "errorCode"    # I
    .param p3, "sceneId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 566
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 568
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_2

    .line 571
    :try_start_0
    const-string/jumbo v1, ""

    .line 572
    .local v1, "errorMessage":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 573
    const-string/jumbo v4, "AMap error code = %s, error message = %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getErrorCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "error location"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 576
    :cond_0
    const-string/jumbo v4, "aMapCode"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getErrorCode()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 577
    const-string/jumbo v4, "gMapCode"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getErrorCode()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 578
    const-string/jumbo v4, "resultCode"

    invoke-static {p2}, Lcis;->a(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 579
    const-string/jumbo v4, "resultMessage"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    const-string/jumbo v4, "locationType"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 583
    const-string/jumbo v4, "accuracy"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getAccuracy()F

    move-result v5

    float-to-double v6, v5

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 584
    const-string/jumbo v4, "latitude"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 585
    const-string/jumbo v4, "longitude"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 586
    const-string/jumbo v4, "province"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    const-string/jumbo v4, "city"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    const-string/jumbo v4, "district"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    const-string/jumbo v4, "road"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    const-string/jumbo v4, "address"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 591
    const-string/jumbo v4, "netType"

    const/4 v5, 0x0

    invoke-static {v5}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    const-string/jumbo v4, "operatorType"

    invoke-static {}, Lcis;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    const-string/jumbo v4, "imei"

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcms;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 596
    const-string/jumbo v4, "time"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 599
    const-string/jumbo v3, "lbs"

    .line 600
    .local v3, "provider":Ljava/lang/String;
    const-string/jumbo v4, "provider"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 606
    const-string/jumbo v4, "isFromMock"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 609
    const-string/jumbo v4, "isGpsEnabled"

    invoke-static {}, Lcis;->a()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 610
    const-string/jumbo v4, "isWifiEnabled"

    const/4 v5, 0x0

    invoke-static {v5}, Lcms;->k(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 611
    const-string/jumbo v4, "isMobileEnabled"

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->isMobileEnabled()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 612
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 613
    const-string/jumbo v4, "sceneId"

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v5, "null"

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->addTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 625
    .end local v1    # "errorMessage":Ljava/lang/String;
    .end local v3    # "provider":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 617
    :cond_2
    const-string/jumbo v4, "errorCode"

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 618
    const-string/jumbo v4, "errorMessage"

    const-string/jumbo v5, "Result is null"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 619
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v5, "null"

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->addTrace(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkPlayServices()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1102
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    const-string/jumbo v6, "general_open_google_location"

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    .line 1103
    .local v1, "grayOpen":Z
    if-nez v1, :cond_1

    .line 1119
    :cond_0
    :goto_0
    return v4

    .line 1107
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v2

    .line 1108
    .local v2, "isOverseasUser":Z
    if-eqz v2, :cond_0

    .line 1112
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    .line 1113
    .local v3, "resultCode":I
    if-eqz v3, :cond_2

    .line 1114
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, "errorString":Ljava/lang/String;
    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "Geolocation"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "google play service is not valiable, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1118
    .end local v0    # "errorString":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "lightapp"

    const-string/jumbo v5, "Geolocation"

    const-string/jumbo v6, "google play service is valiable"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private destoryAMapLocationClient()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 745
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 747
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 749
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "Geolocation"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v5, "destoryAMapLocationClient ="

    aput-object v5, v4, v1

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mLocationCallback:Lcir;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mLocationCallback:Lcir;

    .line 750
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v4, v5

    .line 749
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_0
    :goto_1
    return-void

    .line 750
    :cond_1
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "Geolocation"

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "destroyAMapLocationClient err"

    aput-object v4, v3, v6

    .line 754
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 753
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private destroyContinualAMapLocationClient()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1016
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    monitor-enter v4

    .line 1017
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1019
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1021
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amap/api/location/AMapLocationClient;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1022
    .local v2, "sceneId":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationClient;

    .line 1024
    .local v0, "aMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 1026
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 1030
    :cond_0
    const-string/jumbo v3, "runtime.plugin.geolocation.default_sceneId"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1031
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mContinualLocationMethodMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->stopLocation(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1039
    .end local v0    # "aMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amap/api/location/AMapLocationClient;>;"
    .end local v2    # "sceneId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1033
    .restart local v0    # "aMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amap/api/location/AMapLocationClient;>;"
    .restart local v2    # "sceneId":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mContinualLocationMethodMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->stopLocation(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1039
    .end local v0    # "aMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amap/api/location/AMapLocationClient;>;"
    .end local v2    # "sceneId":Ljava/lang/String;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private dispatchContinualLocationResult2H5(ZLcom/amap/api/location/AMapLocation;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 10
    .param p1, "isSuccess"    # Z
    .param p2, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;
    .param p3, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    #test method 设置定位参数
    invoke-static {}, Lcom/langzu/baozha/ddutil/DDUtil;->getAmapLocation()Lcom/amap/api/location/AMapLocation;
    move-result-object p2
    #test 修改为true
    const/4 p1, 0x1
    #test Log 钉钉日志
    const-string v1, "0.0"
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    move-result-object v2
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p2}, Lcom/langzu/baozha/ddutil/DDUtil;->testAmapLocation(Lcom/amap/api/location/AMapLocation;)V


    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 906
    iget-object v1, p3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 907
    .local v1, "callbackId":Ljava/lang/String;
    iget-object v4, p3, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "callBackInterval"

    const/16 v6, 0x32

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 908
    .local v0, "callBackInterval":I
    iget-object v4, p3, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "sceneId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, "sceneId":Ljava/lang/String;
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mStartTime:J

    sub-long/2addr v4, v6

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 910
    :cond_0
    if-eqz p1, :cond_3

    .line 911
    if-eqz p2, :cond_1

    .line 912
    invoke-direct {p0, p2, v8, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildResultDataNew(Lcom/amap/api/location/AMapLocation;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 928
    :goto_0
    invoke-virtual {p0, v2, v1, v9}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->success(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 930
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mStartTime:J

    .line 932
    :cond_2
    return-void

    .line 917
    :cond_3
    if-eqz p2, :cond_4

    .line 918
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v4

    invoke-direct {p0, p2, v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildResultDataNew(Lcom/amap/api/location/AMapLocation;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 920
    .local v2, "data":Lorg/json/JSONObject;
    const-string/jumbo v4, "lightapp"

    const-string/jumbo v5, "Geolocation"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "onError callback "

    aput-object v7, v6, v8

    .line 921
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 920
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 923
    .end local v2    # "data":Lorg/json/JSONObject;
    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildResultDataNew(Lcom/amap/api/location/AMapLocation;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 925
    .restart local v2    # "data":Lorg/json/JSONObject;
    const-string/jumbo v4, "lightapp"

    const-string/jumbo v5, "Geolocation"

    const-string/jumbo v6, "onError callback"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchGoogleContinualLocationResult2H5(ZLcom/alibaba/android/dingtalkbase/amap/GMapLocation;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 8
    .param p1, "isSuccess"    # Z
    .param p2, "mapLocation"    # Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;
    .param p3, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 936
    iget-object v1, p3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 937
    .local v1, "callbackId":Ljava/lang/String;
    iget-object v4, p3, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "callBackInterval"

    const/16 v6, 0x32

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 938
    .local v0, "callBackInterval":I
    iget-object v4, p3, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "sceneId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 939
    .local v3, "sceneId":Ljava/lang/String;
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mStartTime:J

    sub-long/2addr v4, v6

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 940
    :cond_0
    if-eqz p1, :cond_3

    .line 941
    if-eqz p2, :cond_1

    .line 942
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildResultDataNewFromGoogle(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 955
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->success(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 957
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mStartTime:J

    .line 959
    :cond_2
    return-void

    .line 947
    :cond_3
    if-eqz p2, :cond_4

    .line 948
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getErrorCode()I

    move-result v4

    invoke-direct {p0, p2, v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildResultDataNewFromGoogle(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .local v2, "data":Lorg/json/JSONObject;
    goto :goto_0

    .line 950
    .end local v2    # "data":Lorg/json/JSONObject;
    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildResultDataNew(Lcom/amap/api/location/AMapLocation;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 952
    .restart local v2    # "data":Lorg/json/JSONObject;
    const-string/jumbo v4, "lightapp"

    const-string/jumbo v5, "Geolocation"

    const-string/jumbo v6, "onError callback"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAMapLocationMode(I)Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .locals 2
    .param p1, "locationModeIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 962
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    .line 963
    .local v0, "mapLocationMode":Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 964
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    aget-object v0, v1, p1

    .line 966
    :cond_0
    return-object v0
.end method

.method private getWithGoogle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 314
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "withReGeocode"

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 315
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "forbidMock"

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 316
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "targetAccuracy"

    const/16 v7, 0x226

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 317
    .local v3, "targetAccuracy":I
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "locationMode"

    sget-object v7, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 319
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "useCache"

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 320
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mCallbackId:Ljava/lang/String;

    .line 322
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mMaxTryTimes:I

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 324
    .local v2, "integer":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 325
    .local v4, "locationStart":J
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mGoogleLocationCallback:Lcio;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Ljava/util/concurrent/atomic/AtomicInteger;IJ)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mGoogleLocationCallback:Lcio;

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mGoogleLocationCallback:Lcio;

    .line 4057
    if-nez v1, :cond_1

    .line 395
    :goto_0
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "Geolocation"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "get req="

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mCallbackId:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v6, v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 397
    .local v6, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {v6, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 398
    return-object v6

    .line 4060
    .end local v6    # "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_1
    invoke-virtual {v0}, Lcip;->a()V

    .line 4061
    new-instance v7, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    iget-object v8, v0, Lcip;->b:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcip;->c:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    .line 4062
    iget-object v7, v0, Lcip;->c:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    new-instance v8, Lcip$2;

    invoke-direct {v8, v0, v1}, Lcip$2;-><init>(Lcip;Lcio;)V

    .line 5074
    iput-object v8, v7, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->a:Lcin;

    .line 4083
    iget-object v1, v0, Lcip;->c:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->a()V

    .line 4084
    iget-object v0, v0, Lcip;->c:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->b()Z

    goto :goto_0
.end method

.method private googleLocationCallback(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;Ljava/lang/String;)V
    .locals 9
    .param p1, "mapLocation"    # Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 422
    if-eqz p1, :cond_1

    .line 423
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcis;->a(I)I

    move-result v1

    .line 424
    .local v1, "errorCode":I
    invoke-direct {p0, p1, v1, v8}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildResultDataNewFromGoogle(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 425
    .local v0, "data":Lorg/json/JSONObject;
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 427
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "Geolocation"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "location callback id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 428
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 427
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v2

    invoke-virtual {v2}, Lcip;->b()V

    .line 437
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "errorCode":I
    :cond_0
    :goto_0
    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mCallbackId:Ljava/lang/String;

    .line 438
    return-void

    .line 434
    :cond_1
    const/4 v2, 0x3

    const-string/jumbo v3, "No result"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 435
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "Geolocation"

    const-string/jumbo v4, "onError callback"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isBackground()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1123
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 1124
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileEnabled()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 720
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v8, "connectivity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 721
    .local v1, "connMgr":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    move v5, v6

    .line 738
    :goto_0
    return v5

    .line 726
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 727
    .local v0, "conmanClass":Ljava/lang/Class;
    const-string/jumbo v5, "getMobileDataEnabled"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 728
    .local v3, "getMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 729
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    goto :goto_0

    .line 730
    .end local v0    # "conmanClass":Ljava/lang/Class;
    .end local v3    # "getMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 731
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 737
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_1
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 738
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    .line 732
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_1
    move-exception v2

    .line 733
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 734
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 735
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    move v5, v6

    .line 738
    goto :goto_0
.end method

.method private isMock(Lcom/amap/api/location/AMapLocation;ILjava/lang/String;)Z
    .locals 8
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;
    .param p2, "errorCode"    # I
    .param p3, "provider"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 637
    const/4 v1, 0x0

    .line 639
    .local v1, "isMock":Z
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v2

    .line 640
    .local v2, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v2, :cond_0

    .line 641
    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSimulatorDetectComp()Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;

    move-result-object v3

    .line 642
    .local v3, "simulatorDetectComp":Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;
    if-eqz v3, :cond_0

    .line 643
    invoke-interface {v3}, Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;->isSimulator()Z

    move-result v1

    .line 646
    .end local v3    # "simulatorDetectComp":Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;
    :cond_0
    if-eqz v1, :cond_1

    .line 658
    :goto_0
    return v4

    .line 650
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo v6, "gps"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 651
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 652
    .local v0, "bundle":Landroid/os/Bundle;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_4

    .line 653
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->isFromMockProvider()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    move v1, v4

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_1
    move v4, v1

    .line 658
    goto :goto_0

    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    move v1, v5

    .line 653
    goto :goto_1

    .line 655
    :cond_4
    if-nez v0, :cond_5

    move v1, v4

    :goto_2
    goto :goto_1

    :cond_5
    move v1, v5

    goto :goto_2
.end method

.method private isNormalStatus()Z
    .locals 1

    .prologue
    .line 1096
    const/4 v0, 0x1

    return v0
.end method

.method private locationCallback(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)V
    .locals 9
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x3

    .line 402
    if-eqz p1, :cond_1

    .line 403
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcis;->a(I)I

    move-result v1

    .line 404
    .local v1, "errorCode":I
    invoke-direct {p0, p1, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildResultData(Lcom/amap/api/location/AMapLocation;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 405
    .local v0, "data":Lorg/json/JSONObject;
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 407
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "Geolocation"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "location callback id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 408
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " errInfo="

    aput-object v6, v4, v5

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 407
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcom/amap/api/location/AMapLocationClient;)V

    .line 418
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "errorCode":I
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mCallbackId:Ljava/lang/String;

    .line 419
    return-void

    .line 415
    :cond_1
    const-string/jumbo v2, "No result"

    invoke-static {v8, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 416
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "Geolocation"

    const-string/jumbo v4, "onError callback"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pauseContinualAMapLocationClient()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1044
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    monitor-enter v2

    .line 1045
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1047
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationClient;

    .line 1049
    .local v0, "aMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    goto :goto_0

    .line 1056
    .end local v0    # "aMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private resumeContinualAMapLocationClient()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1061
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    monitor-enter v2

    .line 1062
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1064
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationClient;

    .line 1066
    .local v0, "aMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    goto :goto_0

    .line 1073
    .end local v0    # "aMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private startWithGoogle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 870
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "withReGeocode"

    invoke-virtual {v6, v7, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 871
    .local v5, "withReGeocode":Z
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "forbidMock"

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 872
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "targetAccuracy"

    const/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 873
    .local v3, "targetAccuracy":I
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "locationMode"

    sget-object v8, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    .line 874
    invoke-virtual {v8}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v8

    .line 873
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 875
    .local v1, "locationModeIndex":I
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "useCache"

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 876
    .local v4, "useCache":Z
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "sceneId"

    const-string/jumbo v8, "runtime.plugin.geolocation.default_sceneId"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, "sceneId":Ljava/lang/String;
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "Geolocation"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "Geolocation start withReGeocode:"

    aput-object v9, v8, v10

    .line 879
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    const-string/jumbo v10, ",targetAccuracy:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 880
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, ", locationModeIndex:"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 881
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, ", useCache:"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string/jumbo v10, "sceneId:"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    aput-object v2, v8, v9

    .line 879
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 878
    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 899
    .local v0, "continualLocationCallback":Lcio;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v6

    invoke-virtual {v6, v2, v0}, Lcip;->a(Ljava/lang/String;Lcio;)Z

    .line 901
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v6

    return-object v6
.end method

.method private stopGoogle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1006
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "sceneId"

    const-string/jumbo v3, "runtime.plugin.geolocation.default_sceneId"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "sceneId":Ljava/lang/String;
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "Geolocation"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Google Geolocation stop sceneId:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 1009
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1008
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v1

    .line 5182
    iget-object v2, v1, Lcip;->d:Ljava/util/Map;

    monitor-enter v2

    .line 5183
    :try_start_0
    iget-object v1, v1, Lcip;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    .line 5184
    if-eqz v1, :cond_0

    .line 5185
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c()V

    .line 5187
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1

    .line 5187
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private stopLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "sceneId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1077
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1078
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1080
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "resultCode"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1081
    const-string/jumbo v2, "resultMessage"

    const-string/jumbo v3, "Location stoped !"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1083
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1084
    const-string/jumbo v2, "sceneId"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1093
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    return-void

    .line 1086
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkPermission(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->PERMISSION_LOCATION:[Ljava/lang/String;

    invoke-static {v2, v3}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 153
    .local v0, "hasPermission":Z
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 154
    .local v1, "result":Lorg/json/JSONObject;
    const-string/jumbo v2, "hasPermission"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 155
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "hasPermission":Z
    .end local v1    # "result":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "parse result error"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public checkService(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x3

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 175
    .local v1, "locationManager":Landroid/location/LocationManager;
    if-nez v1, :cond_0

    .line 176
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    const-string/jumbo v8, "locationManager is null"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 191
    .end local v1    # "locationManager":Landroid/location/LocationManager;
    :goto_0
    return-object v5

    .line 178
    .restart local v1    # "locationManager":Landroid/location/LocationManager;
    :cond_0
    const/4 v4, 0x1

    .line 179
    .local v4, "serviceType":I
    const-string/jumbo v5, "gps"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 180
    .local v0, "gps":Z
    const-string/jumbo v5, "network"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 181
    .local v2, "network":Z
    if-eqz v0, :cond_1

    .line 182
    const/4 v4, 0x2

    .line 184
    :cond_1
    if-eqz v2, :cond_2

    .line 185
    shl-int/lit8 v4, v4, 0x2

    .line 187
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .local v3, "result":Lorg/json/JSONObject;
    const-string/jumbo v5, "serviceType"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v0    # "gps":Z
    .end local v1    # "locationManager":Landroid/location/LocationManager;
    .end local v2    # "network":Z
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "serviceType":I
    :catch_0
    move-exception v5

    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "parse result error"

    invoke-static {v9, v7}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public get(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 17
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->isBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    new-instance v16, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x3

    const-string/jumbo v8, "in background"

    invoke-static {v3, v8}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 310
    :goto_0
    return-object v16

    .line 207
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->checkPlayServices()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getWithGoogle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v16

    goto :goto_0

    .line 211
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "withReGeocode"

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 212
    .local v12, "withReGeocode":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "forbidMock"

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 213
    .local v14, "forbidMock":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "targetAccuracy"

    const/16 v8, 0x226

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 214
    .local v5, "targetAccuracy":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "locationMode"

    sget-object v8, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v8}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v8

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 216
    .local v15, "locationModeIndex":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "useCache"

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 217
    .local v10, "useCache":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mCallbackId:Ljava/lang/String;

    .line 219
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mMaxTryTimes:I

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 221
    .local v4, "integer":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 223
    .local v6, "locationStart":J
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "Geolocation"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v13, "location get start, page: "

    aput-object v13, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mLocationCallback:Lcir;

    if-nez v2, :cond_2

    .line 225
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Ljava/util/concurrent/atomic/AtomicInteger;IJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mLocationCallback:Lcir;

    .line 298
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getAMapLocationMode(I)Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v11

    .line 301
    .local v11, "mapLocationMode":Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->destoryAMapLocationClient()V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mLocationCallback:Lcir;

    if-nez v14, :cond_3

    const/4 v13, 0x1

    :goto_1
    invoke-virtual/range {v8 .. v13}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;ZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZ)Lcom/amap/api/location/AMapLocationClient;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 307
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "Geolocation"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v13, "get req="

    aput-object v13, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mCallbackId:Ljava/lang/String;

    aput-object v13, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v16, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 309
    .local v16, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    goto/16 :goto_0

    .line 304
    .end local v16    # "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_3
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public isEnabled(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 689
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 691
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "authLocation"

    invoke-static {}, Lcis;->a()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 693
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_0
    return-object v2

    .line 694
    :catch_0
    move-exception v1

    .line 695
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    .line 696
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public isEnabledHighAccuracy(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 705
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 707
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "locationHighAccuracy"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcis;->b(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 708
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    return-object v2

    .line 709
    :catch_0
    move-exception v1

    .line 710
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    .line 711
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mMaxTryTimes:I

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->destoryAMapLocationClient()V

    .line 97
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocation:Lcom/amap/api/location/AMapLocation;

    .line 98
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mLocationCallback:Lcir;

    .line 100
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->destroyContinualAMapLocationClient()V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v0

    invoke-virtual {v0}, Lcip;->a()V

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v1

    .line 1191
    iget-object v2, v1, Lcip;->d:Ljava/util/Map;

    monitor-enter v2

    .line 1192
    :try_start_0
    iget-object v0, v1, Lcip;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    .line 1195
    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c()V

    goto :goto_0

    .line 1200
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1199
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcip;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1200
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 104
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v0

    .line 2171
    invoke-virtual {v0}, Lcip;->b()V

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v0

    .line 3127
    iget-object v1, v0, Lcip;->d:Ljava/util/Map;

    monitor-enter v1

    .line 3128
    :try_start_0
    iget-object v2, v0, Lcip;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3130
    iget-object v0, v0, Lcip;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    .line 3132
    if-eqz v0, :cond_1

    .line 3133
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c()V

    goto :goto_0

    .line 3138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->pauseContinualAMapLocationClient()V

    .line 115
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onPause()V

    .line 116
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onResume()V

    .line 121
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->isNormalStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public openGps(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lhrf;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 681
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1
.end method

.method public start(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 17
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 804
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->isBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 805
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v14, 0x3

    const-string/jumbo v15, "in background"

    invoke-static {v14, v15}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v2, v7, v14}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 866
    :goto_0
    return-object v2

    .line 807
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->checkPlayServices()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 808
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->startWithGoogle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0

    .line 810
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "withReGeocode"

    const/4 v14, 0x1

    invoke-virtual {v2, v7, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 811
    .local v6, "withReGeocode":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "forbidMock"

    const/4 v14, 0x0

    invoke-virtual {v2, v7, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 812
    .local v10, "forbidMock":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "targetAccuracy"

    const/16 v14, 0xbb8

    invoke-virtual {v2, v7, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 813
    .local v13, "targetAccuracy":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "locationMode"

    sget-object v14, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    .line 814
    invoke-virtual {v14}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v14

    .line 813
    invoke-virtual {v2, v7, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 815
    .local v11, "locationModeIndex":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "useCache"

    const/4 v14, 0x0

    invoke-virtual {v2, v7, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 816
    .local v4, "useCache":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "sceneId"

    const-string/jumbo v14, "runtime.plugin.geolocation.default_sceneId"

    invoke-virtual {v2, v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 818
    .local v12, "sceneId":Ljava/lang/String;
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v7, "Geolocation"

    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Geolocation start withReGeocode:"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 819
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, ",targetAccuracy:"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 820
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, ", locationModeIndex:"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 821
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string/jumbo v16, ", useCache:"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string/jumbo v16, "sceneId:"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    aput-object v12, v14, v15

    const/16 v15, 0xa

    const-string/jumbo v16, ", page: "

    aput-object v16, v14, v15

    const/16 v15, 0xb

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 822
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 819
    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 818
    invoke-static {v2, v7, v14}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    monitor-enter v14

    .line 827
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 828
    const/16 v2, 0xd

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v15, Lhdn$k;->dt_lightapp_geolocation_start_failure:I

    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 829
    .local v9, "errorResult":Lorg/json/JSONObject;
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v7, "Geolocation"

    const-string/jumbo v15, "Error:13"

    invoke-static {v2, v7, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v7, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    monitor-exit v14

    goto/16 :goto_0

    .line 864
    .end local v9    # "errorResult":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 834
    :cond_2
    :try_start_1
    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 852
    .local v3, "continualLocationCallback":Lcir;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getAMapLocationMode(I)Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v5

    .line 855
    .local v5, "mapLocationMode":Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v2

    if-nez v10, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;ZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZ)Lcom/amap/api/location/AMapLocationClient;

    move-result-object v8

    .line 858
    .local v8, "continualAMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    invoke-interface {v2, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mContinualLocationMethodMap:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v2, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->isNormalStatus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 862
    invoke-virtual {v8}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 864
    :cond_3
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto/16 :goto_0

    .line 855
    .end local v8    # "continualAMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public status(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 760
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 761
    .local v4, "resultJSONArray":Lorg/json/JSONArray;
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "sceneIds"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 763
    .local v6, "sceneIds":Lorg/json/JSONArray;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 764
    :cond_0
    const-string/jumbo v8, "sceneIds is null!"

    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->fail(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v10, "sceneIds is null!"

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 792
    :goto_0
    return-object v8

    .line 769
    :cond_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 770
    .local v3, "length":I
    if-lez v3, :cond_4

    .line 772
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 774
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 775
    .local v5, "sceneId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 776
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 778
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v7, 0x1

    .line 780
    .local v7, "value":I
    :goto_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "sceneId":Ljava/lang/String;
    .end local v7    # "value":I
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "sceneId":Ljava/lang/String;
    :cond_3
    move v7, v8

    .line 778
    goto :goto_2

    .line 784
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "sceneId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 787
    const-string/jumbo v9, "lightapp"

    const-string/jumbo v10, "Geolocation"

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 792
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    :cond_4
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    goto :goto_0
.end method

.method public stop(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 978
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->checkPlayServices()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 979
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->stopGoogle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    .line 1002
    :goto_0
    return-object v3

    .line 982
    :cond_0
    :try_start_0
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "sceneId"

    const-string/jumbo v5, "runtime.plugin.geolocation.default_sceneId"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, "sceneId":Ljava/lang/String;
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v4, "Geolocation"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Geolocation stop sceneId:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    .line 985
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 984
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mAMapLocationClientMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationClient;

    .line 989
    .local v0, "aMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    if-eqz v0, :cond_1

    .line 990
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 991
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 995
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->mContinualLocationMethodMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "sceneId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->stopLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1002
    .end local v0    # "aMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    .end local v1    # "sceneId":Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0

    .line 996
    .restart local v1    # "sceneId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 998
    .end local v1    # "sceneId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 999
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
