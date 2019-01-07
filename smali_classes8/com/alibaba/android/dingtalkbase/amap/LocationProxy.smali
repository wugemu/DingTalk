.class public Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;
.super Ljava/lang/Object;
.source "LocationProxy.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/location/AMapLocationClient;

.field private e:Lcom/amap/api/location/AMapLocationClientOption;

.field private f:Lcom/amap/api/location/AMapLocation;

.field private g:Lcom/amap/api/location/AMapLocation;

.field private h:J

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcir;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcir;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    .line 102
    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->e:Lcom/amap/api/location/AMapLocationClientOption;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->j:Ljava/util/Set;

    .line 110
    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->k:Lcim;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->c:Landroid/content/Context;

    .line 124
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 125
    new-instance v0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$1;-><init>(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->k:Lcim;

    .line 145
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const-class v1, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_0
    monitor-exit v1

    return-object v0

    .line 116
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;-><init>(Landroid/content/Context;)V

    .line 117
    sput-object v0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 6
    .param p1, "cacheEnable"    # Z
    .param p2, "mode"    # Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 148
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(ZZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZ)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    return-object v0
.end method

.method private a(ZZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZ)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 6
    .param p1, "cacheEnable"    # Z
    .param p2, "isOnce"    # Z
    .param p3, "mode"    # Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .param p4, "withReGeocode"    # Z
    .param p5, "enableMock"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 294
    move v0, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(ZZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZZ)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    return-object v0
.end method

.method private static a(ZZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZZ)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 2
    .param p0, "cacheEnable"    # Z
    .param p1, "isOnce"    # Z
    .param p2, "mode"    # Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .param p3, "withReGeocode"    # Z
    .param p4, "enableMock"    # Z
    .param p5, "onceLocationLatest"    # Z

    .prologue
    .line 308
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    .line 310
    .local v0, "locationOption":Lcom/amap/api/location/AMapLocationClientOption;
    invoke-virtual {v0, p2}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 312
    invoke-virtual {v0, p3}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 314
    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 316
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setWifiActiveScan(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 318
    invoke-virtual {v0, p4}, Lcom/amap/api/location/AMapLocationClientOption;->setMockEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 320
    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationCacheEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 321
    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    .line 322
    invoke-virtual {v0, p5}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 329
    :cond_0
    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/amap/api/location/AMapLocationClient;)V
    .locals 0
    .param p0, "aMapLocationClient"    # Lcom/amap/api/location/AMapLocationClient;

    .prologue
    .line 210
    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 212
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 214
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)Lcim;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->k:Lcim;

    return-object v0
.end method

.method private b(Lcir;ZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZ)Lcom/amap/api/location/AMapLocationClient;
    .locals 8
    .param p1, "callback"    # Lcir;
    .param p2, "cacheEnable"    # Z
    .param p3, "mode"    # Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .param p4, "withReGeocode"    # Z
    .param p5, "onceLocationLatest"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 230
    if-nez p1, :cond_0

    .line 231
    const/4 v6, 0x0

    .line 274
    :goto_0
    return-object v6

    .line 234
    :cond_0
    const-string/jumbo v0, "lightapp"

    sget-object v2, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "startOnceLocation cacheEnable "

    aput-object v5, v3, v4

    .line 235
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 234
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v6, Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->c:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    .local v6, "aMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    move v0, p2

    move-object v2, p3

    move v3, p4

    move v4, v1

    move v5, p5

    .line 239
    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(ZZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZZ)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 241
    new-instance v7, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;-><init>()V

    .line 242
    .local v7, "locationCache":Lcom/alibaba/android/dingtalkbase/amap/LocationCache;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$3;

    invoke-direct {v0, p0, p1, v7, v6}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$3;-><init>(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;Lcir;Lcom/alibaba/android/dingtalkbase/amap/LocationCache;Lcom/amap/api/location/AMapLocationClient;)V

    invoke-virtual {v6, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 272
    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)Lcom/amap/api/location/AMapLocation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->f:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)Lcom/amap/api/location/AMapLocation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->g:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method


# virtual methods
.method public final a(Lciq;Z)Lcom/amap/api/location/AMapLocationClient;
    .locals 2
    .param p1, "callback"    # Lciq;
    .param p2, "cacheEnable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 278
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;ZZ)V

    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcir;Z)Lcom/amap/api/location/AMapLocationClient;
    .locals 6
    .param p1, "callback"    # Lcir;
    .param p2, "cacheEnable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 218
    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    .line 1226
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;ZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZ)Lcom/amap/api/location/AMapLocationClient;

    move-result-object v0

    .line 218
    return-object v0
.end method

.method public final a(Lcir;ZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZ)Lcom/amap/api/location/AMapLocationClient;
    .locals 8
    .param p1, "callback"    # Lcir;
    .param p2, "cacheEnable"    # Z
    .param p3, "mode"    # Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .param p4, "withReGeocode"    # Z
    .param p5, "enableMock"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 163
    if-nez p1, :cond_0

    .line 164
    const/4 v6, 0x0

    .line 206
    :goto_0
    return-object v6

    .line 167
    :cond_0
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "startPersistentLocation cacheEnable "

    aput-object v4, v3, v2

    const/4 v4, 0x1

    .line 168
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 167
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v6, Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->c:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    .local v6, "aMapLocationClient":Lcom/amap/api/location/AMapLocationClient;
    move-object v0, p0

    move v1, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 171
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(ZZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZ)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 173
    new-instance v7, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;-><init>()V

    .line 174
    .local v7, "locationCache":Lcom/alibaba/android/dingtalkbase/amap/LocationCache;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;

    invoke-direct {v0, p0, p1, v7}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$2;-><init>(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;Lcir;Lcom/alibaba/android/dingtalkbase/amap/LocationCache;)V

    invoke-virtual {v6, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 204
    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    goto :goto_0
.end method

.method public final a(Lcir;ZZ)Lcom/amap/api/location/AMapLocationClient;
    .locals 6
    .param p1, "callback"    # Lcir;
    .param p2, "cacheEnable"    # Z
    .param p3, "onceLocationLatest"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 222
    const/4 v2, 0x0

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;ZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZ)Lcom/amap/api/location/AMapLocationClient;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Lcir;)V
    .locals 9
    .param p1, "callback"    # Lcir;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    const-string/jumbo v4, "lightapp"

    sget-object v5, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "stopIntervalLocation invoke mCallbackSet="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  mCacheDisableCallbackSet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->j:Ljava/util/Set;

    .line 502
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 501
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v2, 0x0

    .line 506
    .local v2, "isCacheCallback":Z
    if-eqz p1, :cond_1

    .line 507
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 508
    .local v3, "isInSet":Z
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->j:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 511
    if-eqz v3, :cond_1

    .line 512
    instance-of v4, p1, Lciq;

    if-eqz v4, :cond_0

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 515
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->h:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 516
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->f:Lcom/amap/api/location/AMapLocation;

    if-eqz v4, :cond_4

    .line 517
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$6;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$6;-><init>(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;Lcir;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 544
    .end local v0    # "currentTime":J
    :cond_0
    :goto_0
    const-string/jumbo v4, "lightapp"

    sget-object v5, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "stopIntervalLocation invoke callback "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .end local v3    # "isInSet":Z
    :cond_1
    const-string/jumbo v4, "lightapp"

    sget-object v5, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "stopIntervalLocation invoke mCallbackSet="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  mCacheDisableCallbackSet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->j:Ljava/util/Set;

    .line 550
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 549
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 553
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->j:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 554
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v4, :cond_2

    .line 555
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 557
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 559
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v4, p0}, Lcom/amap/api/location/AMapLocationClient;->unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 561
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    .line 562
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->e:Lcom/amap/api/location/AMapLocationClientOption;

    .line 564
    const-string/jumbo v4, "lightapp"

    sget-object v5, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    const-string/jumbo v6, "stopIntervalLocation all callback !"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->k:Lcim;

    if-eqz v4, :cond_3

    .line 568
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->k:Lcim;

    .line 2078
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcim;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 525
    .restart local v0    # "currentTime":J
    .restart local v3    # "isInSet":Z
    :cond_4
    :try_start_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$7;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$7;-><init>(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;Lcir;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 501
    .end local v0    # "currentTime":J
    .end local v2    # "isCacheCallback":Z
    .end local v3    # "isInSet":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 534
    .restart local v0    # "currentTime":J
    .restart local v2    # "isCacheCallback":Z
    .restart local v3    # "isInSet":Z
    :cond_5
    :try_start_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$8;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$8;-><init>(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;Lcir;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 572
    .end local v0    # "currentTime":J
    .end local v3    # "isInSet":Z
    :cond_6
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->j:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 573
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v4, :cond_7

    .line 574
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v4, p0}, Lcom/amap/api/location/AMapLocationClient;->unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 575
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 576
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 579
    :cond_7
    new-instance v4, Lcom/amap/api/location/AMapLocationClient;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    .line 580
    const/4 v4, 0x1

    sget-object v5, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(ZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->e:Lcom/amap/api/location/AMapLocationClientOption;

    .line 581
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->e:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4, v5}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 582
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v4, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 584
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized b(Lcir;)V
    .locals 1
    .param p1, "callback"    # Lcir;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcir;ZZ)V
    .locals 12
    .param p1, "callback"    # Lcir;
    .param p2, "cacheEnable"    # Z
    .param p3, "isSilence"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "startLocation cacheEnable "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 335
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " isSilence "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 334
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    if-eqz p1, :cond_3

    .line 339
    if-nez p2, :cond_0

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mCacheDisableCallbackSet size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->j:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mCallbackSet size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->k:Lcim;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->k:Lcim;

    .line 2055
    const-wide/16 v2, -0x1

    iget-wide v10, v0, Lcim;->b:J

    cmp-long v1, v2, v10

    if-nez v1, :cond_1

    .line 2056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcim;->b:J

    .line 352
    :cond_1
    if-eqz p2, :cond_2

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 355
    .local v6, "currentTime":J
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->h:J

    sub-long v0, v6, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->f:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_2

    .line 357
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$4;-><init>(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;Lcir;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 367
    .end local v6    # "currentTime":J
    :cond_2
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "startLocation callback "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 367
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    if-nez v0, :cond_5

    .line 373
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    .line 375
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    .line 2072
    iget-object v8, v0, Lcid;->b:Lckd;

    .line 376
    .local v8, "featureInterface":Lckd;
    const/4 v5, 0x0

    .line 378
    .local v5, "enableMock":Z
    if-eqz v8, :cond_4

    .line 379
    invoke-virtual {v8}, Lckd;->b()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v5, 0x1

    .line 382
    :cond_4
    :goto_0
    const/4 v2, 0x0

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(ZZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;ZZ)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->e:Lcom/amap/api/location/AMapLocationClientOption;

    .line 384
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->e:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 388
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 390
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "init location  setLocationCacheEnable "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 391
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .end local v5    # "enableMock":Z
    .end local v8    # "featureInterface":Lckd;
    :cond_5
    if-nez p2, :cond_7

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->e:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->e:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 399
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 400
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 402
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    .line 403
    const/4 v0, 0x0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(ZLcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->e:Lcom/amap/api/location/AMapLocationClientOption;

    .line 404
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->e:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 405
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 409
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "change location  setLocationCacheEnable "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 410
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_7
    if-eqz p3, :cond_8

    .line 417
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy$5;-><init>(Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;Lcir;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_8
    monitor-exit p0

    return-void

    .line 379
    .restart local v5    # "enableMock":Z
    .restart local v8    # "featureInterface":Lckd;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 334
    .end local v5    # "enableMock":Z
    .end local v8    # "featureInterface":Lckd;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 13
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 428
    const-string/jumbo v4, "lightapp"

    sget-object v5, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onLocationChanged invoke mCallbackSet size="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    if-eqz p1, :cond_6

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->h:J

    .line 433
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v4

    if-nez v4, :cond_1

    .line 435
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->f:Lcom/amap/api/location/AMapLocation;

    .line 436
    iput-object v12, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->g:Lcom/amap/api/location/AMapLocation;

    .line 438
    new-instance v3, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;-><init>()V

    .line 439
    .local v3, "locationCache":Lcom/alibaba/android/dingtalkbase/amap/LocationCache;
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mLatitude:F

    .line 440
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mLongitude:F

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mTimeStamp:J

    .line 443
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->c:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->saveToPreference(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/amap/LocationCache;)V

    .line 445
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcir;

    .line 446
    .local v0, "callback":Lcir;
    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v0, p1}, Lcir;->onSuccess(Lcom/amap/api/location/AMapLocation;)V

    .line 450
    const-string/jumbo v5, "lightapp"

    sget-object v6, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/String;

    const-string/jumbo v8, "onLocationChanged "

    aput-object v8, v7, v9

    .line 451
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 450
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    .end local v0    # "callback":Lcir;
    .end local v3    # "locationCache":Lcom/alibaba/android/dingtalkbase/amap/LocationCache;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcir;

    .line 456
    .restart local v0    # "callback":Lcir;
    instance-of v5, v0, Lciq;

    if-nez v5, :cond_2

    .line 457
    invoke-interface {v0, p1}, Lcir;->onError(Lcom/amap/api/location/AMapLocation;)V

    .line 460
    const-string/jumbo v5, "lightapp"

    sget-object v6, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/String;

    const-string/jumbo v8, "onLocationChanged "

    aput-object v8, v7, v9

    .line 461
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 460
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 465
    .end local v0    # "callback":Lcir;
    :cond_3
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->g:Lcom/amap/api/location/AMapLocation;

    .line 466
    iput-object v12, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->f:Lcom/amap/api/location/AMapLocation;

    .line 480
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->k:Lcim;

    if-eqz v4, :cond_a

    .line 481
    const-string/jumbo v2, ""

    .line 483
    .local v2, "info":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 484
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 485
    .local v1, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcir;

    .line 486
    .restart local v0    # "callback":Lcir;
    if-eqz v0, :cond_5

    .line 487
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, "    "

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 469
    .end local v0    # "callback":Lcir;
    .end local v1    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v2    # "info":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->i:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcir;

    .line 470
    .restart local v0    # "callback":Lcir;
    instance-of v5, v0, Lciq;

    if-nez v5, :cond_7

    .line 471
    invoke-interface {v0, v12}, Lcir;->onError(Lcom/amap/api/location/AMapLocation;)V

    .line 474
    const-string/jumbo v5, "lightapp"

    sget-object v6, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/String;

    const-string/jumbo v8, "onLocationChanged "

    aput-object v8, v7, v9

    .line 475
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 474
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 491
    .end local v0    # "callback":Lcir;
    .restart local v1    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v2    # "info":Ljava/lang/String;
    :cond_8
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 495
    .end local v1    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_9
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->k:Lcim;

    invoke-virtual {v4, v2}, Lcim;->a(Ljava/lang/String;)V

    .line 498
    .end local v2    # "info":Ljava/lang/String;
    :cond_a
    return-void
.end method
