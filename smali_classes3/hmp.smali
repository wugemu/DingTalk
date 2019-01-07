.class public final Lhmp;
.super Ljava/lang/Object;
.source "MiniAppBundleManager.java"


# static fields
.field private static a:Lhmp;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 119
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 120
    .local v0, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    const/4 v1, 0x0

    .line 124
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 134
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 135
    .local v0, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    const/4 v1, 0x0

    .line 141
    :goto_0
    return-object v1

    .line 138
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_2
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized a()Lhmp;
    .locals 2

    .prologue
    .line 91
    const-class v1, Lhmp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhmp;->a:Lhmp;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lhmp;

    invoke-direct {v0}, Lhmp;-><init>()V

    sput-object v0, Lhmp;->a:Lhmp;

    .line 95
    :cond_0
    sget-object v0, Lhmp;->a:Lhmp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 580
    const-string/jumbo v0, "nbupdate"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 581
    const-string/jumbo v0, "nboffline"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 582
    const-string/jumbo v0, "nburl"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 583
    const-string/jumbo v0, "nbversion"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 584
    const-string/jumbo v0, "nboffmode"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    .line 585
    return-void
.end method

.method static synthetic a(Lhmp;Ljava/lang/String;Ljava/lang/String;ILhlo;)V
    .locals 6
    .param p0, "x0"    # Lhmp;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lhlo;

    .prologue
    .line 49
    .line 1481
    new-instance v0, Lhmp$4;

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lhmp$4;-><init>(Lhmp;ILhlo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;Lhlv;)V

    .line 49
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;Z)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "process"    # Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    .param p3, "downloadAmr"    # Z

    .prologue
    .line 173
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 174
    .local v1, "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v1, :cond_1

    .line 175
    const-string/jumbo v3, "MiniAppBundleManager"

    const-string/jumbo v4, "nebulaAppProvider==null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    const-string/jumbo v3, "MiniAppBundleManager"

    const-string/jumbo v4, "appId==null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v0, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "walletConfigNebulaVersion":Ljava/lang/String;
    const-string/jumbo v3, "MiniAppBundleManager"

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

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :goto_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 201
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    .line 202
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    .line 203
    invoke-virtual {v3, p2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v3

    .line 200
    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    goto :goto_0

    .line 195
    :cond_3
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;ZZ)V
    .locals 8
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "process"    # Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    .param p3, "downloadAmr"    # Z
    .param p4, "forceUpdate"    # Z

    .prologue
    .line 217
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 218
    .local v2, "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v2, :cond_1

    .line 219
    const-string/jumbo v4, "MiniAppBundleManager"

    const-string/jumbo v5, "nebulaAppProvider==null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    const-string/jumbo v4, "MiniAppBundleManager"

    const-string/jumbo v5, "appId==null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v0, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "walletConfigNebulaVersion":Ljava/lang/String;
    const-string/jumbo v4, "MiniAppBundleManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "prepareApp: send rpc appId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " walletConfigNebulaVersion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 237
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :goto_1
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    .line 242
    .local v1, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    if-eqz p4, :cond_3

    .line 243
    const-string/jumbo v4, "synctry"

    iput-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 246
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    const/4 v5, 0x0

    .line 249
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    .line 250
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    .line 251
    invoke-virtual {v4, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    .line 252
    invoke-virtual {v4, p4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    .line 253
    invoke-virtual {v4, p2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setStartTime(J)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    .line 255
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v4

    .line 248
    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    goto :goto_0

    .line 239
    .end local v1    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    :cond_4
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lhlv;)V
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "appVersion"    # Ljava/lang/String;
    .param p2, "callback"    # Lhlv;

    .prologue
    const/4 v4, 0x0

    .line 266
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const/4 v2, -0x1

    const-string/jumbo v3, "no app id"

    invoke-virtual {p2, v4, v2, v3}, Lhlv;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 286
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 273
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 274
    .local v0, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v0, :cond_1

    .line 276
    const/4 v2, -0x2

    const-string/jumbo v3, "h5AppProvider is null"

    invoke-virtual {p2, v4, v2, v3}, Lhlv;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_1
    move-object v1, p1

    .local v1, "targetVersion":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_2
    invoke-interface {v0, p0, v1, p2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 353
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v1

    .line 357
    :cond_1
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 358
    .local v0, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v0, :cond_0

    .line 361
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V
    .locals 11
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {p3, v3, v3}, Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;->onResult(ZZ)V

    .line 335
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 312
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 313
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v2, :cond_1

    .line 315
    invoke-interface {p3, v3, v3}, Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;->onResult(ZZ)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "targetVersion":Ljava/lang/String;
    const-string/jumbo v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v0, Lhmp$1;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lhmp$1;-><init>(Lhmp;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 328
    .end local v4    # "targetVersion":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v5, Lhmp$2;

    move-object v6, p0

    move-object v7, v2

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lhmp$2;-><init>(Lhmp;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZZILhlo;)V
    .locals 9
    .param p1, "appId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "appVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "asyncPrepare"    # Z
    .param p4, "forcePrepare"    # Z
    .param p5, "preparePath"    # I
    .param p6, "listener"    # Lhlo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1029
    sget-object v0, Lcom/alipay/mobile/context/a;->b:Landroid/app/Application;

    .line 408
    if-nez v0, :cond_1

    .line 409
    if-eqz p6, :cond_0

    .line 410
    const-string/jumbo v0, "no_global_application"

    const-string/jumbo v1, "the one global application is null"

    invoke-interface {p6, v0, v1}, Lhlo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    if-eqz p6, :cond_0

    .line 417
    const-string/jumbo v0, "invalid_params"

    const-string/jumbo v1, "app id is null"

    invoke-interface {p6, v0, v1}, Lhlo;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_2
    const-string/jumbo v0, "MiniAppBundleManager"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    new-instance v0, Lhmp$3;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p6

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lhmp$3;-><init>(Lhmp;Ljava/lang/String;Ljava/lang/String;ILhlo;ZZ)V

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "info"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p4, "needMergeInfo"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 557
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_1

    .line 558
    :cond_0
    const/4 v0, 0x0

    .line 572
    :goto_0
    return v0

    .line 560
    :cond_1
    if-nez p2, :cond_3

    .line 561
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "bundle":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 562
    .restart local p2    # "bundle":Landroid/os/Bundle;
    invoke-static {p2, p3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 563
    invoke-static {p2}, Lhmp;->a(Landroid/os/Bundle;)V

    .line 571
    :cond_2
    :goto_1
    invoke-static {p2, p3}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->isOutOfReqRate(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    .line 572
    .local v0, "isOutOfReqRate":Z
    goto :goto_0

    .line 565
    .end local v0    # "isOutOfReqRate":Z
    :cond_3
    if-eqz p4, :cond_2

    .line 566
    invoke-static {p2, p3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 567
    invoke-static {p2}, Lhmp;->a(Landroid/os/Bundle;)V

    goto :goto_1
.end method
