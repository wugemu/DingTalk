.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;
.super Ljava/lang/Object;
.source "H5NebulaAppCacheManager.java"


# static fields
.field public static final NEBULA_H5TINY_APP:Ljava/lang/String; = "nebulaH5TinyApp"

.field public static final NEBULA_H5_APP:Ljava/lang/String; = "nebulaH5App"

.field public static final NEBULA_NATIVE_TINY_APP:Ljava/lang/String; = "nebulaNativeTinyApp"

.field private static final TAG:Ljava/lang/String; = "H5NebulaAppCacheManager"

.field private static nebulaAppType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->nebulaAppType:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableMulti(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 153
    sget-object v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->nebulaAppType:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 154
    .local v3, "h5StartAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    if-nez v3, :cond_0

    .line 155
    const-string/jumbo v4, "H5NebulaAppCacheManager"

    const-string/jumbo v5, "enableMulti h5StartAppInfo == null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 157
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v2, :cond_1

    .line 158
    invoke-interface {v2, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 159
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 160
    .local v1, "copy":Landroid/os/Bundle;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 161
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->openMultiFromParam(Landroid/os/Bundle;Z)Z

    move-result v4

    .line 166
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v1    # "copy":Landroid/os/Bundle;
    .end local v2    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :goto_0
    return v4

    .line 164
    :cond_0
    iget-boolean v4, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->enableMultiProcess:Z

    goto :goto_0

    .line 166
    .restart local v2    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static enableUseCache()Z
    .locals 3

    .prologue
    .line 46
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 47
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v2, "H5NebulaAppCacheManager"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const/4 v2, 0x0

    .line 53
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getAppType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v1

    .line 61
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->enableUseCache()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->nebulaAppType:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 65
    .local v0, "type":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v1, "H5NebulaAppCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " getAppType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isH5TinyApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string/jumbo v0, "nebulaH5TinyApp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static openMultiFromParam(Landroid/os/Bundle;Z)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "H5Tiny"    # Z

    .prologue
    .line 104
    const-string/jumbo v1, "enableMultiProcess"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "openMultiFromParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    .end local p1    # "H5Tiny":Z
    :goto_0
    return p1

    .line 110
    .restart local p1    # "H5Tiny":Z
    :cond_0
    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const/4 p1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static putAppType(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .prologue
    .line 41
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->nebulaAppType:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public static setAppType(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 73
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const-string/jumbo v2, "nebulaH5TinyApp"

    iput-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    .line 81
    :goto_0
    const-string/jumbo v2, "nebulaH5TinyApp"

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->openMultiFromParam(Landroid/os/Bundle;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->enableMultiProcess:Z

    .line 84
    const-string/jumbo v2, "nebulaH5TinyApp"

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    .line 86
    iput-boolean v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    .line 101
    :cond_0
    :goto_1
    return-void

    .line 75
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isRNApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const-string/jumbo v2, "nebulaNativeTinyApp"

    iput-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_2
    const-string/jumbo v2, "nebulaH5App"

    iput-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaAppType:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_3
    iput v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    .line 89
    const-string/jumbo v2, "yes"

    const-string/jumbo v3, "enableDSL"

    invoke-static {p2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    .line 91
    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    iget-object v2, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 93
    .local v0, "extraJo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    const-string/jumbo v2, "usePresetPopmenu"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "usePresetPopmenu":Ljava/lang/String;
    const-string/jumbo v2, "YES"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->isUsePresetPopmenu:Z

    goto :goto_1
.end method

.method public static useAppX(Ljava/lang/String;)Z
    .locals 8
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v4

    .line 126
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->enableUseCache()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    sget-object v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->nebulaAppType:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 130
    .local v3, "type":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    if-nez v3, :cond_3

    .line 131
    const-string/jumbo v5, "H5NebulaAppCacheManager"

    const-string/jumbo v6, "useAppX type == null"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 133
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v2, :cond_3

    .line 134
    invoke-interface {v2, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 135
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    const/4 v4, 0x1

    goto :goto_0

    .line 138
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v1, "copy":Landroid/os/Bundle;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 140
    const-string/jumbo v4, "yes"

    const-string/jumbo v5, "enableDSL"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 143
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v1    # "copy":Landroid/os/Bundle;
    .end local v2    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_3
    const-string/jumbo v5, "H5NebulaAppCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " useAppX "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz v3, :cond_0

    .line 145
    iget-boolean v4, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    goto :goto_0
.end method
