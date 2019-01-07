.class public Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;
.super Ljava/lang/Object;
.source "H5GlobalDegradePkg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5GlobalDegradePkg"

.field private static instance:Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;


# instance fields
.field private h5ContentPackageList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;
    .locals 2

    .prologue
    .line 74
    const-class v1, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->instance:Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->instance:Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    .line 77
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->instance:Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "installPath"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 198
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 199
    const-string/jumbo v6, "H5GlobalDegradePkg"

    const-string/jumbo v7, "installPath is empty, return"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    return v5

    .line 202
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getH5ContentPackage(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v2

    .line 203
    .local v2, "current":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 205
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "file://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "offlineHost":Ljava/lang/String;
    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 209
    :cond_2
    const-string/jumbo v6, "offlineHost"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 212
    .local v1, "content":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[B>;"
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->parsePackage(Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v3

    .line 213
    .local v3, "errorCode":Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    iget v6, v3, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    if-nez v6, :cond_0

    .line 214
    const-string/jumbo v5, "H5GlobalDegradePkg"

    const-string/jumbo v6, "appId parsePackage success"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->clear(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, p1, v1, p3}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->put(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)V

    .line 217
    const/4 v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->clear()V

    .line 104
    :cond_0
    return-void
.end method

.method public getContent(Ljava/lang/String;)[B
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v1, v4

    .line 69
    :goto_0
    return-object v1

    .line 55
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 56
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 59
    .local v2, "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 60
    .local v1, "bytes":[B
    if-eqz v1, :cond_2

    .line 61
    const-string/jumbo v4, "H5ContentProviderImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[res_degrade] load response from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "bytes":[B
    .end local v2    # "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_3
    move-object v1, v4

    .line 69
    goto :goto_0
.end method

.method public getH5ContentPackage(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPkgInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 226
    .local v0, "content":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-object v1

    .line 229
    :cond_0
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    const-string/jumbo v2, "H5GlobalDegradePkg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appId : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " content.currentUseVersion is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_Y_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppCredit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "info":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "H5GlobalDegradePkg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getPkgInfo : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    .end local v1    # "info":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_N_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppCredit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "info":Ljava/lang/String;
    goto :goto_1
.end method

.method public prepareContent(Ljava/lang/String;)Z
    .locals 30
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 113
    .local v14, "time":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 114
    .local v22, "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    if-nez v22, :cond_0

    .line 115
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v17, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "H5GlobalDegradePkg"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "init h5TempPkg app "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v5, "appId"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v5, "appType"

    const/4 v8, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    new-instance v8, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    const/4 v10, 0x1

    move-object/from16 v0, v17

    invoke-direct {v8, v0, v10}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;-><init>(Landroid/os/Bundle;Z)V

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v17    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v19

    .line 123
    .local v19, "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    if-eqz v19, :cond_3

    .line 124
    invoke-virtual/range {v19 .. v19}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v20

    .line 125
    .local v20, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v20, :cond_3

    .line 126
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 127
    .local v26, "installVersion":Ljava/lang/String;
    const-string/jumbo v5, "H5GlobalDegradePkg"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "prepareContent installVersion:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 130
    if-eqz v22, :cond_2

    .line 131
    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 132
    const-string/jumbo v5, "H5GlobalDegradePkg"

    const-string/jumbo v8, "prepareContent h5ContentPackage is not Empty not parse"

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v5, 0x0

    .line 193
    .end local v20    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v26    # "installVersion":Ljava/lang/String;
    :goto_0
    return v5

    .line 136
    .restart local v20    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v26    # "installVersion":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    .line 139
    :cond_2
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 140
    .local v21, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v21, :cond_3

    .line 141
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 142
    .local v25, "installPath":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    .line 144
    .local v29, "result":Z
    const-string/jumbo v5, "H5GlobalDegradePkg"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "prepareContent from "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " result:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " speed:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v14

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-eqz v29, :cond_3

    .line 146
    const/4 v5, 0x1

    goto :goto_0

    .line 155
    .end local v20    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v21    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v25    # "installPath":Ljava/lang/String;
    .end local v26    # "installVersion":Ljava/lang/String;
    .end local v29    # "result":Z
    :cond_3
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 156
    .local v28, "presetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    if-eqz v28, :cond_4

    invoke-interface/range {v28 .. v28}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getH5PresetPkg()Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 159
    :try_start_0
    invoke-interface/range {v28 .. v28}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getH5PresetPkg()Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;

    move-result-object v24

    .line 160
    .local v24, "h5PresetPkg":Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;
    invoke-virtual/range {v24 .. v24}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->getPreSetInfo()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 161
    invoke-virtual/range {v24 .. v24}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->getPreSetInfo()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 162
    invoke-virtual/range {v24 .. v24}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->getPreSetInfo()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;

    .line 163
    .local v23, "h5PresetInfo":Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->appId:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 164
    .local v16, "amrName":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->version:Ljava/lang/String;

    .line 165
    .local v6, "version":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->downloadUrl:Ljava/lang/String;

    .line 167
    .local v9, "downloadUrl":Ljava/lang/String;
    const-string/jumbo v5, "H5GlobalDegradePkg"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setWalletPreset getPreSetInfo  "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->getPresetPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 170
    .local v7, "isSrc":Ljava/io/InputStream;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v27, "list":Ljava/util/List;, "Ljava/util/List<Liox;>;"
    new-instance v4, Liox;

    const/4 v8, 0x1

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Liox;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ZLjava/lang/String;)V

    .line 172
    .local v4, "h5PreSetPkgInfo":Liox;
    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    if-eqz v19, :cond_4

    .line 174
    new-instance v10, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg$1;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v6

    invoke-direct/range {v10 .. v15}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg$1;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->loadPresetAppNow(Ljava/util/List;Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 188
    .end local v4    # "h5PreSetPkgInfo":Liox;
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "isSrc":Ljava/io/InputStream;
    .end local v9    # "downloadUrl":Ljava/lang/String;
    .end local v16    # "amrName":Ljava/lang/String;
    .end local v23    # "h5PresetInfo":Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;
    .end local v24    # "h5PresetPkg":Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;
    .end local v27    # "list":Ljava/util/List;, "Ljava/util/List<Liox;>;"
    :catch_0
    move-exception v18

    .line 189
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "H5GlobalDegradePkg"

    const-string/jumbo v8, "setWalletPreset not exist"

    move-object/from16 v0, v18

    invoke-static {v5, v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    .local p2, "concurrentHashMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[B>;"
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->h5ContentPackageList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 83
    .local v0, "current":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->clear()V

    .line 85
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->putAll(Ljava/util/Map;)V

    .line 86
    iput-object p3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->refreshLogTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v0    # "current":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_0
    return-void
.end method
