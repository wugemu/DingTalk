.class public Lcom/alipay/android/h5appmanager/H5AppManager;
.super Ljava/lang/Object;
.source "H5AppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;,
        Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;,
        Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final SDK_VERSION:Ljava/lang/String; = "1.1.0"

.field private static sInstance:Lcom/alipay/android/h5appmanager/H5AppManager;


# instance fields
.field impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

.field private mLocalStorePath:Ljava/lang/String;

.field private mServiceParams:Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;

.field private mServiceUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "https://hpmweb.alipay.com"

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->mServiceUrl:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;

    const-string/jumbo v1, "com.laiwang.DingTalkEnt"

    const-string/jumbo v2, "2.1.0"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->mServiceParams:Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;

    .line 140
    new-instance v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .line 144
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/alipay/android/h5appmanager/H5AppManager;->sInstance:Lcom/alipay/android/h5appmanager/H5AppManager;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/alipay/android/h5appmanager/H5AppManager;

    invoke-direct {v0}, Lcom/alipay/android/h5appmanager/H5AppManager;-><init>()V

    sput-object v0, Lcom/alipay/android/h5appmanager/H5AppManager;->sInstance:Lcom/alipay/android/h5appmanager/H5AppManager;

    .line 80
    :cond_0
    sget-object v0, Lcom/alipay/android/h5appmanager/H5AppManager;->sInstance:Lcom/alipay/android/h5appmanager/H5AppManager;

    return-object v0
.end method


# virtual methods
.method public enableDebug(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->enableDebug(Z)V

    .line 89
    return-void
.end method

.method public getLocalStorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->mLocalStorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceParams()Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->mServiceParams:Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;

    return-object v0
.end method

.method public getServiceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->mServiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebResource(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->getWebResource(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/H5AppManager$WebResource;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "tracker"    # Lcom/alipay/android/h5appmanager/tracker/H5Tracker;
    .param p3, "ctx"    # Landroid/content/Context;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->initialize(Ljava/util/concurrent/Executor;Lcom/alipay/android/h5appmanager/tracker/H5Tracker;Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public migratePrebuiltApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->migratePrebuiltApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public preloadWebResource(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->preloadWebResource(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public queryAllApps(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;>;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "cb":Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;, "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback<Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;>;"
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->queryAllApps(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public queryApp(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/AppInfo;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->queryApp(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryAppVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->queryAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->queryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recycleWebResource(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->recycleWebResource(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public release()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this instance of H5AppManager has already been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->release()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .line 137
    return-void
.end method

.method public removeLocalApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->removeLocalApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestUpdateAllApp(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "cb":Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;, "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->requestUpdateAllApp(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public requestUpdateApp(Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "appIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "cb":Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;, "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->requestUpdateApp(Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Z

    move-result v0

    return v0
.end method

.method public setLocalStorePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->mLocalStorePath:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setMonitorListener(Lcom/alipay/android/h5appmanager/TrafficMonitorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/android/h5appmanager/TrafficMonitorListener;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->setMonitorListener(Lcom/alipay/android/h5appmanager/TrafficMonitorListener;)V

    .line 117
    return-void
.end method

.method public setMonitorTag(I)V
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->setMonitorTag(I)V

    .line 113
    return-void
.end method

.method public setServiceParams(Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;)V
    .locals 0
    .param p1, "params"    # Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->mServiceParams:Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;

    .line 105
    return-void
.end method

.method public setServiceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->mServiceUrl:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public sync(Ljava/lang/String;Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->sync(Ljava/lang/String;Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;)V

    .line 93
    return-void
.end method

.method public syncFromAppInfo(Ljava/util/List;Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;)V
    .locals 1
    .param p2, "callback"    # Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/h5appmanager/AppInfo;",
            ">;",
            "Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/H5AppManager;->impl:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->syncFromAppInfo(Ljava/util/List;Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;)V

    .line 97
    return-void
.end method
