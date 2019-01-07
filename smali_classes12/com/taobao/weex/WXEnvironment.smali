.class public Lcom/taobao/weex/WXEnvironment;
.super Ljava/lang/Object;
.source "WXEnvironment.java"


# static fields
.field public static final CORE_JSS_SO_NAME:Ljava/lang/String; = "weexjss"

.field private static CORE_JSS_SO_PATH:Ljava/lang/String; = null

.field public static final CORE_SO_NAME:Ljava/lang/String; = "weexcore"

.field public static final DEV_Id:Ljava/lang/String;

.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static JS_LIB_SDK_VERSION:Ljava/lang/String; = null

.field public static volatile JsFrameworkInit:Z = false

.field public static final OS:Ljava/lang/String; = "android"

.field public static final SETTING_EXCLUDE_X86SUPPORT:Ljava/lang/String; = "env_exclude_x86"

.field public static SETTING_FORCE_VERTICAL_SCREEN:Z = false

.field public static final SYS_MODEL:Ljava/lang/String;

.field public static SYS_VERSION:Ljava/lang/String; = null

.field public static final WEEX_CURRENT_KEY:Ljava/lang/String; = "wx_current_url"

.field public static WXSDK_VERSION:Ljava/lang/String; = null

.field private static isApkDebug:Z = false

.field public static isPerf:Z = false

.field private static openDebugLog:Z = false

.field private static options:Ljava/util/Map; = null
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

.field public static sApplication:Landroid/app/Application; = null

.field public static sComponentsAndModulesReadyTime:J = 0x0L

.field public static sDebugMode:Z = false

.field public static sDebugNetworkEventReporterEnable:Z = false

.field public static sDebugServerConnectable:Z = false

.field public static sDebugWsUrl:Ljava/lang/String; = null

.field public static sDefaultWidth:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static sDynamicMode:Z = false

.field public static sDynamicUrl:Ljava/lang/String; = null

.field public static final sForceEnableDevTool:Z = true

.field private static sGlobalFontFamily:Ljava/lang/String;

.field public static sJSLibInitTime:J

.field public static sLogLevel:Lcom/taobao/weex/utils/LogLevel;

.field public static sRemoteDebugMode:Z

.field public static sRemoteDebugProxyUrl:Ljava/lang/String;

.field public static sSDKInitExecuteTime:J

.field public static sSDKInitInvokeTime:J

.field public static sSDKInitStart:J

.field public static sSDKInitTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 53
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 55
    sput-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "9.0.0"

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    .line 59
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_MODEL:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "0.24.4"

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "0.18.16.150-fix-lan"

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getDevId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->DEV_Id:Ljava/lang/String;

    .line 72
    const/16 v0, 0x2ee

    sput v0, Lcom/taobao/weex/WXEnvironment;->sDefaultWidth:I

    .line 73
    sput-boolean v3, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    .line 77
    sput-boolean v3, Lcom/taobao/weex/WXEnvironment;->SETTING_FORCE_VERTICAL_SCREEN:Z

    .line 81
    sput-boolean v3, Lcom/taobao/weex/WXEnvironment;->sDebugMode:Z

    .line 83
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->sDebugWsUrl:Ljava/lang/String;

    .line 84
    sput-boolean v3, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    .line 85
    sput-boolean v3, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    .line 86
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugProxyUrl:Ljava/lang/String;

    .line 87
    sput-boolean v3, Lcom/taobao/weex/WXEnvironment;->sDebugNetworkEventReporterEnable:Z

    .line 88
    sput-wide v4, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    .line 90
    sput-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    .line 91
    sput-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    .line 92
    sput-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitExecuteTime:J

    .line 94
    sput-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    .line 99
    sput-wide v4, Lcom/taobao/weex/WXEnvironment;->sComponentsAndModulesReadyTime:J

    .line 101
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lcom/taobao/weex/utils/LogLevel;

    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    .line 103
    sput-boolean v3, Lcom/taobao/weex/WXEnvironment;->isPerf:Z

    .line 105
    sput-boolean v3, Lcom/taobao/weex/WXEnvironment;->openDebugLog:Z

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    sput-object v0, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    const-string/jumbo v1, "os"

    const-string/jumbo v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    const-string/jumbo v1, "osName"

    const-string/jumbo v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sput-boolean v3, Lcom/taobao/weex/WXEnvironment;->sDynamicMode:Z

    .line 124
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->sDynamicUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public static extractSo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 362
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v2, "sourceFile":Ljava/io/File;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "cacheDir":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXFileUtils;->extractSo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    const/4 v3, 0x1

    .line 373
    :cond_0
    :goto_0
    return v3

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static findLibJssRealPath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 377
    const-string/jumbo v5, "weexjss"

    invoke-static {v5}, Lcom/taobao/weex/WXEnvironment;->findSoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "soPath":Ljava/lang/String;
    const-string/jumbo v1, "libweexjss.so"

    .line 379
    .local v1, "realName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 380
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "cacheDir":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 382
    const-string/jumbo v3, ""

    .line 397
    .end local v0    # "cacheDir":Ljava/lang/String;
    .end local v3    # "soPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 384
    .restart local v0    # "cacheDir":Ljava/lang/String;
    .restart local v3    # "soPath":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "/cache"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    .line 385
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "/cache"

    const-string/jumbo v7, "/lib"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 388
    .end local v0    # "cacheDir":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v2, "soFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 393
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->extractSo()Z

    move-result v4

    .line 394
    .local v4, "success":Z
    if-eqz v4, :cond_3

    .line 395
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCacheDir()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 397
    :cond_3
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static findSoPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "libName"    # Ljava/lang/String;

    .prologue
    .line 349
    const-class v1, Lcom/taobao/weex/WXEnvironment;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    check-cast v1, Ldalvik/system/PathClassLoader;

    check-cast v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {v1, p0}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "libPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s Path is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 351
    return-object v0
.end method

.method private static getAppCacheFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    const-string/jumbo v0, ""

    .line 180
    .local v0, "cache":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WXEnvironment getAppCacheFile Exception: "

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getAppVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 160
    const-string/jumbo v3, ""

    .line 164
    .local v3, "versionName":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 165
    .local v2, "manager":Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 166
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WXEnvironment getAppVersionName Exception: "

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getCacheDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 356
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 357
    :cond_0
    const/4 v1, 0x0

    .line 358
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getConfig()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v0, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "os"

    const-string/jumbo v3, "android"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v2, "appVersion"

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v2, "cacheDir"

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppCacheFile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v2, "devId"

    sget-object v3, Lcom/taobao/weex/WXEnvironment;->DEV_Id:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v2, "sysVersion"

    sget-object v3, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v2, "sysModel"

    sget-object v3, Lcom/taobao/weex/WXEnvironment;->SYS_MODEL:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v2, "weexVersion"

    sget-object v3, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v2, "logLevel"

    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v3}, Lcom/taobao/weex/utils/LogLevel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    const-string/jumbo v3, "debugMode"

    const-string/jumbo v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    const-string/jumbo v3, "scale"

    sget-object v4, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 150
    const-string/jumbo v2, "appName"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-eqz v2, :cond_1

    .line 151
    const-string/jumbo v2, "appName"

    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "WXEnvironment scale Exception: "

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getCustomOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    return-object v0
.end method

.method private static getDevId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 267
    :goto_0
    return-object v0

    .line 266
    :cond_0
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    const-string/jumbo v1, "phone"

    .line 267
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    if-nez p0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    .line 284
    :cond_0
    const/4 v0, 0x0

    .line 286
    .local v0, "cachePath":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 288
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    if-nez p0, :cond_0

    .line 300
    const-string/jumbo v1, ""

    .line 312
    :goto_0
    return-object v1

    .line 302
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 304
    .local v0, "filesDir":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .local v1, "path":Ljava/lang/String;
    goto :goto_0

    .line 307
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 308
    .restart local v1    # "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getGlobalFontFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sGlobalFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public static getLibJssRealPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->findLibJssRealPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "findLibJssRealPath "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 406
    :cond_0
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static isApkDebugable()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    sget-object v4, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-nez v4, :cond_1

    .line 258
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 241
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    sget-boolean v4, Lcom/taobao/weex/WXEnvironment;->isPerf:Z

    if-nez v4, :cond_0

    .line 245
    sget-boolean v4, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    if-eqz v4, :cond_0

    .line 249
    :try_start_0
    sget-object v4, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 250
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    move v2, v3

    .line 251
    :cond_2
    sput-boolean v2, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 258
    goto :goto_0
.end method

.method public static isCPUSupport()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 226
    const-string/jumbo v5, "true"

    sget-object v6, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    const-string/jumbo v7, "env_exclude_x86"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 227
    .local v0, "excludeX86":Z
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->isX86()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    move v2, v3

    .line 228
    .local v2, "isX86AndExcluded":Z
    :goto_0
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->isCPUSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_2

    move v1, v3

    .line 229
    .local v1, "isCPUSupport":Z
    :goto_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "WXEnvironment.sSupport:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "isX86AndExclueded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 233
    :cond_0
    return v1

    .end local v1    # "isCPUSupport":Z
    .end local v2    # "isX86AndExcluded":Z
    :cond_1
    move v2, v4

    .line 227
    goto :goto_0

    .restart local v2    # "isX86AndExcluded":Z
    :cond_2
    move v1, v4

    .line 228
    goto :goto_1
.end method

.method public static isHardwareSupport()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isTableDevice:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isTabletDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isCPUSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpenDebugLog()Z
    .locals 1

    .prologue
    .line 334
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->openDebugLog:Z

    return v0
.end method

.method public static isPerf()Z
    .locals 1

    .prologue
    .line 262
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->isPerf:Z

    return v0
.end method

.method public static isSupport()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->isInitialized()Z

    move-result v0

    .line 202
    .local v0, "isInitialized":Z
    if-nez v0, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WXSDKEngine.isInitialized():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 205
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isHardwareSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setApkDebugable(Z)V
    .locals 1
    .param p0, "debugable"    # Z

    .prologue
    .line 342
    .line 343
    sput-boolean p0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    if-nez p0, :cond_0

    .line 344
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->openDebugLog:Z

    .line 346
    :cond_0
    return-void
.end method

.method public static setGlobalFontFamily(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 4
    .param p0, "fontFamilyName"    # Ljava/lang/String;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 320
    const-string/jumbo v1, "GlobalFontFamily"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Set global font family: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sput-object p0, Lcom/taobao/weex/WXEnvironment;->sGlobalFontFamily:Ljava/lang/String;

    .line 322
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    if-nez p1, :cond_1

    .line 324
    invoke-static {p0}, Lcom/taobao/weex/utils/TypefaceUtil;->removeFontDO(Ljava/lang/String;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    new-instance v0, Lcom/taobao/weex/utils/FontDO;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/utils/FontDO;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 327
    .local v0, "nativeFontDO":Lcom/taobao/weex/utils/FontDO;
    invoke-static {v0}, Lcom/taobao/weex/utils/TypefaceUtil;->putFontDO(Lcom/taobao/weex/utils/FontDO;)V

    .line 328
    const-string/jumbo v1, "TypefaceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Add new font: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setOpenDebugLog(Z)V
    .locals 0
    .param p0, "openDebugLog"    # Z

    .prologue
    .line 338
    sput-boolean p0, Lcom/taobao/weex/WXEnvironment;->openDebugLog:Z

    .line 339
    return-void
.end method


# virtual methods
.method public initMetrics()V
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 278
    :cond_0
    return-void
.end method
