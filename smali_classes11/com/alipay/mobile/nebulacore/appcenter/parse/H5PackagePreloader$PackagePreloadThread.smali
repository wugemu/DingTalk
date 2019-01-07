.class Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;
.super Ljava/lang/Thread;
.source "H5PackagePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackagePreloadThread"
.end annotation


# instance fields
.field appId:Ljava/lang/String;

.field appVersion:Ljava/lang/String;

.field isSuccess:Z

.field parseResult:Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

.field parsedPackageContent:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->appId:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public preload(Ljava/lang/String;)V
    .locals 13
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 127
    const-string/jumbo v10, "H5PackagePreloader"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "do preload enter appId = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v10

    const-class v11, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 129
    .local v0, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v0, :cond_0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v8, "params":Landroid/os/Bundle;
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->appVersion:Ljava/lang/String;

    .line 134
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->appVersion:Ljava/lang/String;

    invoke-interface {v0, p1, v10}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 135
    .local v4, "isAvailable":Z
    if-eqz v4, :cond_0

    .line 139
    const-string/jumbo v10, "appVersion"

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->appVersion:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v10, "appId"

    invoke-virtual {v8, v10, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->appVersion:Ljava/lang/String;

    invoke-interface {v0, p1, v10}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "installPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "file://"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, "offlineHost":Ljava/lang/String;
    const-string/jumbo v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 145
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 147
    :cond_2
    const-string/jumbo v10, "offlineHost"

    invoke-virtual {v8, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v7    # "offlineHost":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->appVersion:Ljava/lang/String;

    invoke-interface {v0, p1, v10}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 150
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "host"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, "host":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 152
    const-string/jumbo v10, "host"

    invoke-virtual {v8, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v2, v8}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->initAppHost(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 156
    :cond_4
    const/4 v5, 0x0

    .line 157
    .local v5, "isNebulaApp":Z
    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isNebulaApp(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 158
    const/4 v5, 0x1

    .line 160
    :cond_5
    const-string/jumbo v10, "isNebulaApp"

    invoke-virtual {v8, v10, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    const-string/jumbo v10, "appType"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 164
    .local v1, "content":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[B>;"
    invoke-static {v8, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->parsePackage(Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v10

    iput-object v10, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->parseResult:Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    .line 166
    const-string/jumbo v10, "H5PackagePreloader"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "parse appId "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " errorCode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->parseResult:Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    iget v12, v12, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->parseResult:Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    iget v10, v10, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    if-nez v10, :cond_6

    :goto_1
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->isSuccess:Z

    .line 170
    iget-boolean v9, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->isSuccess:Z

    if-eqz v9, :cond_0

    .line 171
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->parsedPackageContent:Ljava/util/concurrent/ConcurrentHashMap;

    goto/16 :goto_0

    .line 168
    :cond_6
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->appId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->preload(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "thr":Ljava/lang/Throwable;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->isSuccess:Z

    .line 122
    const-string/jumbo v1, "H5PackagePreloader"

    const-string/jumbo v2, "preload package error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
