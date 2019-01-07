.class public final Lhid;
.super Ljava/lang/Object;
.source "HpmTracker.java"

# interfaces
.implements Lcom/alipay/android/h5appmanager/tracker/H5Tracker;


# static fields
.field private static b:Z


# instance fields
.field a:Lhhy$a;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/doraemon/statistics/Statistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lhid;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhhy$a;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "networkMonitor"    # Lhhy$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhid;->d:Ljava/util/Map;

    .line 89
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    iput-object v0, p0, Lhid;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 92
    if-nez p1, :cond_0

    .line 93
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lhid;->c:Landroid/content/Context;

    .line 97
    :goto_0
    iput-object p2, p0, Lhid;->a:Lhhy$a;

    .line 1445
    iget-object v0, p0, Lhid;->c:Landroid/content/Context;

    const-string/jumbo v1, "hpm_today_traffic"

    .line 1446
    invoke-static {v0, v1}, Lcpk;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x800000

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1447
    const/4 v0, 0x0

    sput-boolean v0, Lhid;->b:Z

    :goto_1
    return-void

    .line 95
    :cond_0
    iput-object p1, p0, Lhid;->c:Landroid/content/Context;

    goto :goto_0

    .line 1449
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lhid;->b:Z

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Z)I
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "isWifi"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 393
    invoke-direct {p0, p2}, Lhid;->a(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 394
    .local v0, "downloadTimeMap":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 398
    :cond_0
    return v1
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "eventId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 336
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 337
    .local v7, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p1, :cond_0

    .line 338
    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 339
    .local v6, "isSuccess":Z
    const-string/jumbo v0, "appId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "appId":Ljava/lang/String;
    const-string/jumbo v0, "errorDescription"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, "errorDescription":Ljava/lang/String;
    invoke-virtual {v7, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";appId="

    .line 343
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 344
    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";errorDescription="

    .line 345
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 346
    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";isSuccess="

    .line 347
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 348
    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 349
    if-eqz v6, :cond_1

    .line 350
    iget-object v0, p0, Lhid;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "hpm"

    invoke-interface {v0, v1, p2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .end local v3    # "appId":Ljava/lang/String;
    .end local v5    # "errorDescription":Ljava/lang/String;
    .end local v6    # "isSuccess":Z
    :cond_0
    :goto_0
    return-object v7

    .line 352
    .restart local v3    # "appId":Ljava/lang/String;
    .restart local v5    # "errorDescription":Ljava/lang/String;
    .restart local v6    # "isSuccess":Z
    :cond_1
    iget-object v0, p0, Lhid;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "hpm"

    const-string/jumbo v4, "0"

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)Lorg/json/JSONObject;
    .locals 6
    .param p1, "isWifi"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    const-string/jumbo v4, "wifiDownloadTimeMap"

    .line 408
    .local v4, "key":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 410
    .local v0, "downloadTimeMap":Lorg/json/JSONObject;
    :try_start_0
    iget-object v5, p0, Lhid;->c:Landroid/content/Context;

    invoke-static {v5, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "downloadTimeMapString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 412
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "downloadTimeMap":Lorg/json/JSONObject;
    .local v1, "downloadTimeMap":Lorg/json/JSONObject;
    move-object v0, v1

    .line 419
    .end local v1    # "downloadTimeMap":Lorg/json/JSONObject;
    .end local v2    # "downloadTimeMapString":Ljava/lang/String;
    .restart local v0    # "downloadTimeMap":Lorg/json/JSONObject;
    :goto_1
    return-object v0

    .line 406
    .end local v0    # "downloadTimeMap":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "downloadTimeMap"

    .restart local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 414
    .restart local v0    # "downloadTimeMap":Lorg/json/JSONObject;
    .restart local v2    # "downloadTimeMapString":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "downloadTimeMap":Lorg/json/JSONObject;
    .restart local v1    # "downloadTimeMap":Lorg/json/JSONObject;
    move-object v0, v1

    .line 418
    .end local v1    # "downloadTimeMap":Lorg/json/JSONObject;
    .restart local v0    # "downloadTimeMap":Lorg/json/JSONObject;
    goto :goto_1

    .line 416
    .end local v2    # "downloadTimeMapString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 417
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {p0, p1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    .line 362
    const-string/jumbo v0, "HpmTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "trace: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-static {v0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lhid;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x6

    const/4 v4, 0x0

    .line 187
    iget-object v5, p0, Lhid;->c:Landroid/content/Context;

    const-string/jumbo v6, "hpm_today_date_timeMillis"

    invoke-static {v5, v6}, Lcpk;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 188
    .local v2, "time":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 189
    iget-object v5, p0, Lhid;->c:Landroid/content/Context;

    const-string/jumbo v6, "hpm_today_date_timeMillis"

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 205
    :goto_0
    return v4

    .line 193
    :cond_0
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 194
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 196
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 197
    .local v1, "dayOfYear":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 199
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v5, v1, :cond_1

    .line 200
    iget-object v5, p0, Lhid;->c:Landroid/content/Context;

    const-string/jumbo v6, "hpm_today_date_timeMillis"

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 202
    const-string/jumbo v5, "hpm"

    const-string/jumbo v6, "checkIfToday"

    const-string/jumbo v7, "6"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static c()I
    .locals 7

    .prologue
    .line 425
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v4

    const-string/jumbo v5, "wk_phone"

    const-string/jumbo v6, "hpm_threshold"

    invoke-virtual {v4, v5, v6}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "hpmThreshold":Ljava/lang/String;
    const/4 v0, 0x3

    .line 427
    .local v0, "downloadLimit":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 430
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 431
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "hpm_threshold_count"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 436
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/AppInfo;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lhid;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/h5appmanager/AppInfo;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/h5appmanager/AppInfo;)V
    .locals 3
    .param p1, "appInfo"    # Lcom/alipay/android/h5appmanager/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lhid;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v0, "HpmTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "insertInstallFailApp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lhid;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b(Lcom/alipay/android/h5appmanager/AppInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/alipay/android/h5appmanager/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 78
    if-eqz p1, :cond_0

    iget-object v0, p0, Lhid;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    .line 79
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lhid;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c(Lcom/alipay/android/h5appmanager/AppInfo;)Z
    .locals 7
    .param p1, "appInfo"    # Lcom/alipay/android/h5appmanager/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 372
    if-nez p1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v4

    .line 375
    :cond_1
    iget-object v0, p1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    .line 379
    .local v0, "appId":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v6}, Lcms;->k(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 380
    const/4 v6, 0x1

    invoke-direct {p0, v0, v6}, Lhid;->a(Ljava/lang/String;Z)I

    move-result v3

    .line 381
    .local v3, "wifiTime":I
    const/16 v6, 0xa

    if-gt v3, v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 383
    .end local v3    # "wifiTime":I
    :cond_2
    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, Lhid;->a(Ljava/lang/String;Z)I

    move-result v2

    .line 384
    .local v2, "times":I
    invoke-static {}, Lhid;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gt v2, v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 386
    .end local v2    # "times":I
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 389
    goto :goto_0
.end method

.method public final send(Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;)V
    .locals 26
    .param p1, "event"    # Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;

    .prologue
    .line 226
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->result()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->id()Ljava/lang/String;

    move-result-object v22

    .line 229
    .local v22, "eventId":Ljava/lang/String;
    const-string/jumbo v5, "hpm_traffic"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->result()Landroid/os/Bundle;

    move-result-object v18

    .line 231
    .local v18, "bundle":Landroid/os/Bundle;
    if-eqz v18, :cond_5

    .line 232
    const-string/jumbo v5, "url"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 233
    .local v14, "url":Ljava/lang/String;
    const-string/jumbo v5, "size"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 234
    .local v12, "size":J
    const-string/jumbo v5, "appId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, "appId":Ljava/lang/String;
    const-string/jumbo v5, "STATISTICS"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 237
    .local v4, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v5, "hpm"

    const-string/jumbo v6, "hpm_traffic"

    long-to-double v8, v12

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 240
    move-object/from16 v0, p0

    iget-object v5, v0, Lhid;->a:Lhhy$a;

    if-eqz v5, :cond_1

    .line 241
    move-object/from16 v0, p0

    iget-object v5, v0, Lhid;->a:Lhhy$a;

    const-string/jumbo v15, "hpm"

    .line 2152
    iget-object v6, v5, Lhhy$a;->a:Ljava/util/Set;

    monitor-enter v6

    .line 2153
    :try_start_0
    iget-object v8, v5, Lhhy$a;->a:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 2154
    iget-object v5, v5, Lhhy$a;->a:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .line 2155
    const-wide/16 v10, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;->onRequest(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2158
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :cond_1
    monitor-enter p0

    .line 244
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lhid;->b()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3102
    const/4 v5, 0x0

    invoke-static {v5}, Lcms;->k(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3104
    move-object/from16 v0, p0

    iget-object v5, v0, Lhid;->c:Landroid/content/Context;

    const-string/jumbo v6, "hpm_today_traffic"

    .line 3105
    invoke-static {v5, v6}, Lcpk;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    .line 3106
    add-long v10, v8, v12

    .line 3107
    move-object/from16 v0, p0

    iget-object v5, v0, Lhid;->c:Landroid/content/Context;

    const-string/jumbo v6, "hpm_today_traffic"

    .line 3108
    invoke-static {v5, v6, v10, v11}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 3109
    const-string/jumbo v5, "hpm"

    const-string/jumbo v6, "saveDayTraffic:"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v5

    const-string/jumbo v6, "wk_phone"

    const-string/jumbo v8, "hpm_threshold"

    invoke-virtual {v5, v6, v8}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3113
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    if-nez v6, :cond_6

    .line 3115
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3116
    const-string/jumbo v5, "hpm_threshold_traffic"

    const-wide/32 v8, 0x800000

    invoke-virtual {v6, v5, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v8

    .line 3125
    :goto_1
    cmp-long v5, v10, v8

    if-lez v5, :cond_3

    .line 3126
    :try_start_4
    sget-boolean v5, Lhid;->b:Z

    if-eqz v5, :cond_2

    .line 3127
    const/4 v5, 0x0

    sput-boolean v5, Lhid;->b:Z

    .line 3129
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3130
    const-string/jumbo v6, "desc"

    const-string/jumbo v8, "\u4eca\u5929Hpm\u6d41\u91cf\u8d85\u8fc78M"

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3131
    const-string/jumbo v6, "size"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3132
    new-instance v6, Lhzu;

    invoke-direct {v6}, Lhzu;-><init>()V

    .line 3133
    const-string/jumbo v8, "hpm"

    iput-object v8, v6, Lhzu;->a:Ljava/lang/String;

    .line 3134
    const/16 v8, 0x515

    iput v8, v6, Lhzu;->c:I

    .line 3135
    const-string/jumbo v8, "hpm_threshold_traffic"

    iput-object v8, v6, Lhzu;->d:Ljava/lang/String;

    .line 3136
    iput-object v5, v6, Lhzu;->b:Ljava/util/Map;

    .line 3137
    const-class v5, Lhzr;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhzr;

    invoke-virtual {v5, v6}, Lhzr;->a(Lhzu;)V

    .line 3142
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v5

    if-nez v5, :cond_4

    .line 3150
    const/4 v5, 0x0

    :try_start_5
    invoke-static {v5}, Lcms;->k(Landroid/content/Context;)Z

    move-result v5

    .line 3151
    if-eqz v5, :cond_7

    .line 3152
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lhid;->a(Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 3153
    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 3154
    add-int/lit8 v6, v6, 0x1

    .line 3155
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3156
    move-object/from16 v0, p0

    iget-object v6, v0, Lhid;->c:Landroid/content/Context;

    const-string/jumbo v8, "downloadTimeMap"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    const-string/jumbo v6, "hpm"

    const-string/jumbo v8, "wifi=====checkAppDownloadTimes:"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v8, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 250
    :cond_4
    :goto_2
    :try_start_6
    monitor-exit p0

    .line 333
    .end local v4    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    .end local v7    # "appId":Ljava/lang/String;
    .end local v12    # "size":J
    .end local v14    # "url":Ljava/lang/String;
    .end local v18    # "bundle":Landroid/os/Bundle;
    .end local v22    # "eventId":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 3117
    .restart local v4    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    .restart local v7    # "appId":Ljava/lang/String;
    .restart local v12    # "size":J
    .restart local v14    # "url":Ljava/lang/String;
    .restart local v18    # "bundle":Landroid/os/Bundle;
    .restart local v22    # "eventId":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 3118
    const-wide/32 v8, 0x800000

    .line 3119
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 250
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    .line 3122
    :cond_6
    const-wide/32 v8, 0x800000

    goto/16 :goto_1

    .line 3159
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lhid;->a(Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 3160
    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 3161
    add-int/lit8 v6, v6, 0x1

    .line 3162
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3163
    move-object/from16 v0, p0

    iget-object v8, v0, Lhid;->c:Landroid/content/Context;

    const-string/jumbo v9, "downloadTimeMap"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3164
    const-string/jumbo v8, "hpm"

    const-string/jumbo v9, "checkAppDownloadTimes:"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    invoke-static {}, Lhid;->c()I

    move-result v5

    .line 3167
    if-le v6, v5, :cond_4

    .line 3168
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3169
    const-string/jumbo v8, "appId"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3170
    const-string/jumbo v8, "desc"

    const-string/jumbo v9, "\u4eca\u5929\u4e0b\u8f7d\u6b21\u6570\u8d85\u8fc73\u6b21"

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3171
    const-string/jumbo v8, "times"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3172
    new-instance v6, Lhzu;

    invoke-direct {v6}, Lhzu;-><init>()V

    .line 3173
    const-string/jumbo v8, "hpm"

    iput-object v8, v6, Lhzu;->a:Ljava/lang/String;

    .line 3174
    const/16 v8, 0x516

    iput v8, v6, Lhzu;->c:I

    .line 3175
    const-string/jumbo v8, "hpm_threshold_count"

    iput-object v8, v6, Lhzu;->d:Ljava/lang/String;

    .line 3176
    iput-object v5, v6, Lhzu;->b:Ljava/util/Map;

    .line 3177
    const-class v5, Lhzr;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhzr;

    invoke-virtual {v5, v6}, Lhzr;->a(Lhzu;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    .line 3181
    :catch_1
    move-exception v5

    .line 3182
    :try_start_8
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 3209
    :cond_8
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3210
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v6

    if-nez v6, :cond_9

    .line 3212
    const/4 v6, 0x1

    :try_start_9
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3217
    :cond_9
    :goto_4
    :try_start_a
    const-string/jumbo v6, "hpm"

    const-string/jumbo v8, "resetTodaySize:"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    move-object/from16 v0, p0

    iget-object v6, v0, Lhid;->c:Landroid/content/Context;

    const-string/jumbo v8, "downloadTimeMap"

    .line 3219
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v8, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    move-object/from16 v0, p0

    iget-object v5, v0, Lhid;->c:Landroid/content/Context;

    const-string/jumbo v6, "hpm_today_traffic"

    .line 3221
    invoke-static {v5, v6, v12, v13}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_2

    .line 3213
    :catch_2
    move-exception v6

    .line 3214
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 253
    .end local v4    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    .end local v7    # "appId":Ljava/lang/String;
    .end local v12    # "size":J
    .end local v14    # "url":Ljava/lang/String;
    .end local v18    # "bundle":Landroid/os/Bundle;
    :cond_a
    const-string/jumbo v5, "hmp_DuplicateDownload"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->result()Landroid/os/Bundle;

    move-result-object v18

    .line 255
    .restart local v18    # "bundle":Landroid/os/Bundle;
    if-eqz v18, :cond_5

    .line 256
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v23, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "appId"

    const-string/jumbo v6, "appId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v5, "appVersion"

    const-string/jumbo v6, "appVersion"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v5, "remoteVersion"

    const-string/jumbo v6, "remoteVersion"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "6"

    move-object/from16 v0, v23

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v5, "error_desc"

    const-string/jumbo v6, "hmp_DuplicateDownload"

    move-object/from16 v0, v23

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lgvi;->warn(Ljava/util/Map;)V

    goto/16 :goto_3

    .line 265
    .end local v18    # "bundle":Landroid/os/Bundle;
    .end local v23    # "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    const-string/jumbo v5, "hmp_crc_value"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->result()Landroid/os/Bundle;

    move-result-object v18

    .line 267
    .restart local v18    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "appId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 268
    .restart local v7    # "appId":Ljava/lang/String;
    const-string/jumbo v5, "appVersion"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 269
    .local v16, "appVersion":Ljava/lang/String;
    const-string/jumbo v5, "crcValue"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 270
    .local v20, "crcValue":J
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    .line 271
    .local v25, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";appid="

    .line 272
    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 273
    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";appVersion"

    .line 274
    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 275
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";crcValue="

    .line 276
    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 277
    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 278
    const-string/jumbo v5, "hpm"

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-static {v5, v0, v6}, Lhid;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 279
    .end local v7    # "appId":Ljava/lang/String;
    .end local v16    # "appVersion":Ljava/lang/String;
    .end local v18    # "bundle":Landroid/os/Bundle;
    .end local v20    # "crcValue":J
    .end local v25    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_c
    const-string/jumbo v5, "hpm_download"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->result()Landroid/os/Bundle;

    move-result-object v18

    .line 281
    .restart local v18    # "bundle":Landroid/os/Bundle;
    if-eqz v18, :cond_5

    const-string/jumbo v5, "result"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 282
    const-string/jumbo v5, "appId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 283
    .restart local v7    # "appId":Ljava/lang/String;
    const-string/jumbo v5, "appVersion"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 284
    .restart local v16    # "appVersion":Ljava/lang/String;
    const-string/jumbo v5, "dataLength"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 285
    .local v19, "dataLength":I
    const-string/jumbo v5, "url"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 286
    .restart local v14    # "url":Ljava/lang/String;
    const-string/jumbo v5, "responseHeader"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 287
    .local v24, "responseHeader":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lhid;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    .line 289
    .restart local v25    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, "appid="

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 290
    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";appVersion="

    .line 291
    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 292
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";dataLength="

    .line 293
    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 294
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";url="

    .line 295
    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 296
    invoke-virtual {v5, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";responseHeader="

    .line 297
    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 298
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 299
    move/from16 v0, v19

    int-to-long v8, v0

    move-object/from16 v0, v16

    invoke-static {v7, v8, v9, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitHpmDownLoad(Ljava/lang/String;JLjava/lang/String;)V

    .line 300
    const-string/jumbo v5, "hpm"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lhid;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 302
    .end local v7    # "appId":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    .end local v16    # "appVersion":Ljava/lang/String;
    .end local v18    # "bundle":Landroid/os/Bundle;
    .end local v19    # "dataLength":I
    .end local v24    # "responseHeader":Ljava/lang/String;
    .end local v25    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_d
    const-string/jumbo v5, "hpm_update"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string/jumbo v5, "hpm_sync"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 303
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->result()Landroid/os/Bundle;

    move-result-object v18

    .line 304
    .restart local v18    # "bundle":Landroid/os/Bundle;
    if-eqz v18, :cond_5

    const-string/jumbo v5, "result"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 305
    const-string/jumbo v5, "appList"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 306
    .local v17, "applist":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lhid;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    .line 307
    .restart local v25    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, ";appList="

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 308
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 309
    const-string/jumbo v5, "hpm"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lhid;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 311
    .end local v17    # "applist":Ljava/lang/String;
    .end local v18    # "bundle":Landroid/os/Bundle;
    .end local v25    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_f
    const-string/jumbo v5, "hpm_load"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->result()Landroid/os/Bundle;

    move-result-object v18

    .line 313
    .restart local v18    # "bundle":Landroid/os/Bundle;
    if-eqz v18, :cond_5

    const-string/jumbo v5, "result"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 314
    const-string/jumbo v5, "appVersion"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 315
    .restart local v16    # "appVersion":Ljava/lang/String;
    const-string/jumbo v5, "appId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 317
    .restart local v7    # "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lhid;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    .line 318
    .restart local v25    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, ";appVersion="

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 319
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 320
    const-string/jumbo v5, "hpm"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lhid;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v5, v0, Lhid;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v6, "hpm"

    move-object/from16 v0, v22

    invoke-interface {v5, v6, v0, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string/jumbo v5, "result"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v16

    invoke-static {v7, v5, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitHpmLoad(Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 326
    .end local v7    # "appId":Ljava/lang/String;
    .end local v16    # "appVersion":Ljava/lang/String;
    .end local v18    # "bundle":Landroid/os/Bundle;
    .end local v25    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->result()Landroid/os/Bundle;

    move-result-object v18

    .line 327
    .restart local v18    # "bundle":Landroid/os/Bundle;
    if-eqz v18, :cond_5

    const-string/jumbo v5, "result"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lhid;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    .line 329
    .restart local v25    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, "hpm"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/tracker/TrackEventBuilder$TrackEvent;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lhid;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
