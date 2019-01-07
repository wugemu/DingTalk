.class public Lhhy;
.super Ljava/lang/Object;
.source "HpmAccessor.java"

# interfaces
.implements Lhif;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhhy$b;,
        Lhhy$a;
    }
.end annotation


# static fields
.field private static volatile i:Lhhy;


# instance fields
.field a:Ljava/lang/String;

.field public b:Lhib;

.field public c:Lhia;

.field public d:Ljava/util/Map;
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

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhic;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Map;
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

.field g:Lhhy$a;

.field public h:Ljava/util/concurrent/Executor;

.field private j:Landroid/content/Context;

.field private k:Lhid;

.field private l:Lhie;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string/jumbo v1, "HpmAccessor"

    iput-object v1, p0, Lhhy;->a:Ljava/lang/String;

    .line 119
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lhhy;->d:Ljava/util/Map;

    .line 120
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lhhy;->m:Ljava/util/Map;

    .line 123
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v1, p0, Lhhy;->n:Ljava/util/Set;

    .line 128
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lhhy;->e:Ljava/util/Map;

    .line 130
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lhhy;->f:Ljava/util/Map;

    .line 183
    new-instance v1, Lhhy$a;

    invoke-direct {v1, p0}, Lhhy$a;-><init>(Lhhy;)V

    iput-object v1, p0, Lhhy;->g:Lhhy$a;

    .line 185
    new-instance v1, Lhhy$1;

    invoke-direct {v1, p0}, Lhhy$1;-><init>(Lhhy;)V

    iput-object v1, p0, Lhhy;->h:Ljava/util/concurrent/Executor;

    .line 198
    iput-object p1, p0, Lhhy;->j:Landroid/content/Context;

    .line 200
    new-instance v1, Lhib;

    iget-object v2, p0, Lhhy;->j:Landroid/content/Context;

    iget-object v3, p0, Lhhy;->h:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, v3}, Lhib;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lhhy;->b:Lhib;

    .line 201
    iget-object v1, p0, Lhhy;->b:Lhib;

    .line 1061
    iput-object p0, v1, Lhib;->a:Lhif;

    .line 203
    new-instance v1, Lhia;

    iget-object v2, p0, Lhhy;->j:Landroid/content/Context;

    iget-object v3, p0, Lhhy;->h:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, v3}, Lhia;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lhhy;->c:Lhia;

    .line 204
    iget-object v1, p0, Lhhy;->c:Lhia;

    .line 1064
    iput-object p0, v1, Lhia;->a:Lhif;

    .line 206
    iget-object v1, p0, Lhhy;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->init(Landroid/content/Context;)V

    .line 207
    const-string/jumbo v1, "HEALTH"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/Health;

    .line 208
    .local v0, "health":Lcom/alibaba/doraemon/health/Health;
    if-eqz v0, :cond_0

    .line 209
    const-string/jumbo v1, "hpm"

    iget-object v2, p0, Lhhy;->g:Lhhy$a;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/health/Health;->addNetworkMonitor(Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;)V

    .line 212
    :cond_0
    new-instance v1, Lhhy$2;

    invoke-direct {v1, p0}, Lhhy$2;-><init>(Lhhy;)V

    .line 1311
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v2

    new-instance v3, Lhhy$3;

    invoke-direct {v3, p0, v1}, Lhhy$3;-><init>(Lhhy;Lhhy$b;)V

    invoke-virtual {v2, v3}, Lcom/alipay/android/h5appmanager/H5AppManager;->setMonitorListener(Lcom/alipay/android/h5appmanager/TrafficMonitorListener;)V

    .line 223
    new-instance v1, Lhid;

    iget-object v2, p0, Lhhy;->j:Landroid/content/Context;

    iget-object v3, p0, Lhhy;->g:Lhhy$a;

    invoke-direct {v1, v2, v3}, Lhid;-><init>(Landroid/content/Context;Lhhy$a;)V

    iput-object v1, p0, Lhhy;->k:Lhid;

    .line 2241
    :try_start_0
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v1

    iget-object v2, p0, Lhhy;->h:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lhhy;->k:Lhid;

    iget-object v4, p0, Lhhy;->j:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/h5appmanager/H5AppManager;->initialize(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2247
    :goto_0
    sget-boolean v1, Lcic;->b:Z

    if-eqz v1, :cond_2

    .line 2248
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v1

    const-string/jumbo v2, "http://hpmweb.stable.alipay.net"

    invoke-virtual {v1, v2}, Lcom/alipay/android/h5appmanager/H5AppManager;->setServiceUrl(Ljava/lang/String;)V

    .line 2249
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v1

    iget-object v2, p0, Lhhy;->j:Landroid/content/Context;

    const-string/jumbo v3, "h5apps"

    .line 2250
    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2249
    invoke-virtual {v1, v2}, Lcom/alipay/android/h5appmanager/H5AppManager;->setLocalStorePath(Ljava/lang/String;)V

    .line 2257
    :goto_1
    const-string/jumbo v2, ""

    .line 2259
    :try_start_1
    iget-object v1, p0, Lhhy;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lhhy;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2260
    :try_start_2
    const-string/jumbo v2, "hpm"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "hpm_init"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "version="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2268
    :goto_2
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;

    const-string/jumbo v4, "com.laiwang.DingTalkEnt"

    invoke-direct {v3, v4, v1}, Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alipay/android/h5appmanager/H5AppManager;->setServiceParams(Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;)V

    .line 2272
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v1, "f_lightapp_enable_migrate_prebuilt_hpm"

    invoke-static {v1, v8}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2273
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v1

    const-string/jumbo v2, "lightapp/hpm/applist.json"

    const-string/jumbo v3, "lightapp/hpm/builtins"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/h5appmanager/H5AppManager;->migratePrebuiltApp(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2276
    :cond_1
    invoke-direct {p0}, Lhhy;->d()V

    .line 2283
    new-instance v1, Lhie;

    invoke-direct {v1}, Lhie;-><init>()V

    iput-object v1, p0, Lhhy;->l:Lhie;

    .line 2284
    invoke-direct {p0}, Lhhy;->c()V

    .line 225
    return-void

    .line 2242
    :catch_0
    move-exception v1

    .line 2243
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2253
    :cond_2
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v1

    const-string/jumbo v2, "https://hpmweb.alipay.com"

    invoke-virtual {v1, v2}, Lcom/alipay/android/h5appmanager/H5AppManager;->setServiceUrl(Ljava/lang/String;)V

    .line 2254
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v1

    iget-object v2, p0, Lhhy;->j:Landroid/content/Context;

    const-string/jumbo v3, "h5apps"

    .line 2255
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2254
    invoke-virtual {v1, v2}, Lcom/alipay/android/h5appmanager/H5AppManager;->setLocalStorePath(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2261
    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    .line 2266
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 2261
    :catch_2
    move-exception v2

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 507
    const/4 v2, 0x0

    .line 509
    .local v2, "wrr":Lcom/uc/webview/export/WebResourceResponse;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 510
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v6

    invoke-virtual {v6, p1, p0}, Lcom/alipay/android/h5appmanager/H5AppManager;->getWebResource(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;

    move-result-object v1

    .line 511
    .local v1, "wr":Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;
    if-eqz v1, :cond_0

    .line 512
    new-instance v3, Lcom/uc/webview/export/WebResourceResponse;

    iget-object v6, v1, Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;->mimeType:Ljava/lang/String;

    iget-object v7, v1, Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;->encoding:Ljava/lang/String;

    iget-object v8, v1, Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;->is:Ljava/io/InputStream;

    invoke-direct {v3, v6, v7, v8}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "wrr":Lcom/uc/webview/export/WebResourceResponse;
    .local v3, "wrr":Lcom/uc/webview/export/WebResourceResponse;
    move-object v2, v3

    .line 521
    .end local v1    # "wr":Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;
    .end local v3    # "wrr":Lcom/uc/webview/export/WebResourceResponse;
    .restart local v2    # "wrr":Lcom/uc/webview/export/WebResourceResponse;
    :cond_0
    :goto_0
    const-string/jumbo v6, "hpm"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "hpm_get_resource"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "url="

    aput-object v10, v9, v5

    aput-object p0, v9, v4

    const-string/jumbo v10, "appId="

    aput-object v10, v9, v11

    const/4 v10, 0x3

    aput-object p1, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "hit="

    aput-object v11, v9, v10

    const/4 v10, 0x5

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    return-object v2

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    const-string/jumbo v6, "hpm"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "hpm_get_resource"

    new-array v9, v11, [Ljava/lang/Object;

    const-string/jumbo v10, "getHpmResource2 exception="

    aput-object v10, v9, v5

    .line 518
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    .line 517
    invoke-static {v6, v7, v8, v9}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v4, v5

    .line 521
    goto :goto_1
.end method

.method public static a()Lhhy;
    .locals 3

    .prologue
    .line 228
    sget-object v0, Lhhy;->i:Lhhy;

    if-nez v0, :cond_1

    .line 229
    const-class v1, Lhhy;

    monitor-enter v1

    .line 230
    :try_start_0
    sget-object v0, Lhhy;->i:Lhhy;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lhhy;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lhhy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhhy;->i:Lhhy;

    .line 233
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_1
    sget-object v0, Lhhy;->i:Lhhy;

    return-object v0

    .line 233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/h5appmanager/H5AppManager;->queryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alipay/android/h5appmanager/AppInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/alipay/android/h5appmanager/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 675
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;

    const-string/jumbo v1, "home"

    .line 678
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p1, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;

    const-string/jumbo v1, "home"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lhhy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_0
    return-void
.end method

.method static synthetic a(Lhhy;)V
    .locals 0
    .param p0, "x0"    # Lhhy;

    .prologue
    .line 62
    invoke-direct {p0}, Lhhy;->c()V

    return-void
.end method

.method static synthetic a(Lhhy;Lcom/alipay/android/h5appmanager/AppInfo;)V
    .locals 0
    .param p0, "x0"    # Lhhy;
    .param p1, "x1"    # Lcom/alipay/android/h5appmanager/AppInfo;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lhhy;->a(Lcom/alipay/android/h5appmanager/AppInfo;)V

    return-void
.end method

.method static synthetic a(Lhhy;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lhhy;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    .line 5821
    if-eqz p1, :cond_2

    .line 5822
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 5823
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 5824
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;

    const-string/jumbo v4, "home"

    .line 5827
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5828
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 5830
    :try_start_0
    const-string/jumbo v4, "appid"

    iget-object v5, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5831
    const-string/jumbo v4, "home"

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;

    const-string/jumbo v5, "home"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5832
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5833
    :catch_0
    move-exception v0

    .line 5834
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 5838
    :cond_1
    iget-object v0, p0, Lhhy;->j:Landroid/content/Context;

    const-string/jumbo v2, "aliPayHpmList"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    return-void
.end method

.method static synthetic b(Lhhy;)Lhid;
    .locals 1
    .param p0, "x0"    # Lhhy;

    .prologue
    .line 62
    iget-object v0, p0, Lhhy;->k:Lhid;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 686
    :try_start_0
    iget-object v1, p0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string/jumbo v1, "hpm"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "hpm_add_host_map"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "host="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "appId="

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_0
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcic;->b:Z

    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {p0}, Lhhy;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2464
    :cond_1
    :try_start_1
    iget-object v0, p0, Lhhy;->j:Landroid/content/Context;

    const-string/jumbo v1, "hpm_update_timestamp"

    invoke-static {v0, v1}, Lcpk;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 2465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2467
    const/4 v0, 0x0

    invoke-static {v0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2468
    const-wide/32 v0, 0x1d4c00

    .line 2472
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    sub-long v2, v4, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 2474
    :cond_2
    iget-object v0, p0, Lhhy;->j:Landroid/content/Context;

    const-string/jumbo v1, "hpm_update_timestamp"

    invoke-static {v0, v1, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2475
    const/4 v0, 0x1

    .line 380
    :goto_2
    if-eqz v0, :cond_5

    invoke-static {}, Lhid;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    invoke-virtual {p0}, Lhhy;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2470
    :cond_3
    const-wide/32 v0, 0xa4cb80

    goto :goto_1

    .line 2478
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 384
    :cond_5
    :try_start_2
    iget-object v0, p0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0}, Lhhy;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 885
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 886
    const/4 v9, 0x0

    .line 939
    :goto_0
    return v9

    .line 889
    :cond_0
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v9

    const-class v10, Lcom/alibaba/dingtalk/oabase/OAInterface;

    invoke-virtual {v9, v10}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/dingtalk/oabase/OAInterface;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(I)Ljava/util/List;

    move-result-object v5

    .line 890
    .local v5, "microList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v5, :cond_6

    .line 893
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 894
    .local v0, "appIdlong":J
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 895
    .local v4, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v4, :cond_1

    iget-wide v10, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v10, v10, v0

    if-nez v10, :cond_1

    .line 897
    const/4 v9, 0x1

    goto :goto_0

    .line 901
    .end local v0    # "appIdlong":J
    .end local v4    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :catch_0
    move-exception v6

    .line 902
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 905
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 906
    const/4 v9, 0x0

    goto :goto_0

    .line 909
    :cond_3
    iget-object v9, p0, Lhhy;->n:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 910
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 915
    .restart local v4    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :try_start_1
    iget-object v10, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->homepage:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 916
    .local v2, "homepage":Landroid/net/Uri;
    const-string/jumbo v10, "url"

    invoke-virtual {v2, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 917
    .local v7, "urlParam":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 918
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 919
    .local v8, "urlParamUri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 920
    .local v3, "host":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 921
    iget-object v10, p0, Lhhy;->n:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 924
    .end local v2    # "homepage":Landroid/net/Uri;
    .end local v3    # "host":Ljava/lang/String;
    .end local v7    # "urlParam":Ljava/lang/String;
    .end local v8    # "urlParamUri":Landroid/net/Uri;
    :catch_1
    move-exception v6

    .line 925
    .restart local v6    # "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 931
    .end local v4    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_5
    :try_start_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 932
    .restart local v3    # "host":Ljava/lang/String;
    iget-object v9, p0, Lhhy;->n:Ljava/util/Set;

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    goto/16 :goto_0

    .line 934
    .end local v3    # "host":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 935
    .restart local v6    # "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 939
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private d()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 843
    iget-object v6, p0, Lhhy;->j:Landroid/content/Context;

    const-string/jumbo v7, "aliPayHpmList"

    invoke-static {v6, v7}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "hpmJsonAliPay":Ljava/lang/String;
    iget-object v6, p0, Lhhy;->j:Landroid/content/Context;

    const-string/jumbo v7, "aliYunHpmList"

    invoke-static {v6, v7}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "hpmJsonAliYun":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 847
    .local v4, "jsArrayAliPay":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 848
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 849
    .local v3, "js":Lorg/json/JSONObject;
    const-string/jumbo v6, "home"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "appid"

    const-string/jumbo v8, ""

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lhhy;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    .end local v3    # "js":Lorg/json/JSONObject;
    .end local v4    # "jsArrayAliPay":Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    .line 855
    :cond_0
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 856
    .local v5, "jsArrayAliYun":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 857
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 858
    .restart local v3    # "js":Lorg/json/JSONObject;
    const-string/jumbo v6, "home"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "appid"

    const-string/jumbo v8, ""

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lhhy;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 856
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 863
    .end local v2    # "i":I
    .end local v3    # "js":Lorg/json/JSONObject;
    .end local v5    # "jsArrayAliYun":Lorg/json/JSONArray;
    :catch_1
    move-exception v6

    :cond_1
    return-void
.end method

.method private declared-synchronized i(Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    iget-object v2, p0, Lhhy;->m:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lhhy;->m:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 646
    .local v0, "ref":I
    add-int/lit8 v1, v0, -0x1

    .line 647
    .local v1, "refNow":I
    iget-object v2, p0, Lhhy;->m:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    if-nez v1, :cond_0

    .line 649
    iget-object v2, p0, Lhhy;->m:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/android/h5appmanager/H5AppManager;->recycleWebResource(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    .end local v0    # "ref":I
    .end local v1    # "refNow":I
    :cond_0
    monitor-exit p0

    return-void

    .line 643
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lhic;)V
    .locals 9
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "hpmInfo"    # Lhic;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 777
    iget-object v2, p0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 778
    .local v1, "phost":Ljava/lang/String;
    iget-object v3, p0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 779
    .local v0, "pAppId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 780
    iget-object v3, p0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string/jumbo v3, "hpm"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "hpm_remove_host_map"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "host="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "appId="

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p1, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 784
    .end local v0    # "pAppId":Ljava/lang/String;
    .end local v1    # "phost":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2, p1}, Lhhy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v2, p0, Lhhy;->e:Ljava/util/Map;

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhic;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 792
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhic;>;"
    if-eqz p1, :cond_2

    .line 793
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 794
    .local v4, "jsArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 795
    .local v0, "appId":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhic;

    .line 796
    .local v2, "hpmInfo":Lhic;
    if-eqz v2, :cond_0

    .line 797
    iget-object v6, v2, Lhic;->f:Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    iget-object v6, v2, Lhic;->f:Lorg/json/JSONObject;

    const-string/jumbo v7, "home"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 798
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 800
    .local v3, "js":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "appid"

    iget-object v7, v2, Lhic;->a:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    const-string/jumbo v6, "home"

    iget-object v7, v2, Lhic;->f:Lorg/json/JSONObject;

    const-string/jumbo v8, "home"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 803
    :catch_0
    move-exception v1

    .line 804
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 809
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "hpmInfo":Lhic;
    .end local v3    # "js":Lorg/json/JSONObject;
    :cond_1
    iget-object v5, p0, Lhhy;->j:Landroid/content/Context;

    const-string/jumbo v6, "aliYunHpmList"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .end local v4    # "jsArray":Lorg/json/JSONArray;
    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 483
    const/4 v4, 0x0

    .line 485
    .local v4, "wrr":Lcom/uc/webview/export/WebResourceResponse;
    :try_start_0
    iget-object v8, p0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 486
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 487
    iget-object v8, p0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v8

    .line 489
    invoke-virtual {v8, v0, p1}, Lcom/alipay/android/h5appmanager/H5AppManager;->getWebResource(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;

    move-result-object v3

    .line 490
    .local v3, "wr":Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;
    if-eqz v3, :cond_1

    .line 491
    new-instance v5, Lcom/uc/webview/export/WebResourceResponse;

    iget-object v8, v3, Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;->mimeType:Ljava/lang/String;

    iget-object v9, v3, Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;->encoding:Ljava/lang/String;

    iget-object v10, v3, Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;->is:Ljava/io/InputStream;

    invoke-direct {v5, v8, v9, v10}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "wrr":Lcom/uc/webview/export/WebResourceResponse;
    .local v5, "wrr":Lcom/uc/webview/export/WebResourceResponse;
    move-object v4, v5

    .line 502
    .end local v0    # "appId":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "wr":Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;
    .end local v5    # "wrr":Lcom/uc/webview/export/WebResourceResponse;
    .restart local v4    # "wrr":Lcom/uc/webview/export/WebResourceResponse;
    :cond_1
    :goto_0
    const-string/jumbo v8, "hpm"

    const-string/jumbo v9, ""

    const-string/jumbo v10, "hpm_get_resource"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "url="

    aput-object v12, v11, v7

    aput-object p1, v11, v6

    const-string/jumbo v12, "hit="

    aput-object v12, v11, v13

    const/4 v12, 0x3

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v11, v12

    invoke-static {v8, v9, v10, v11}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    return-object v4

    .line 496
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "hpm"

    const-string/jumbo v9, ""

    const-string/jumbo v10, "hpm_get_resource"

    new-array v11, v13, [Ljava/lang/Object;

    const-string/jumbo v12, "getHpmResource exception="

    aput-object v12, v11, v7

    .line 498
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 497
    invoke-static {v8, v9, v10, v11}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move v6, v7

    .line 502
    goto :goto_1
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2980
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 408
    :goto_0
    if-nez v2, :cond_4

    .line 460
    :cond_0
    return-void

    .line 2983
    :cond_1
    const-class v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v5, "dt_function"

    const-string/jumbo v6, "open_hpm_alipay_config_disabled_v351"

    invoke-interface {v2, v5, v6}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v2

    .line 2984
    if-eqz v2, :cond_3

    .line 2985
    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 2986
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2987
    invoke-static {v2}, Ligb;->f(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    .line 2990
    goto :goto_0

    .line 409
    :cond_4
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v2

    new-instance v3, Lhhy$5;

    invoke-direct {v3, p0}, Lhhy$5;-><init>(Lhhy;)V

    .line 410
    invoke-virtual {v2, v3}, Lcom/alipay/android/h5appmanager/H5AppManager;->queryAllApps(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Ljava/util/Collection;

    move-result-object v1

    .line 452
    .local v1, "prebuiltApps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    if-eqz v1, :cond_0

    .line 453
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 454
    .local v0, "app":Lcom/alipay/android/h5appmanager/AppInfo;
    iget-object v3, p0, Lhhy;->d:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 455
    invoke-direct {p0, v0}, Lhhy;->a(Lcom/alipay/android/h5appmanager/AppInfo;)V

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 542
    const/4 v1, 0x0

    .line 543
    .local v1, "isHpmResource":Z
    iget-object v2, p0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 544
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    const/4 v1, 0x1

    .line 549
    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 19
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 553
    monitor-enter p0

    if-nez p1, :cond_1

    .line 5618
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 556
    :cond_1
    :try_start_0
    const-string/jumbo v2, ""

    .line 557
    .local v2, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 558
    .local v4, "host":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_2

    .line 560
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 563
    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->f:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 564
    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->f:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 565
    .local v3, "demotionVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/alipay/android/h5appmanager/H5AppManager;->queryAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 566
    .local v8, "localVersion":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 567
    const-string/jumbo v11, "hpm"

    const-string/jumbo v13, ""

    const-string/jumbo v14, "hpm_preload_demotion"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "version="

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v3, v15, v16

    invoke-static {v11, v13, v14, v15}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 605
    .end local v3    # "demotionVersion":Ljava/lang/String;
    .end local v8    # "localVersion":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 606
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 607
    const-string/jumbo v11, "hpm"

    const-string/jumbo v13, ""

    const-string/jumbo v14, "hpm_preloadResource_exception"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "appId="

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v2, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "exception= "

    aput-object v17, v15, v16

    const/16 v16, 0x3

    .line 608
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 607
    invoke-static {v11, v13, v14, v15}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 553
    .end local v2    # "appId":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v9    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 572
    .restart local v2    # "appId":Ljava/lang/String;
    .restart local v4    # "host":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    .line 574
    .local v6, "isSuccess":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->e:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 575
    .local v7, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v5, 0x1

    .line 577
    .local v5, "isNewHpmApp":Z
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lhhy;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 3969
    .local v10, "visible":Z
    const-class v11, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v11}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v13, "dt_function"

    const-string/jumbo v14, "open_hpm_app_package_check_android_disabled_v401"

    invoke-interface {v11, v13, v14}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v11

    .line 3970
    if-eqz v11, :cond_6

    .line 3971
    invoke-interface {v11}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 3972
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 3973
    invoke-static {v11}, Ligb;->f(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    .line 579
    :goto_3
    if-eqz v11, :cond_7

    if-nez v10, :cond_7

    .line 580
    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string/jumbo v11, "hpm"

    const-string/jumbo v13, ""

    const-string/jumbo v14, "hpm_remove_host_map"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "host="

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v4, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "appId="

    aput-object v17, v15, v16

    const/16 v16, 0x3

    aput-object v2, v15, v16

    invoke-static {v11, v13, v14, v15}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    if-eqz v5, :cond_0

    .line 587
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lhhy;->h(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 575
    .end local v5    # "isNewHpmApp":Z
    .end local v10    # "visible":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 3973
    .restart local v5    # "isNewHpmApp":Z
    .restart local v10    # "visible":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 3976
    :cond_6
    const/4 v11, 0x1

    goto :goto_3

    .line 591
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->m:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 592
    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->m:Ljava/util/Map;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/alipay/android/h5appmanager/H5AppManager;->preloadWebResource(Ljava/lang/String;)Z

    move-result v6

    .line 594
    if-nez v6, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->k:Lhid;

    invoke-virtual {v11, v2}, Lhid;->a(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/AppInfo;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 595
    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->k:Lhid;

    invoke-virtual {v11, v2}, Lhid;->a(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/AppInfo;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .line 4723
    :try_start_4
    const-string/jumbo v11, "hpm"

    const-string/jumbo v14, ""

    const-string/jumbo v15, "hpm_syncFromAppInfo"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "appInfo="

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v13}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v11, v14, v15, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4728
    :goto_4
    if-eqz v13, :cond_8

    .line 4731
    :try_start_5
    invoke-static {}, Lhid;->a()Z

    move-result v11

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->k:Lhid;

    invoke-virtual {v11, v13}, Lhid;->c(Lcom/alipay/android/h5appmanager/AppInfo;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 4732
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4733
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4735
    const-string/jumbo v13, "hpm"

    const-string/jumbo v14, ""

    const-string/jumbo v15, "hpm_syncFromAppInfo"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "start syncFromAppInfo"

    aput-object v18, v16, v17

    invoke-static/range {v13 .. v16}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4737
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v13

    new-instance v14, Lhhy$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lhhy$7;-><init>(Lhhy;)V

    invoke-virtual {v13, v11, v14}, Lcom/alipay/android/h5appmanager/H5AppManager;->syncFromAppInfo(Ljava/util/List;Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;)V

    .line 598
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lhhy;->m:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->m:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v13, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string/jumbo v13, "hpm"

    const-string/jumbo v14, ""

    const-string/jumbo v15, "hpm_preloadResource"

    const/16 v11, 0x8

    new-array v0, v11, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v11, 0x0

    const-string/jumbo v17, "appId="

    aput-object v17, v16, v11

    const/4 v11, 0x1

    aput-object v2, v16, v11

    const/4 v11, 0x2

    const-string/jumbo v17, "isSuccess="

    aput-object v17, v16, v11

    const/4 v11, 0x3

    .line 602
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v16, v11

    const/4 v11, 0x4

    const-string/jumbo v17, "visible= "

    aput-object v17, v16, v11

    const/4 v11, 0x5

    .line 603
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v16, v11

    const/4 v11, 0x6

    const-string/jumbo v17, "isNewHpmApp= "

    aput-object v17, v16, v11

    const/16 v17, 0x7

    if-eqz v7, :cond_a

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    :goto_6
    aput-object v11, v16, v17

    .line 601
    invoke-static/range {v13 .. v16}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 4724
    :catch_1
    move-exception v11

    .line 4725
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 4765
    :cond_9
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 4766
    const-string/jumbo v14, "appid"

    iget-object v13, v13, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-interface {v11, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4767
    const-string/jumbo v13, "wifi"

    const/4 v14, 0x0

    invoke-static {v14}, Lcms;->k(Landroid/content/Context;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4768
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v13

    const/4 v14, 0x0

    const-string/jumbo v15, "open_hpm_app_package_download_limit"

    invoke-interface {v13, v14, v15, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4770
    const-string/jumbo v11, "hpm"

    const-string/jumbo v13, ""

    const-string/jumbo v14, "hpm_syncFromAppInfo"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "can not start"

    aput-object v17, v15, v16

    invoke-static {v11, v13, v14, v15}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 603
    :cond_a
    const-string/jumbo v11, "keyset is null"
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 5616
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "isNewHpmApp":Z
    .end local v6    # "isSuccess":Z
    .end local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "visible":Z
    :cond_b
    :try_start_6
    invoke-static {}, Lhid;->a()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 5617
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 5618
    move-object/from16 v0, p0

    iget-object v11, v0, Lhhy;->l:Lhie;

    move-object/from16 v0, p1

    invoke-virtual {v11, v2, v0}, Lhie;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5620
    :cond_c
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lhqw;->a(Ljava/lang/String;)Lhqy;

    move-result-object v11

    .line 5621
    if-eqz v11, :cond_0

    .line 5622
    move-object/from16 v0, p0

    iget-object v12, v0, Lhhy;->l:Lhie;

    iget-object v11, v11, Lhqy;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v11, v0}, Lhie;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 629
    monitor-enter p0

    if-nez p1, :cond_1

    .line 638
    :cond_0
    monitor-exit p0

    return-void

    .line 632
    :cond_1
    :try_start_0
    iget-object v2, p0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 633
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 634
    iget-object v3, p0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 635
    .local v0, "appId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lhhy;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 629
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    const-string/jumbo v1, ""

    .line 668
    :goto_0
    return-object v1

    .line 661
    :cond_0
    :try_start_0
    iget-object v1, p0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 662
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    iget-object v1, p0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    .end local v0    # "host":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0

    .line 668
    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 7
    .param p1, "hpmInfos"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 698
    :try_start_0
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v1

    new-instance v2, Lhhy$6;

    invoke-direct {v2, p0}, Lhhy$6;-><init>(Lhhy;)V

    invoke-virtual {v1, p1, v2}, Lcom/alipay/android/h5appmanager/H5AppManager;->sync(Ljava/lang/String;Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 717
    const-string/jumbo v1, "hpm"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "onResult and sync exception=>"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 9
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 944
    const-string/jumbo v2, "hpm"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "hpm_removeLocalApp"

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "appId= "

    aput-object v6, v5, v1

    aput-object p1, v5, v7

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    :try_start_0
    iget-object v2, p0, Lhhy;->e:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/android/h5appmanager/H5AppManager;->removeLocalApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 952
    :goto_0
    return v1

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 950
    const-string/jumbo v2, "hpm"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "hpm_removeLocalApp_exception"

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "exception= "

    aput-object v6, v5, v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
