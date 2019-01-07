.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;
.super Ljava/lang/Object;
.source "H5DevAppList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5DevAppList"

.field private static h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

.field private static instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

.field private static tinyProcessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDevAppMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tinyAppRecordMap:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyProcessMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    .line 49
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    .line 50
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 51
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 52
    .local v1, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getCommonResourceAppList()Ljava/util/Set;

    move-result-object v0

    .line 54
    .local v0, "appSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, "id":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyProcessMap:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    .end local v0    # "appSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    .line 68
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->instance:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerInstallAdvice()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 271
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    .line 274
    invoke-static {}, Lcom/alipay/mobile/aspect/b;->a()Lcom/alipay/mobile/aspect/b;

    move-result-object v0

    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.installApp(String, String, Bundle, FragmentActivity)"

    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    .line 1067
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/aspect/b;->a(Ljava/lang/String;Lcom/alipay/mobile/aspect/a;Z)V

    .line 278
    :cond_0
    return-void
.end method

.method private unRegisterInstallAdvice()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/alipay/mobile/aspect/b;->a()Lcom/alipay/mobile/aspect/b;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/aspect/b;->a(Lcom/alipay/mobile/aspect/a;)V

    .line 284
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    .line 286
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5DevAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    .prologue
    .line 73
    monitor-enter p0

    if-nez p1, :cond_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addTinyAppRecord(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 5
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 112
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    :cond_1
    const-string/jumbo v2, "H5DevAppList"

    const-string/jumbo v3, "is not tinyApp"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 117
    .local v0, "appId":Ljava/lang/String;
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 118
    .local v1, "version":Ljava/lang/String;
    const-string/jumbo v2, "H5DevAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tinyAppRecordMap put appId : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 199
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 201
    sget-object v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyProcessMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 202
    .local v1, "containBool":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 237
    .end local v1    # "containBool":Ljava/lang/Boolean;
    :goto_0
    monitor-exit p0

    return v0

    .line 207
    .restart local v1    # "containBool":Ljava/lang/Boolean;
    :cond_0
    :try_start_1
    const-class v6, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 208
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v2, :cond_1

    .line 211
    :try_start_2
    const-class v6, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 212
    invoke-virtual {v2, v6}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 213
    .local v3, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v3, :cond_1

    .line 214
    invoke-interface {v3, p1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->containDevAppId(Ljava/lang/String;)Z

    move-result v0

    .line 215
    .local v0, "contain":Z
    sget-object v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyProcessMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 218
    .end local v0    # "contain":Z
    .end local v3    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :catch_0
    move-exception v4

    .line 219
    .local v4, "throwable":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v6, "H5DevAppList"

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_1
    move v0, v5

    .line 237
    goto :goto_0

    .line 225
    .end local v1    # "containBool":Ljava/lang/Boolean;
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "h5_read_use_dev_db"

    const/4 v7, 0x0

    .line 226
    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 227
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :cond_3
    if-nez p1, :cond_4

    move v0, v5

    .line 231
    goto :goto_0

    .line 234
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getDevInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDevInfoNbsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 161
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 163
    const-class v4, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 164
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .local v1, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v1, :cond_1

    .line 168
    :try_start_1
    const-class v4, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 169
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 170
    .local v2, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v2, :cond_1

    .line 171
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getDevNbsv(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 191
    .end local v1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v2    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 173
    .restart local v1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :catch_0
    move-exception v3

    .line 174
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v4, "H5DevAppList"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v4, ""

    goto :goto_0

    .line 181
    .end local v1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 184
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    .line 185
    .local v0, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    if-eqz v0, :cond_0

    .line 189
    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 161
    .end local v0    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public isDevAppInfo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "scene"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 291
    const-string/jumbo v1, "H5DevAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scene : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "online"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public needStopLiteProcessByAppId(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 7
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v3

    .line 127
    :cond_1
    if-nez p1, :cond_2

    .line 128
    const-string/jumbo v4, "H5DevAppList"

    const-string/jumbo v5, "appInfo == null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 132
    .local v1, "startAppId":Ljava/lang/String;
    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 133
    .local v2, "startVersion":Ljava/lang/String;
    const-string/jumbo v4, "H5DevAppList"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " startAppId : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " startVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 138
    :cond_3
    const-string/jumbo v4, "H5DevAppList"

    const-string/jumbo v5, "tinyAppRecordMap isEmpty, return false"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_4
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 142
    const-string/jumbo v4, "H5DevAppList"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tinyAppRecordMap not contain appId : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_5
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyAppRecordMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, "recordVersion":Ljava/lang/String;
    const-string/jumbo v4, "H5DevAppList"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "recordVersion : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    monitor-enter p0

    if-nez p1, :cond_0

    .line 105
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const-string/jumbo v0, "IO"

    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_1
    :try_start_1
    const-string/jumbo v0, "H5DevAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " remove : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setUseDevMode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "use"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    const-string/jumbo v2, "H5DevAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setUseDevMode appId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", use: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", h5InstallAppAdvice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    if-eqz p2, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->registerInstallAdvice()V

    .line 264
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    .line 265
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->tinyProcessMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    return-void

    .line 248
    :cond_1
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->h5InstallAppAdvice:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;

    if-eqz v2, :cond_2

    .line 249
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->restoreApplicationDescription(Ljava/lang/String;)V

    .line 251
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->unRegisterInstallAdvice()V

    goto :goto_0

    .line 255
    :cond_3
    const-string/jumbo v1, ""

    .line 256
    .local v1, "log":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->mDevAppMaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    .local v0, "id":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    goto :goto_1

    .line 260
    .end local v0    # "id":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "H5DevAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "dev list is not empty still exist "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
