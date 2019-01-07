.class public Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;
.super Ljava/lang/Object;
.source "H5PackageParser.java"


# static fields
.field private static final DEFAULT_TAR_PUBLIC_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2y61svV7Q0gmvxprTt6YX76rps8R+q+C+Qtkkk2+njIABsf10sHnl/5aQBh2s+kdo6YGlJrnKdxVso2JRzy+QbRBUgTdJmKfm5uGPdcqYuO0ur4b/QCyHTMoKJjBT8iI3hYIGhn0hACDao4xIsgzJ39grRKUa6120WbInlOLWSQIDAQAB"

.field private static final NEW_H5APP_SIGN_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAl96KRuzoQDgt3q3478MYKwTGDV0Fz5w+sKOfz+Ar+/XkwqLjVW7bAk+/nOD9Z4mnwM+BsgU/G5KGQ9WMjcXAow/eRBSf93iqcBX5+DdlkbneNyQP7Mvcy8EwOAa3y7AetEpTeYrv5cppFUjq4TVu9w+DwV1qegfvJEAA+6gFJEcJPxD9fxJggCF02tL3k9/WDnaNYVN3dCq8fN4jWZLr6KWlAX5UW5ZVtXP9IWObFnvRNjgXQhW/LzJLdbcDlQ5U6ImFyIFf//vn3vEhzlpU6EkxdGr+FWwsRiMTY9aZ1fJiFlgAZQpInV6cbDM8LgNGPtDsYUibIi3rVFtYtHAxQwIDAQAB"

.field public static final TAG:Ljava/lang/String; = "H5PackageParser"

.field public static final TAR_PUBLIC_KEY:Ljava/lang/String;

.field public static final TAR_VERIFY_FAIL:Ljava/lang/String; = "tarVerifyFail"

.field public static sHasSetLastModifiedFail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->sHasSetLastModifiedFail:Z

    .line 61
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getRSA()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPublicKey(Z)Ljava/lang/String;
    .locals 1
    .param p0, "newSignKey"    # Z

    .prologue
    .line 522
    if-eqz p0, :cond_0

    .line 523
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAl96KRuzoQDgt3q3478MYKwTGDV0Fz5w+sKOfz+Ar+/XkwqLjVW7bAk+/nOD9Z4mnwM+BsgU/G5KGQ9WMjcXAow/eRBSf93iqcBX5+DdlkbneNyQP7Mvcy8EwOAa3y7AetEpTeYrv5cppFUjq4TVu9w+DwV1qegfvJEAA+6gFJEcJPxD9fxJggCF02tL3k9/WDnaNYVN3dCq8fN4jWZLr6KWlAX5UW5ZVtXP9IWObFnvRNjgXQhW/LzJLdbcDlQ5U6ImFyIFf//vn3vEhzlpU6EkxdGr+FWwsRiMTY9aZ1fJiFlgAZQpInV6cbDM8LgNGPtDsYUibIi3rVFtYtHAxQwIDAQAB"

    .line 525
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2y61svV7Q0gmvxprTt6YX76rps8R+q+C+Qtkkk2+njIABsf10sHnl/5aQBh2s+kdo6YGlJrnKdxVso2JRzy+QbRBUgTdJmKfm5uGPdcqYuO0ur4b/QCyHTMoKJjBT8iI3hYIGhn0hACDao4xIsgzJ39grRKUa6120WbInlOLWSQIDAQAB"

    goto :goto_0
.end method

.method private static getRSA()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5PublicRsaProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5PublicRsaProvider;

    .line 67
    .local v0, "h5PublicRsaProvider":Lcom/alipay/mobile/nebula/provider/H5PublicRsaProvider;
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5PublicRsaProvider;->getPublicRsa()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "rsa":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    .end local v1    # "rsa":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private static getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .locals 1
    .param p0, "code"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;-><init>()V

    .line 79
    .local v0, "h5ParseResult":Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    iput p0, v0, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    .line 80
    iput-object p1, v0, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->msg:Ljava/lang/String;

    .line 81
    return-object v0
.end method

.method private static isNeedVerify()Z
    .locals 4

    .prologue
    .line 504
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->isNeedVerifyFromConfig()Z

    move-result v0

    .line 505
    .local v0, "isNeedVerifyFromConfig":Z
    const-string/jumbo v1, "H5PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parsePackage isNeedVerifyFromConfig "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->isRooted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNeedVerifyFromConfig()Z
    .locals 3

    .prologue
    .line 512
    const/4 v1, 0x0

    .line 513
    .local v1, "ret":Z
    const-string/jumbo v2, "h5_shouldverifyapp"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "configValue":Ljava/lang/String;
    const-string/jumbo v2, "NO"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 515
    const/4 v1, 0x1

    .line 517
    :cond_0
    return v1
.end method

.method public static notifyFail(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 18
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "offlineHost"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 450
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v13

    const-class v14, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 456
    .local v1, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isNebulaApp(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 457
    const-string/jumbo v13, "H5PackageParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " is nebulaapp,verify failed ,delete localPath:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 459
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "deletePath":Ljava/lang/String;
    const-string/jumbo v13, "H5PackageParser"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "deletePath:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .local v6, "file":Ljava/io/File;
    const-string/jumbo v10, ""

    .line 465
    .local v10, "name":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 467
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 468
    .local v8, "listFiles":[Ljava/io/File;
    if-eqz v8, :cond_2

    .line 469
    array-length v14, v8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_3

    aget-object v5, v8, v13

    .line 470
    .local v5, "f":Ljava/io/File;
    const-string/jumbo v15, "H5PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "file  "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 469
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 474
    .end local v5    # "f":Ljava/io/File;
    :cond_2
    const-string/jumbo v13, "H5PackageParser"

    const-string/jumbo v14, "listFiles==null"

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v8    # "listFiles":[Ljava/io/File;
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    const-string/jumbo v13, "nebulaInstallApps"

    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 481
    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->deleteNebulaInstallFileAndDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .end local v3    # "deletePath":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWifi()Z

    move-result v13

    if-eqz v13, :cond_0

    if-eqz v1, :cond_0

    .line 496
    const-string/jumbo v13, "appVersion"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 497
    .local v12, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v1, v0, v12}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    .end local v12    # "version":Ljava/lang/String;
    .restart local v3    # "deletePath":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 477
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "H5PackageParser"

    invoke-static {v13, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 485
    .end local v3    # "deletePath":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "file":Ljava/io/File;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 486
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v9

    .line 487
    .local v9, "manager":Ldq;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 488
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v13, "H5PackageParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " is not nebulaapp send verify failed broadcast to app center."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string/jumbo v13, "tarVerifyFail"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string/jumbo v13, "appId"

    move-object/from16 v0, p0

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string/jumbo v13, "localPath"

    move-object/from16 v0, p1

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    invoke-virtual {v9, v7}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_3
.end method

.method private static notifyVerifyFailed(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "offlineHost"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 425
    const-string/jumbo v2, "h5_schedule_delete_fail_app"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyFail(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    const-string/jumbo v2, "H5PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyVerifyFailed appId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 432
    .local v0, "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    if-eqz v0, :cond_0

    .line 433
    new-instance v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser$1;

    invoke-direct {v2, p2, p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser$1;-><init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public static parsePackage(Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .locals 82
    .param p0, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/alipay/mobile/nebulacore/api/H5ParseResult;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "resPkg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-nez p0, :cond_1

    .line 94
    const-string/jumbo v75, "H5PackageParser"

    const-string/jumbo v76, "invalid params "

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/16 v75, 0x1

    const-string/jumbo v76, "INVALID_PARAM"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v75

    .line 419
    :cond_0
    :goto_0
    return-object v75

    .line 97
    :cond_1
    new-instance v66, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v66 .. v66}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 98
    .local v66, "testData":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v70

    .line 99
    .local v70, "time":J
    const-string/jumbo v75, "appId"

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "appId":Ljava/lang/String;
    const-string/jumbo v75, "offlineHost"

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 101
    .local v42, "offlineHost":Ljava/lang/String;
    const-string/jumbo v75, "onlineHost"

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 103
    .local v45, "onlineHost":Ljava/lang/String;
    const-string/jumbo v75, "appType"

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v75

    const/16 v76, 0x2

    move/from16 v0, v75

    move/from16 v1, v76

    if-ne v0, v1, :cond_2

    const/16 v48, 0x1

    .line 104
    .local v48, "pureOnline":Z
    :goto_1
    const-string/jumbo v75, "mapHost"

    const/16 v76, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move/from16 v2, v76

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v31

    .line 105
    .local v31, "mapHost":Z
    const-string/jumbo v75, "appVersion"

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v74

    .line 107
    .local v74, "version":Ljava/lang/String;
    const-string/jumbo v75, "isNebulaApp"

    const/16 v76, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move/from16 v2, v76

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v28

    .line 108
    .local v28, "isNebula":Z
    const-string/jumbo v75, "needForceVerify"

    const/16 v76, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move/from16 v2, v76

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v38

    .line 109
    .local v38, "needForceVerify":Z
    const-string/jumbo v75, "customPublicKey"

    const-string/jumbo v76, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move-object/from16 v2, v76

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 112
    .local v47, "publicKey":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v75

    if-eqz v75, :cond_3

    .line 113
    const/16 v75, 0x1

    const-string/jumbo v76, "appIdIsEmpty"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v75

    goto/16 :goto_0

    .line 103
    .end local v28    # "isNebula":Z
    .end local v31    # "mapHost":Z
    .end local v38    # "needForceVerify":Z
    .end local v47    # "publicKey":Ljava/lang/String;
    .end local v48    # "pureOnline":Z
    .end local v74    # "version":Ljava/lang/String;
    :cond_2
    const/16 v48, 0x0

    goto :goto_1

    .line 116
    .restart local v28    # "isNebula":Z
    .restart local v31    # "mapHost":Z
    .restart local v38    # "needForceVerify":Z
    .restart local v47    # "publicKey":Ljava/lang/String;
    .restart local v48    # "pureOnline":Z
    .restart local v74    # "version":Ljava/lang/String;
    :cond_3
    const-string/jumbo v75, "H5PackageParser"

    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "parse package appId "

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, " mapHost "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, " offlineHost:"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, " onlineHost:"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, " version:"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, " isNebula "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v75

    if-eqz v75, :cond_5

    .line 123
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v75

    const-class v76, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual/range {v76 .. v76}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v76

    invoke-virtual/range {v75 .. v76}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 124
    .local v7, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v7, :cond_5

    .line 125
    move-object/from16 v0, v74

    invoke-interface {v7, v5, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 126
    .local v27, "installedPath":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v75

    if-nez v75, :cond_4

    .line 127
    new-instance v75, Ljava/lang/StringBuilder;

    const-string/jumbo v76, "file://"

    invoke-direct/range {v75 .. v76}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v75

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 128
    const-string/jumbo v75, "/"

    move-object/from16 v0, v42

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v75

    if-nez v75, :cond_4

    .line 129
    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v75

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    const-string/jumbo v76, "/"

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 132
    :cond_4
    const-string/jumbo v75, "H5PackageParser"

    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "installPath : "

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, " offlineHost : "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v7    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v27    # "installedPath":Ljava/lang/String;
    :cond_5
    sget-boolean v75, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v75, :cond_6

    .line 138
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v75

    const-class v76, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual/range {v76 .. v76}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v76

    invoke-virtual/range {v75 .. v76}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 139
    .restart local v7    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v7, :cond_6

    invoke-static/range {v74 .. v74}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v75

    if-nez v75, :cond_6

    .line 140
    move-object/from16 v0, v74

    invoke-interface {v7, v5, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getPackageSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v58

    .line 141
    .local v58, "size":J
    const-string/jumbo v75, "H5PackageParser"

    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "inject data size is "

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, ", version is "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v75, "size"

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v76

    move-object/from16 v0, v66

    move-object/from16 v1, v75

    move-object/from16 v2, v76

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v75, "version"

    move-object/from16 v0, v66

    move-object/from16 v1, v75

    move-object/from16 v2, v74

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v7    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v58    # "size":J
    :cond_6
    invoke-static/range {v42 .. v42}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v44

    .line 150
    .local v44, "offlineUri":Landroid/net/Uri;
    if-eqz v44, :cond_7

    invoke-virtual/range {v44 .. v44}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v75

    invoke-static/range {v75 .. v75}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v75

    if-eqz v75, :cond_8

    .line 151
    :cond_7
    const/16 v75, 0x1

    const-string/jumbo v76, "INVALID_PARAM"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v75

    goto/16 :goto_0

    .line 155
    :cond_8
    invoke-virtual/range {v44 .. v44}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v43

    .line 156
    .local v43, "offlinePath":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v75

    if-nez v75, :cond_9

    .line 157
    const-string/jumbo v75, "H5PackageParser"

    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "offlinePath "

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, " not exists!"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/16 v75, 0x2

    const-string/jumbo v76, "OFFLINE_PATH_NOT_EXIST"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v75

    goto/16 :goto_0

    .line 161
    :cond_9
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v26, "installFile":Ljava/io/File;
    const-string/jumbo v75, "no"

    const-string/jumbo v76, "h5_setLastModified"

    invoke-static/range {v76 .. v76}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    invoke-virtual/range {v75 .. v76}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v75

    if-nez v75, :cond_b

    .line 165
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 166
    .local v40, "newTime":J
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->lastModified()J

    move-result-wide v32

    .line 167
    .local v32, "lastModified":J
    move-object/from16 v0, v26

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    move-result v50

    .line 168
    .local v50, "setResult":Z
    if-nez v50, :cond_a

    .line 169
    const/16 v75, 0x1

    sput-boolean v75, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->sHasSetLastModifiedFail:Z

    .line 171
    :cond_a
    const-string/jumbo v75, "H5PackageParser"

    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "lastModified "

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, " setResult:"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, " newTime:"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, " cost:"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v78

    sub-long v78, v78, v40

    move-object/from16 v0, v76

    move-wide/from16 v1, v78

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v32    # "lastModified":J
    .end local v40    # "newTime":J
    .end local v50    # "setResult":Z
    :cond_b
    :goto_2
    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v75

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    const-string/jumbo v76, "/"

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    move-object/from16 v0, v75

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    const-string/jumbo v76, ".tar"

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 180
    .local v62, "tarPath":Ljava/lang/String;
    const-string/jumbo v75, "H5PackageParser"

    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "tarPath "

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static/range {v62 .. v62}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v75

    if-nez v75, :cond_c

    .line 183
    const-string/jumbo v75, "H5PackageParser"

    const-string/jumbo v76, "tar package not exists!"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-static {v5, v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyVerifyFailed(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 185
    const/16 v75, 0x3

    const-string/jumbo v76, "TAR_PATH_NOT_EXIST"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v75

    goto/16 :goto_0

    .line 172
    .end local v62    # "tarPath":Ljava/lang/String;
    :catch_0
    move-exception v68

    .line 173
    .local v68, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v75, "H5PackageParser"

    move-object/from16 v0, v75

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 189
    .end local v68    # "throwable":Ljava/lang/Throwable;
    .restart local v62    # "tarPath":Ljava/lang/String;
    :cond_c
    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v75

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    const-string/jumbo v76, "/CERT.json"

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 191
    .local v11, "certPath":Ljava/lang/String;
    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v75

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    const-string/jumbo v76, "/SIGN.json"

    invoke-virtual/range {v75 .. v76}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    .line 192
    .local v54, "signPath":Ljava/lang/String;
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v75

    if-nez v75, :cond_d

    invoke-static/range {v54 .. v54}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v75

    if-nez v75, :cond_d

    .line 193
    const-string/jumbo v75, "H5PackageParser"

    const-string/jumbo v76, "cert not exists!"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-static {v5, v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyVerifyFailed(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 195
    const/16 v75, 0x4

    const-string/jumbo v76, "CERT_PATH_NOT_EXIST"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v75

    goto/16 :goto_0

    .line 197
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    .line 200
    .local v64, "tarTime":J
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->isNeedVerify()Z

    move-result v75

    if-nez v75, :cond_e

    if-eqz v38, :cond_1c

    .line 202
    :cond_e
    new-instance v39, Ljava/io/File;

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v39, "offlineFile":Ljava/io/File;
    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 204
    .local v13, "childrenFiles":[Ljava/io/File;
    if-eqz v13, :cond_f

    array-length v0, v13

    move/from16 v75, v0

    if-nez v75, :cond_10

    .line 205
    :cond_f
    const-string/jumbo v75, "H5PackageParser"

    const-string/jumbo v76, "childrenFiles length == 0"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/16 v75, 0x2

    const-string/jumbo v76, "OFFLINE_PATH_NOT_EXIST"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v75

    goto/16 :goto_0

    .line 209
    :cond_10
    invoke-static/range {v54 .. v54}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v73

    .line 211
    .local v73, "useNewSignKey":Z
    move/from16 v55, v73

    .local v55, "signPathExist":Z
    if-eqz v73, :cond_11

    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v75

    if-eqz v75, :cond_11

    sget-object v75, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    .line 212
    invoke-static/range {v75 .. v75}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v75

    if-nez v75, :cond_12

    .line 213
    :cond_11
    const-string/jumbo v75, "H5PackageParser"

    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "signPath is exist : "

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, ", publicKey : "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, ", H5PackageParser.TAR_PUBLIC_KEY : "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    sget-object v77, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/16 v73, 0x0

    .line 217
    :cond_12
    const-string/jumbo v75, "H5PackageParser"

    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "useNewSignKey : "

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    if-eqz v73, :cond_14

    .line 222
    invoke-static/range {v54 .. v54}, Lcom/alipay/mobile/nebula/util/H5Utils;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 223
    .local v56, "signText":Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v29

    .line 228
    .end local v56    # "signText":Ljava/lang/String;
    .local v29, "joCert":Lcom/alibaba/fastjson/JSONObject;
    :goto_3
    if-eqz v29, :cond_13

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v75

    if-eqz v75, :cond_15

    .line 229
    :cond_13
    const-string/jumbo v75, "H5PackageParser"

    const-string/jumbo v76, "joCert is empty"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-static {v5, v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyVerifyFailed(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 231
    const/16 v75, 0x5

    const-string/jumbo v76, "TAR_SIGNATURE_IS_EMPTY"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v75

    goto/16 :goto_0

    .line 225
    .end local v29    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    :cond_14
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 226
    .local v67, "text":Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v29

    .restart local v29    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_3

    .line 235
    .end local v67    # "text":Ljava/lang/String;
    :cond_15
    :try_start_1
    array-length v0, v13

    move/from16 v76, v0

    const/16 v75, 0x0

    :goto_4
    move/from16 v0, v75

    move/from16 v1, v76

    if-ge v0, v1, :cond_1b

    aget-object v12, v13, v75

    .line 236
    .local v12, "child":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v51

    .line 237
    .local v51, "signKey":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    .line 238
    .local v52, "signKeyTime":J
    invoke-static/range {v51 .. v51}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v77

    if-nez v77, :cond_1a

    const-string/jumbo v77, "CERT.json"

    move-object/from16 v0, v51

    move-object/from16 v1, v77

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v77

    if-nez v77, :cond_1a

    const-string/jumbo v77, "SIGN.json"

    .line 239
    move-object/from16 v0, v51

    move-object/from16 v1, v77

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v77

    if-nez v77, :cond_1a

    const-string/jumbo v77, "ios"

    .line 240
    move-object/from16 v0, v51

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v77

    if-nez v77, :cond_1a

    const-string/jumbo v77, "android.tiny.tar"

    .line 242
    move-object/from16 v0, v51

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v77

    if-nez v77, :cond_1a

    .line 244
    move-object/from16 v0, v29

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v57

    .line 246
    .local v57, "signValue":Ljava/lang/String;
    if-eqz v73, :cond_17

    .line 248
    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v77

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    const-string/jumbo v78, "/"

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    const-string/jumbo v78, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAl96KRuzoQDgt3q3478MYKwTGDV0Fz5w+sKOfz+Ar+/XkwqLjVW7bAk+/nOD9Z4mnwM+BsgU/G5KGQ9WMjcXAow/eRBSf93iqcBX5+DdlkbneNyQP7Mvcy8EwOAa3y7AetEpTeYrv5cppFUjq4TVu9w+DwV1qegfvJEAA+6gFJEcJPxD9fxJggCF02tL3k9/WDnaNYVN3dCq8fN4jWZLr6KWlAX5UW5ZVtXP9IWObFnvRNjgXQhW/LzJLdbcDlQ5U6ImFyIFf//vn3vEhzlpU6EkxdGr+FWwsRiMTY9aZ1fJiFlgAZQpInV6cbDM8LgNGPtDsYUibIi3rVFtYtHAxQwIDAQAB"

    move-object/from16 v0, v77

    move-object/from16 v1, v78

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v49

    .line 265
    .local v49, "result":Z
    :goto_5
    const-string/jumbo v77, "H5PackageParser"

    new-instance v78, Ljava/lang/StringBuilder;

    const-string/jumbo v79, "signKey "

    invoke-direct/range {v78 .. v79}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v78

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string/jumbo v79, " signValue "

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string/jumbo v79, " result:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string/jumbo v79, " cost:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v80

    sub-long v80, v80, v52

    move-object/from16 v0, v78

    move-wide/from16 v1, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    .line 265
    invoke-static/range {v77 .. v78}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-nez v49, :cond_1a

    .line 269
    sget-boolean v75, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v75, :cond_16

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v76

    sub-long v60, v76, v64

    .line 271
    .local v60, "tar":J
    const-string/jumbo v75, "verifyResult"

    const-string/jumbo v76, "fail"

    move-object/from16 v0, v66

    move-object/from16 v1, v75

    move-object/from16 v2, v76

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v75, "verifyDuration"

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v76

    move-object/from16 v0, v66

    move-object/from16 v1, v75

    move-object/from16 v2, v76

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v60    # "tar":J
    :cond_16
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-static {v5, v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyVerifyFailed(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 275
    const/16 v75, 0x6

    const-string/jumbo v76, "VERIFY_FAIL"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v75

    goto/16 :goto_0

    .line 251
    .end local v49    # "result":Z
    :cond_17
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v77

    if-nez v77, :cond_18

    .line 253
    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v77

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    const-string/jumbo v78, "/"

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v47

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v49

    .restart local v49    # "result":Z
    goto/16 :goto_5

    .line 255
    .end local v49    # "result":Z
    :cond_18
    sget-object v77, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-static/range {v77 .. v77}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v77

    if-nez v77, :cond_19

    .line 257
    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v77

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    const-string/jumbo v78, "/"

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    sget-object v78, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    move-object/from16 v0, v77

    move-object/from16 v1, v78

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v49

    .restart local v49    # "result":Z
    goto/16 :goto_5

    .line 261
    .end local v49    # "result":Z
    :cond_19
    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v77

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    const-string/jumbo v78, "/"

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    const-string/jumbo v78, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2y61svV7Q0gmvxprTt6YX76rps8R+q+C+Qtkkk2+njIABsf10sHnl/5aQBh2s+kdo6YGlJrnKdxVso2JRzy+QbRBUgTdJmKfm5uGPdcqYuO0ur4b/QCyHTMoKJjBT8iI3hYIGhn0hACDao4xIsgzJ39grRKUa6120WbInlOLWSQIDAQAB"

    move-object/from16 v0, v77

    move-object/from16 v1, v78

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v49

    .restart local v49    # "result":Z
    goto/16 :goto_5

    .line 235
    .end local v49    # "result":Z
    .end local v57    # "signValue":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v75, v75, 0x1

    goto/16 :goto_4

    .line 279
    .end local v12    # "child":Ljava/io/File;
    .end local v51    # "signKey":Ljava/lang/String;
    .end local v52    # "signKeyTime":J
    :catch_1
    move-exception v16

    .line 280
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v75, "H5PackageParser"

    move-object/from16 v0, v75

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v76

    sub-long v60, v76, v64

    .line 284
    .restart local v60    # "tar":J
    const-string/jumbo v75, "H5PackageParser"

    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "verify tar signature succeed elapse:"

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, " appId:"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-boolean v75, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v75, :cond_1c

    .line 286
    const-string/jumbo v75, "verifyResult"

    const-string/jumbo v76, "success"

    move-object/from16 v0, v66

    move-object/from16 v1, v75

    move-object/from16 v2, v76

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string/jumbo v75, "verifyDuration"

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v76

    move-object/from16 v0, v66

    move-object/from16 v1, v75

    move-object/from16 v2, v76

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v13    # "childrenFiles":[Ljava/io/File;
    .end local v29    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v39    # "offlineFile":Ljava/io/File;
    .end local v55    # "signPathExist":Z
    .end local v60    # "tar":J
    .end local v73    # "useNewSignKey":Z
    :cond_1c
    if-nez p1, :cond_1d

    .line 293
    const-string/jumbo v75, "H5PackageParser"

    const-string/jumbo v76, "invalid resPkg"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/16 v75, 0x8

    const-string/jumbo v76, "INVALID_PARAM"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v75

    goto/16 :goto_0

    .line 298
    :cond_1d
    const/16 v24, 0x0

    .line 300
    .local v24, "hasSetTinyFile":Z
    const/16 v23, 0x0

    .line 301
    .local v23, "hasPermissionFile":Z
    if-eqz v28, :cond_1f

    .line 302
    const-class v75, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 303
    invoke-virtual/range {v75 .. v75}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v75

    invoke-static/range {v75 .. v75}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 304
    .local v22, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v22, :cond_1f

    .line 305
    move-object/from16 v0, v22

    move-object/from16 v1, v74

    invoke-interface {v0, v5, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v6

    .line 306
    .local v6, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v6, :cond_1f

    .line 307
    iget-object v0, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 308
    .local v20, "extent":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v30

    .line 309
    .local v30, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v75, "api_permission"

    .line 310
    move-object/from16 v0, v30

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 311
    .local v46, "permission":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 312
    .local v4, "api":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v75

    if-nez v75, :cond_1f

    .line 314
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v75

    if-eqz v75, :cond_1e

    .line 315
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v75

    move-object/from16 v0, v75

    invoke-interface {v0, v5, v4}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->putJson(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 318
    :cond_1e
    const/16 v24, 0x1

    .line 319
    const/16 v23, 0x1

    .line 326
    .end local v4    # "api":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v20    # "extent":Ljava/lang/String;
    .end local v22    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v30    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v46    # "permission":Ljava/lang/String;
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 327
    .local v34, "mapBegin":J
    if-eqz v31, :cond_21

    move-object/from16 v25, v45

    .line 328
    .local v25, "host":Ljava/lang/String;
    :goto_6
    const/16 v69, 0x0

    .line 329
    .local v69, "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    const/16 v75, 0x800

    invoke-static/range {v75 .. v75}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v10

    .line 331
    .local v10, "buffer":[B
    :try_start_2
    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 332
    .local v21, "fis":Ljava/io/FileInputStream;
    new-instance v9, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 333
    .local v9, "bis":Ljava/io/BufferedInputStream;
    new-instance v72, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;

    move-object/from16 v0, v72

    invoke-direct {v0, v9}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 336
    .end local v69    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    .local v72, "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :cond_20
    :goto_7
    :try_start_3
    invoke-virtual/range {v72 .. v72}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->getNextEntry()Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    move-result-object v63

    .local v63, "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    if-eqz v63, :cond_29

    .line 337
    invoke-virtual/range {v63 .. v63}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v17

    .line 339
    .local v17, "entryName":Ljava/lang/String;
    invoke-virtual/range {v63 .. v63}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->isDirectory()Z

    move-result v75

    if-nez v75, :cond_20

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v75

    if-nez v75, :cond_20

    const-string/jumbo v75, "hpmfile.json"

    .line 340
    move-object/from16 v0, v17

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v75

    if-nez v75, :cond_20

    .line 345
    new-instance v8, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v8}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    .line 346
    .local v8, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_8
    move-object/from16 v0, v72

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->read([B)I

    move-result v14

    .local v14, "count":I
    const/16 v75, -0x1

    move/from16 v0, v75

    if-eq v14, v0, :cond_22

    .line 347
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v8, v10, v0, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 396
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "count":I
    .end local v17    # "entryName":Ljava/lang/String;
    .end local v63    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    :catch_2
    move-exception v16

    move-object/from16 v69, v72

    .line 397
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v21    # "fis":Ljava/io/FileInputStream;
    .end local v72    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    .local v16, "e":Ljava/lang/Throwable;
    .restart local v69    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :goto_9
    :try_start_4
    const-string/jumbo v75, "H5PackageParser"

    const-string/jumbo v76, "parse package exception"

    move-object/from16 v0, v75

    move-object/from16 v1, v76

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-static {v5, v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyVerifyFailed(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 399
    const/16 v75, 0x7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v75

    .line 401
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 402
    invoke-static/range {v69 .. v69}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 403
    sget-boolean v76, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v76, :cond_0

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v76

    sub-long v36, v76, v34

    .line 405
    .local v36, "mapCost":J
    invoke-static/range {v74 .. v74}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v76

    if-nez v76, :cond_0

    .line 406
    const-string/jumbo v76, "mapDuration"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    move-object/from16 v0, v66

    move-object/from16 v1, v76

    move-object/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "package|"

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .end local v10    # "buffer":[B
    .end local v16    # "e":Ljava/lang/Throwable;
    .end local v25    # "host":Ljava/lang/String;
    .end local v36    # "mapCost":J
    .end local v69    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :cond_21
    move-object/from16 v25, v42

    .line 327
    goto/16 :goto_6

    .line 349
    .restart local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "buffer":[B
    .restart local v14    # "count":I
    .restart local v17    # "entryName":Ljava/lang/String;
    .restart local v21    # "fis":Ljava/io/FileInputStream;
    .restart local v25    # "host":Ljava/lang/String;
    .restart local v63    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .restart local v72    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :cond_22
    :try_start_5
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    .line 351
    .local v15, "data":[B
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 352
    if-eqz v15, :cond_20

    .line 357
    const-string/jumbo v75, "H5PackageParser"

    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "entryName "

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v75, "_animation"

    move-object/from16 v0, v17

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v75

    if-eqz v75, :cond_26

    .line 360
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :goto_a
    const-string/jumbo v75, "api_permission"

    move-object/from16 v0, v17

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v75

    if-eqz v75, :cond_23

    .line 371
    if-nez v24, :cond_23

    .line 372
    const/16 v23, 0x1

    .line 373
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v75

    if-eqz v75, :cond_23

    .line 374
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v75

    move-object/from16 v0, v75

    invoke-interface {v0, v5, v15}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->put(Ljava/lang/String;[B)V

    .line 380
    :cond_23
    const-string/jumbo v75, "appConfig.json"

    move-object/from16 v0, v75

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v75

    if-eqz v75, :cond_24

    .line 381
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v75

    move-object/from16 v0, v75

    invoke-virtual {v0, v5, v15}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->put(Ljava/lang/String;[B)V

    .line 382
    const/16 v75, 0x1

    sput-boolean v75, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    .line 385
    :cond_24
    const-string/jumbo v75, "tabBar.json"

    move-object/from16 v0, v75

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v75

    if-eqz v75, :cond_20

    .line 386
    invoke-static {v5, v15}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->setTabData(Ljava/lang/String;[B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7

    .line 401
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "count":I
    .end local v15    # "data":[B
    .end local v17    # "entryName":Ljava/lang/String;
    .end local v63    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    :catchall_0
    move-exception v75

    move-object/from16 v69, v72

    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v21    # "fis":Ljava/io/FileInputStream;
    .end local v72    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    .restart local v69    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :goto_b
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 402
    invoke-static/range {v69 .. v69}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 403
    sget-boolean v76, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v76, :cond_25

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v76

    sub-long v36, v76, v34

    .line 405
    .restart local v36    # "mapCost":J
    invoke-static/range {v74 .. v74}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v76

    if-nez v76, :cond_25

    .line 406
    const-string/jumbo v76, "mapDuration"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    move-object/from16 v0, v66

    move-object/from16 v1, v76

    move-object/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "package|"

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    .end local v36    # "mapCost":J
    :cond_25
    throw v75

    .line 361
    .end local v69    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    .restart local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    .restart local v14    # "count":I
    .restart local v15    # "data":[B
    .restart local v17    # "entryName":Ljava/lang/String;
    .restart local v21    # "fis":Ljava/io/FileInputStream;
    .restart local v63    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .restart local v72    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :cond_26
    if-eqz v48, :cond_28

    .line 362
    :try_start_6
    const-string/jumbo v75, "yes"

    const-string/jumbo v76, "h5_parse_http"

    invoke-static/range {v76 .. v76}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    invoke-virtual/range {v75 .. v76}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v75

    if-eqz v75, :cond_27

    .line 363
    new-instance v75, Ljava/lang/StringBuilder;

    const-string/jumbo v76, "http://"

    invoke-direct/range {v75 .. v76}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v75

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    move-object/from16 v0, p1

    move-object/from16 v1, v75

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_27
    new-instance v75, Ljava/lang/StringBuilder;

    const-string/jumbo v76, "https://"

    invoke-direct/range {v75 .. v76}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v75

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    move-object/from16 v0, p1

    move-object/from16 v1, v75

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 367
    :cond_28
    new-instance v75, Ljava/lang/StringBuilder;

    invoke-direct/range {v75 .. v75}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v75

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    move-object/from16 v0, v75

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    move-object/from16 v0, p1

    move-object/from16 v1, v75

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 391
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "count":I
    .end local v15    # "data":[B
    .end local v17    # "entryName":Ljava/lang/String;
    :cond_29
    if-nez v23, :cond_2a

    .line 392
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v75

    if-eqz v75, :cond_2a

    .line 393
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v75

    move-object/from16 v0, v75

    invoke-interface {v0, v5}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->clear(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 401
    :cond_2a
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 402
    invoke-static/range {v72 .. v72}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 403
    sget-boolean v75, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v75, :cond_2b

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v76

    sub-long v36, v76, v34

    .line 405
    .restart local v36    # "mapCost":J
    invoke-static/range {v74 .. v74}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v75

    if-nez v75, :cond_2b

    .line 406
    const-string/jumbo v75, "mapDuration"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v76

    move-object/from16 v0, v66

    move-object/from16 v1, v75

    move-object/from16 v2, v76

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v75, Ljava/lang/StringBuilder;

    const-string/jumbo v76, "package|"

    invoke-direct/range {v75 .. v76}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    move-object/from16 v0, v75

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    .end local v36    # "mapCost":J
    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v76

    sub-long v18, v76, v70

    .line 414
    .local v18, "elapse":J
    const-string/jumbo v75, "H5PackageParser"

    new-instance v76, Ljava/lang/StringBuilder;

    const-string/jumbo v77, "parse package elapse "

    invoke-direct/range {v76 .. v77}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string/jumbo v77, " appId:"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string/jumbo v75, "prepare_app"

    const-string/jumbo v76, "parser_app"

    move-object/from16 v0, v75

    move-object/from16 v1, v76

    move-wide/from16 v2, v70

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 419
    const/16 v75, 0x0

    const-string/jumbo v76, "SUCCESS"

    invoke-static/range {v75 .. v76}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getResult(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v75

    goto/16 :goto_0

    .line 401
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v18    # "elapse":J
    .end local v21    # "fis":Ljava/io/FileInputStream;
    .end local v63    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .end local v72    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    .restart local v69    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :catchall_1
    move-exception v75

    goto/16 :goto_b

    .line 396
    :catch_3
    move-exception v16

    goto/16 :goto_9
.end method
