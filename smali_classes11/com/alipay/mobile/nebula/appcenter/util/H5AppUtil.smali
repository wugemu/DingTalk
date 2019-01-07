.class public Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;
.super Ljava/lang/Object;
.source "H5AppUtil.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final api_permission:Ljava/lang/String; = "api_permission"

.field private static final appIds:[Ljava/lang/String;

.field private static appSet:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final app_channel:Ljava/lang/String; = "app_channel"

.field public static final app_type:Ljava/lang/String; = "app_type"

.field public static currentPsd:Ljava/lang/String; = null

.field public static final down_type:Ljava/lang/String; = "download_type"

.field public static final local_report:Ljava/lang/String; = "local_report"

.field public static final lottie_animation:Ljava/lang/String; = "lottieAnimation"

.field public static final package_nick:Ljava/lang/String; = "package_nick"

.field public static final patchDict:Ljava/lang/String; = "patchDict"

.field public static final preset:Ljava/lang/String; = "preset"

.field private static final publicAppIds:[Ljava/lang/String;

.field private static publicAppSet:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final release_type:Ljava/lang/String; = "release_type"

.field public static final scene:Ljava/lang/String; = "scene"

.field public static secAppId:Ljava/lang/String; = null

.field public static final third_platform:Ljava/lang/String; = "third_platform"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string/jumbo v0, "H5AppUtil"

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "20000067"

    aput-object v1, v0, v3

    const-string/jumbo v1, "20000095"

    aput-object v1, v0, v4

    const-string/jumbo v1, "20000096"

    aput-object v1, v0, v5

    const-string/jumbo v1, "20000097"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "20000098"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "20000099"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appIds:[Ljava/lang/String;

    .line 60
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "20000101"

    aput-object v1, v0, v3

    const-string/jumbo v1, "20000042"

    aput-object v1, v0, v4

    const-string/jumbo v1, "20000249"

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->publicAppIds:[Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->secAppId:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->currentPsd:Ljava/lang/String;

    .line 67
    sput-object v7, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appSet:Ljava/util/Set;

    .line 69
    sput-object v7, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->publicAppSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appCenterLog(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    .locals 7
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "param3"    # Ljava/lang/String;

    .prologue
    .line 483
    if-nez p1, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, "param4":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 489
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v6

    .line 490
    .local v6, "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    const/4 v0, 0x0

    .line 491
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v6, :cond_2

    .line 492
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "provider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 494
    .restart local v0    # "provider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :cond_2
    if-eqz v0, :cond_0

    .line 495
    const-string/jumbo v2, "monitor"

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p0, "version1"    # Ljava/lang/String;
    .param p1, "version2"    # Ljava/lang/String;

    .prologue
    .line 389
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "*"

    .line 390
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "*"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 391
    :cond_0
    const/4 v9, 0x0

    .line 431
    :goto_0
    return v9

    .line 394
    :cond_1
    const-string/jumbo v9, "\\."

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 395
    .local v7, "versionArray1":[Ljava/lang/String;
    const-string/jumbo v9, "\\."

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 397
    .local v8, "versionArray2":[Ljava/lang/String;
    array-length v5, v7

    .line 398
    .local v5, "len1":I
    array-length v6, v8

    .line 399
    .local v6, "len2":I
    if-gt v5, v6, :cond_2

    move v4, v5

    .line 403
    .local v4, "len":I
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 404
    aget-object v9, v7, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 405
    .local v10, "x1":J
    aget-object v9, v8, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 406
    .local v12, "x2":J
    cmp-long v9, v10, v12

    if-lez v9, :cond_3

    .line 407
    const/4 v9, 0x1

    goto :goto_0

    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v10    # "x1":J
    .end local v12    # "x2":J
    :cond_2
    move v4, v6

    .line 399
    goto :goto_1

    .line 408
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    .restart local v10    # "x1":J
    .restart local v12    # "x2":J
    :cond_3
    cmp-long v9, v10, v12

    if-gez v9, :cond_4

    .line 409
    const/4 v9, -0x1

    goto :goto_0

    .line 403
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 414
    .end local v10    # "x1":J
    .end local v12    # "x2":J
    :cond_5
    if-le v5, v6, :cond_7

    .line 415
    move v3, v4

    :goto_3
    if-ge v3, v5, :cond_9

    .line 416
    aget-object v9, v7, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-lez v9, :cond_6

    .line 417
    const/4 v9, 0x1

    goto :goto_0

    .line 415
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 420
    :cond_7
    if-ge v5, v6, :cond_9

    .line 421
    move v3, v4

    :goto_4
    if-ge v3, v6, :cond_9

    .line 422
    aget-object v9, v8, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-lez v9, :cond_8

    .line 423
    const/4 v9, -0x1

    goto :goto_0

    .line 421
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 427
    :cond_9
    const/4 v9, 0x0

    goto :goto_0

    .line 428
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "len1":I
    .end local v6    # "len2":I
    .end local v7    # "versionArray1":[Ljava/lang/String;
    .end local v8    # "versionArray2":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 676
    const/4 v1, 0x0

    .line 677
    .local v1, "copyBundle":Landroid/os/Bundle;
    if-nez p0, :cond_0

    .line 678
    new-instance p0, Landroid/os/Bundle;

    .end local p0    # "bundle":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 681
    .restart local p0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_0
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "copyBundle "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-object v1

    .line 682
    :catch_0
    move-exception v2

    .line 683
    .local v2, "throwable":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static deleteNebulaInstallFileAndDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 581
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteNebulaInstallFileAndDB "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    if-eqz p0, :cond_0

    const-string/jumbo v1, "nebulaInstallApps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 585
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    .line 586
    .local v0, "appDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v0, :cond_1

    .line 587
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->deleteAppInstall(Ljava/lang/String;)V

    .line 589
    :cond_1
    return-void
.end method

.method public static downloadH5App(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 7
    .param p0, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 445
    if-nez p0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v2

    .line 449
    :cond_1
    sget-object v4, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "downloadH5App, appid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",downloadType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget v4, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    if-ne v4, v3, :cond_2

    move v2, v3

    .line 452
    goto :goto_0

    .line 455
    :cond_2
    const/4 v0, 0x0

    .line 457
    .local v0, "canPreDownloadInWifi":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppListWithStrategy(I)Ljava/util/List;

    move-result-object v1

    .line 458
    .local v1, "wifiPreDownloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 459
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 461
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWifi()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_4

    iget v4, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public static enableDSL(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 639
    const-string/jumbo v1, "enableDSL"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "enableDSL":Ljava/lang/String;
    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    const/4 v1, 0x1

    .line 643
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static enableH5AppPatch()Z
    .locals 3

    .prologue
    .line 308
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 309
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 310
    const-string/jumbo v2, "h5_enable_H5App_patch"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    const/4 v2, 0x0

    .line 316
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static enableResPatch()Z
    .locals 3

    .prologue
    .line 296
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 297
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 298
    const-string/jumbo v2, "h5_enable_resH5App_patch"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    const/4 v2, 0x0

    .line 304
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getAppIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 150
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appIds:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    return-object v0
.end method

.method public static getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .locals 3

    .prologue
    .line 500
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    .line 501
    .local v0, "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    const/4 v1, 0x0

    .line 502
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 503
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "provider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 505
    .restart local v1    # "provider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :cond_0
    return-object v1
.end method

.method public static getLauncherParamFromExtendInfo(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 4
    .param p0, "copyParam"    # Landroid/os/Bundle;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 665
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 670
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "launchParams"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 671
    .local v1, "launchParams":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->setLauncherParams(Lcom/alibaba/fastjson/JSONObject;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static getPackageNick(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 465
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 466
    .local v0, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getPackageNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPkgReqFromAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Liqk;
    .locals 2
    .param p0, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .prologue
    .line 523
    new-instance v0, Liqk;

    invoke-direct {v0}, Liqk;-><init>()V

    .line 524
    .local v0, "req":Liqk;
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->platform:Ljava/lang/String;

    iput-object v1, v0, Liqk;->a:Ljava/lang/String;

    .line 525
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->system:Ljava/lang/String;

    iput-object v1, v0, Liqk;->b:Ljava/lang/String;

    .line 526
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->client:Ljava/lang/String;

    iput-object v1, v0, Liqk;->c:Ljava/lang/String;

    .line 527
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->sdk:Ljava/lang/String;

    iput-object v1, v0, Liqk;->d:Ljava/lang/String;

    .line 528
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->env:Ljava/lang/String;

    iput-object v1, v0, Liqk;->e:Ljava/lang/String;

    .line 529
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->channel:Ljava/lang/String;

    iput-object v1, v0, Liqk;->f:Ljava/lang/String;

    .line 530
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->bundleid:Ljava/lang/String;

    iput-object v1, v0, Liqk;->g:Ljava/lang/String;

    .line 531
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->query:Ljava/lang/String;

    iput-object v1, v0, Liqk;->h:Ljava/lang/String;

    .line 532
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->existed:Ljava/lang/String;

    iput-object v1, v0, Liqk;->i:Ljava/lang/String;

    .line 533
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->grayRules:Ljava/lang/String;

    iput-object v1, v0, Liqk;->j:Ljava/lang/String;

    .line 534
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->localAppInfo:Ljava/lang/String;

    iput-object v1, v0, Liqk;->k:Ljava/lang/String;

    .line 535
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    iput-object v1, v0, Liqk;->l:Ljava/lang/String;

    .line 536
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->scene:Ljava/lang/String;

    iput-object v1, v0, Liqk;->m:Ljava/lang/String;

    .line 537
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->preferLocal:Ljava/lang/String;

    iput-object v1, v0, Liqk;->n:Ljava/lang/String;

    .line 538
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    iput-object v1, v0, Liqk;->o:Ljava/lang/String;

    .line 539
    return-object v0
.end method

.method private static hasH5Open()Z
    .locals 3

    .prologue
    .line 473
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 474
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    const/4 v0, 0x0

    .line 475
    .local v0, "h5Page":Liop;
    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v0

    .line 478
    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isAppChannel4(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 649
    const-string/jumbo v1, "app_channel"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 650
    .local v0, "app_channel":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 651
    const/4 v1, 0x1

    .line 653
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isH5AppPkg(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 2
    .param p0, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    const/4 v0, 0x1

    .line 571
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_type:I

    if-ne v1, v0, :cond_0

    .line 574
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isH5ContainerAppId(Ljava/lang/String;)Z
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 135
    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appSet:Ljava/util/Set;

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appIds:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 137
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->appSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNativeApp(Ljava/lang/String;)Z
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 593
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v5

    if-nez v5, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v6

    .line 599
    :cond_1
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 600
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v2, :cond_2

    .line 601
    const-string/jumbo v5, "h5_getFromIsNativeApp"

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 602
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "no"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 607
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 608
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 609
    .local v1, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    if-eqz v1, :cond_3

    .line 611
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getCommonResourceAppList()Ljava/util/Set;

    move-result-object v0

    .line 612
    .local v0, "appSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 613
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 619
    .end local v0    # "appSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v3

    .line 630
    .local v3, "throwable":Ljava/lang/Throwable;
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isOffLine(Ljava/lang/String;)Z
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 544
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 545
    .local v0, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isOffline(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 547
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isOffline not to start."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :goto_0
    return v1

    .line 551
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isOffline(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v2

    .line 552
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 553
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isOffline not to start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPublicAppId(Ljava/lang/String;)Z
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->publicAppSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 143
    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->publicAppSet:Ljava/util/Set;

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->publicAppIds:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 145
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->publicAppSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRNApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 2
    .param p0, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 563
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 564
    const/4 v0, 0x1

    .line 566
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRNPackage(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 4
    .param p0, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 369
    if-eqz p0, :cond_0

    .line 370
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    .line 371
    .local v1, "extraJOStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 372
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 373
    .local v2, "extraJo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "appTypeSwitch"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "appTypeSwitch":Ljava/lang/String;
    const-string/jumbo v3, "tinyApp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 377
    .end local v0    # "appTypeSwitch":Ljava/lang/String;
    .end local v1    # "extraJOStr":Ljava/lang/String;
    .end local v2    # "extraJo":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isTinyWebView(Landroid/os/Bundle;)Z
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 692
    const-class v3, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 693
    .local v0, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    if-eqz v0, :cond_0

    .line 694
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->getWebViewTag()Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 696
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 698
    const/4 v3, 0x1

    .line 702
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static matchAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 101
    :try_start_0
    const-string/jumbo v5, ""

    .line 102
    .local v5, "str":Ljava/lang/String;
    const-string/jumbo v7, "h5app"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "hybrid"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 128
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 104
    .restart local v5    # "str":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "h5app"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 107
    const-string/jumbo v5, "\\d+\\.h5app\\.(alipay|m\\.taobao)\\.(net|com)"

    .line 112
    :cond_2
    :goto_1
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 113
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "host":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 115
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 116
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 117
    sget-object v7, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "group:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "result":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 120
    const/4 v7, 0x0

    const-string/jumbo v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 108
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    .end local v4    # "result":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "hybrid"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 109
    const-string/jumbo v5, "^\\d+[.]hybrid[.]alipay-eco[.](com|net)$"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    .end local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 658
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getLauncherParamFromExtendInfo(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 659
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 660
    return-object p0
.end method

.method static patchBlackListContain(Ljava/lang/String;)Z
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 320
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v2

    .line 323
    :cond_1
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 324
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 325
    const-string/jumbo v3, "h5_patch_appId_blacklist"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "regex":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setConfig(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebula/appcenter/model/AppRes;)V
    .locals 3
    .param p0, "result"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "appRes"    # Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    .prologue
    const/4 v2, 0x0

    .line 511
    const-string/jumbo v1, "config"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    const-string/jumbo v1, "config"

    invoke-static {p0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 513
    .local v0, "config":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->jsonToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    .line 514
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 515
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    .line 520
    .end local v0    # "config":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iput-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->config:Ljava/util/Map;

    goto :goto_0
.end method

.method public static toAppInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 24
    .param p0, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 158
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 159
    :cond_0
    const/4 v4, 0x0

    .line 291
    :cond_1
    :goto_0
    return-object v4

    .line 163
    :cond_2
    new-instance v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v4}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    .line 165
    .local v4, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    const-string/jumbo v21, "app_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 167
    const-string/jumbo v21, "size"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 168
    const-string/jumbo v21, "size"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->size:J

    .line 170
    :cond_3
    const-string/jumbo v21, "patch"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    .line 171
    const-string/jumbo v21, "online"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->online:I

    .line 172
    const-string/jumbo v21, "fallback_base_url"

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    .line 174
    const-string/jumbo v21, "package_url"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    .line 175
    const-string/jumbo v21, "version"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 176
    const-string/jumbo v21, "app_desc"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;

    .line 177
    const-string/jumbo v21, "vhost"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    .line 178
    const-string/jumbo v21, "nbl_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbl_id:Ljava/lang/String;

    .line 179
    const-string/jumbo v21, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    .line 180
    const-string/jumbo v21, "slogan"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->slogan:Ljava/lang/String;

    .line 183
    const-string/jumbo v21, "extend_info"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 185
    .local v6, "extendInfo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v21, "api_permission"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 186
    .local v18, "permission":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 187
    const-string/jumbo v21, "api_permission"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_4
    const-string/jumbo v21, "package_nick"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, "packageId":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 191
    const-string/jumbo v21, "package_nick"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_5
    const-string/jumbo v21, "scene"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 195
    .local v20, "sceneValue":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 196
    const-string/jumbo v21, "scene"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_6
    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->scene:Ljava/lang/String;

    .line 200
    const-string/jumbo v21, "local_report"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v12

    .line 201
    .local v12, "localReport":I
    iput v12, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->localReport:I

    .line 204
    const-string/jumbo v21, "launchParams"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v6, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 205
    .local v11, "launchParams":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v21, "nbapptype"

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 206
    .local v13, "nbAppType":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 207
    iput-object v13, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbAppType:Ljava/lang/String;

    .line 213
    :goto_1
    const-string/jumbo v21, "preset"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v19

    .line 214
    .local v19, "presetValue":I
    if-eqz v19, :cond_7

    .line 215
    const-string/jumbo v21, "preset"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_7
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    .line 220
    const-string/jumbo v21, "third_platform"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->third_platform:Ljava/lang/String;

    .line 222
    const-string/jumbo v21, "app_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_type:I

    .line 224
    const-string/jumbo v21, "app_channel"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    .line 226
    const-string/jumbo v21, "main_url"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    .line 227
    const-string/jumbo v21, "system_max"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->system_max:Ljava/lang/String;

    .line 228
    const-string/jumbo v21, "system_min"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->system_min:Ljava/lang/String;

    .line 231
    const-string/jumbo v21, "download_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    .line 232
    const-string/jumbo v21, "icon_url"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    .line 235
    const-string/jumbo v21, "release_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->release_type:Ljava/lang/String;

    .line 236
    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->release_type:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 237
    const-string/jumbo v21, "ONLINE"

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->release_type:Ljava/lang/String;

    .line 240
    :cond_8
    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 241
    const-string/jumbo v21, "patchDict"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    .line 242
    .local v15, "patchDir":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, ""

    .line 243
    .local v8, "installVersion":Ljava/lang/String;
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_a

    .line 244
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v7

    .line 245
    .local v7, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v7, :cond_a

    .line 246
    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 247
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 248
    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 249
    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 250
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 252
    :try_start_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 253
    .local v17, "patchVersion":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 254
    .local v16, "patchUrl":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 255
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v7    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "patchUrl":Ljava/lang/String;
    .end local v17    # "patchVersion":Ljava/lang/String;
    :cond_a
    sget-object v21, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "patchDir "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " installVersion "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " appInfo.patch\uff1a"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v8    # "installVersion":Ljava/lang/String;
    .end local v15    # "patchDir":Lcom/alibaba/fastjson/JSONObject;
    :cond_b
    const-string/jumbo v21, "66666672"

    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 270
    sget-object v21, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "appInfo.app_id set app_channel 4 "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/16 v21, 0x4

    move/from16 v0, v21

    iput v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    .line 275
    :cond_c
    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 276
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableH5AppPatch()Z

    move-result v21

    if-nez v21, :cond_f

    .line 277
    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    .line 287
    :cond_d
    :goto_3
    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->patchBlackListContain(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 288
    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    goto/16 :goto_0

    .line 209
    .end local v19    # "presetValue":I
    :cond_e
    const-string/jumbo v21, "nat"

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbAppType:Ljava/lang/String;

    goto/16 :goto_1

    .line 258
    .restart local v7    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v8    # "installVersion":Ljava/lang/String;
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "patchDir":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "presetValue":I
    :catch_0
    move-exception v5

    .line 259
    .local v5, "e":Ljava/lang/Exception;
    sget-object v21, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 279
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v8    # "installVersion":Ljava/lang/String;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "patchDir":Lcom/alibaba/fastjson/JSONObject;
    :cond_f
    const-string/jumbo v21, "res"

    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbAppType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableResPatch()Z

    move-result v21

    if-nez v21, :cond_d

    .line 280
    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    goto :goto_3
.end method

.method public static updateApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "process"    # Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    .prologue
    .line 337
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 338
    .local v1, "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v1, :cond_1

    .line 339
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "nebulaAppProvider==null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v0, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 348
    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "walletConfigNebulaVersion":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "prepareApp: send rpc appId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " walletConfigNebulaVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .end local v2    # "walletConfigNebulaVersion":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 358
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    .line 359
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    .line 360
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    .line 361
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v3

    .line 357
    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    goto :goto_0
.end method
