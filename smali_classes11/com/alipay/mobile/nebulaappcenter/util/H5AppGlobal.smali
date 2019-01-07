.class public Lcom/alipay/mobile/nebulaappcenter/util/H5AppGlobal;
.super Ljava/lang/Object;
.source "H5AppGlobal.java"


# static fields
.field public static final INSTALL_APP_PATH:Ljava/lang/String; = "/nebulaInstallApps/"

.field public static final OLD_APP_INSTALL_PATH:Ljava/lang/String; = "/nebulaApps/"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "H5AppGlobal"

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/util/H5AppGlobal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFromAssets(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 48
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 49
    .local v2, "inputReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 51
    .local v0, "bufReader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v2    # "inputReader":Ljava/io/InputStreamReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/alipay/mobile/nebulaappcenter/util/H5AppGlobal;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    const-string/jumbo v5, ""

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v5

    .line 55
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v2    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method public static getInstallPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 28
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 32
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappcenter/util/H5AppGlobal;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasInstallFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "installPath"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    .line 43
    :goto_0
    return v2

    .line 40
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;-><init>()V

    .line 41
    .local v1, "h5App":Lcom/alipay/mobile/nebulaappcenter/app/H5App;
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getDao()Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 42
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 43
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->isInstalled()Z

    move-result v2

    goto :goto_0
.end method
