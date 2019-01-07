.class public Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;
.super Ljava/lang/Object;
.source "H5ContentProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
.implements Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ContentProviderImpl"

.field private static final TINY_RES_HOST:Ljava/lang/String; = "https://appx"


# instance fields
.field private cdnHost:Ljava/lang/String;

.field private contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

.field private enableFallback:Z

.field private enableFallbackUrl:Z

.field private h5ResourceHandler:Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

.field private hasInputException:Z

.field private hasTinyGoOnline:Z

.field private isNebulaApp:Z

.field private mAppId:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mConnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/web/H5InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mContentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableResPkgIn4:Z

.field private mEnableNetworkFallbackAsync:Z

.field private mFallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFallbackUrlMap:Ljava/util/Map;
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

.field private mFirstReq:Z

.field private mH5Page:Liop;

.field private mHasGetAsyncFallbackReq:Z

.field private mHasGetSyncFallbackReq:Z

.field private mHasResourceOffline:Z

.field private mInputStreamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLocal:Ljava/lang/String;

.field private mTryConcatOnlineHost:Z

.field private mainUrlCanDegrade:Z

.field private mapHost:Z

.field private offlineHost:Ljava/lang/String;

.field private onlineHost:Ljava/lang/String;

.field private resProvider:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

.field private sessionId:Ljava/lang/String;

.field private tinyConfig:Lcom/alibaba/fastjson/JSONObject;

.field private tinyResFallbackUrl:Ljava/lang/String;

.field private unsafeUrl:Ljava/lang/String;

.field private useGetContentOnUi:Ljava/lang/Boolean;

.field private version:Ljava/lang/String;


# direct methods
.method constructor <init>(Liop;)V
    .locals 6
    .param p1, "page"    # Liop;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mHasGetAsyncFallbackReq:Z

    .line 79
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mHasGetSyncFallbackReq:Z

    .line 81
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mEnableNetworkFallbackAsync:Z

    .line 102
    const-string/jumbo v2, "YES"

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mIsLocal:Ljava/lang/String;

    .line 103
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFirstReq:Z

    .line 105
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mHasResourceOffline:Z

    .line 107
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 111
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->hasTinyGoOnline:Z

    .line 117
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mTryConcatOnlineHost:Z

    .line 121
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->isNebulaApp:Z

    .line 125
    const-string/jumbo v2, "https://render.alipay.com/p/s/h5container/index"

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->unsafeUrl:Ljava/lang/String;

    .line 127
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->hasInputException:Z

    .line 128
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mainUrlCanDegrade:Z

    .line 629
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->useGetContentOnUi:Ljava/lang/Boolean;

    .line 135
    invoke-interface {p1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mBundle:Landroid/os/Bundle;

    .line 136
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mH5Page:Liop;

    .line 137
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mContentMap:Ljava/util/HashMap;

    .line 138
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "appId"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mAppId:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "sessionId"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->sessionId:Ljava/lang/String;

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mConnList:Ljava/util/List;

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mInputStreamList:Ljava/util/List;

    .line 142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFallbackUrlMap:Ljava/util/Map;

    .line 143
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->sessionId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->getPackage(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 144
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "offlineHost"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->offlineHost:Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "onlineHost"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->onlineHost:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "mapHost"

    invoke-static {v2, v3, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mapHost:Z

    .line 147
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "enableFallback"

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->enableFallback:Z

    .line 148
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->enableFallbackUrl:Z

    .line 149
    const-string/jumbo v2, "H5ContentProviderImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mapHost "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mapHost:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enableFallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->enableFallback:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v2, "H5ContentProviderImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " offlineHost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->offlineHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sessionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v2, "H5ContentProviderImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onlineHost "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->onlineHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "cdnBaseUrl"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->cdnHost:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "appVersion"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->version:Ljava/lang/String;

    .line 154
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->resProvider:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    .line 156
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h5ResourceHandler:Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    .line 157
    const-string/jumbo v2, "H5ContentProviderImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " cdnHost "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->cdnHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v2, "h5_resRedirect"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->tinyConfig:Lcom/alibaba/fastjson/JSONObject;

    .line 159
    const-string/jumbo v2, "YES"

    const-string/jumbo v3, "h5_mainUrlDegrade"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mainUrlCanDegrade:Z

    .line 160
    const-string/jumbo v2, "yes"

    const-string/jumbo v3, "h5_disableResPkgIn4"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mDisableResPkgIn4:Z

    .line 161
    const-string/jumbo v2, "h5_tryConcatOnlineHost"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "tryConcatOnlineHostConfig":Ljava/lang/String;
    const-string/jumbo v2, "NO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mTryConcatOnlineHost:Z

    .line 166
    :cond_0
    const-string/jumbo v2, "h5_enableNetworkFallbackAsync"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 167
    .local v0, "fallbackAsyncSwitch":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "enable"

    invoke-static {v0, v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mEnableNetworkFallbackAsync:Z

    .line 168
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "isNebulaApp"

    invoke-static {v2, v3, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->isNebulaApp:Z

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/InputStream;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Liop;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mH5Page:Liop;

    return-object v0
.end method

.method private buildContent(I)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "pageId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 791
    const-string/jumbo v1, "text/html"

    .line 792
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 793
    .local v0, "ips":Ljava/io/InputStream;
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v2
.end method

.method private buildContent(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 813
    if-nez p1, :cond_0

    .line 814
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 816
    :cond_0
    if-eqz p1, :cond_1

    .line 817
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    :cond_1
    const-string/jumbo v1, "H5ContentProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[buildContent] url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mimeType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFirstReq:Z

    if-eqz v1, :cond_3

    .line 824
    const-string/jumbo v1, "YES"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->setLocal(Ljava/lang/String;)V

    .line 827
    :cond_3
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2, p3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1
.end method

.method private buildContent(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 831
    const/4 v1, 0x0

    .line 832
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 833
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 835
    const-string/jumbo v2, "H5ContentProviderImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mimeType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFirstReq:Z

    if-eqz v2, :cond_1

    .line 839
    const-string/jumbo v2, "YES"

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->setLocal(Ljava/lang/String;)V

    .line 842
    :cond_1
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v2
.end method

.method private buildContent(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 797
    if-nez p2, :cond_0

    .line 798
    const-string/jumbo p2, ""

    .line 800
    :cond_0
    const/4 v0, 0x0

    .line 802
    .local v0, "data":[B
    :try_start_0
    const-string/jumbo v3, "utf-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 806
    :goto_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 807
    .local v2, "ips":Ljava/io/InputStream;
    new-instance v3, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, p1, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v3

    .line 803
    .end local v2    # "ips":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 804
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5ContentProviderImpl"

    const-string/jumbo v4, "failed to get byte array"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private buildOnlineContent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pureUrl"    # Ljava/lang/String;
    .param p3, "onlineUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 515
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 516
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "^url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "^targetUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 518
    .local v4, "param4":Ljava/lang/String;
    const-string/jumbo v1, "H5_AL_PAGE_RES_REDIRECT"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->version:Ljava/lang/String;

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .end local v4    # "param4":Ljava/lang/String;
    :cond_0
    new-instance v6, Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    invoke-direct {v6, p3, p0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;)V

    .line 522
    .local v6, "is":Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    const-string/jumbo v1, "H5ContentProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "load response from tinyRes online "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-direct {p0, p1, p2, v6}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    return-object v1
.end method

.method private disableResPkg(Liop;)Z
    .locals 4
    .param p1, "h5Page"    # Liop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 436
    const-string/jumbo v1, "H5ContentProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disableResPkg switch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mDisableResPkgIn4:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mDisableResPkgIn4:Z

    if-eqz v1, :cond_0

    .line 438
    invoke-interface {p1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 441
    :cond_0
    return v0
.end method

.method private enableUseGetContentOnUi()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 632
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->useGetContentOnUi:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 633
    const-string/jumbo v1, "h5_enableUseGetContentOnUi"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 635
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->useGetContentOnUi:Ljava/lang/Boolean;

    .line 640
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->useGetContentOnUi:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 637
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->useGetContentOnUi:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private getFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 745
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mapHost:Z

    if-eqz v7, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->onlineHost:Ljava/lang/String;

    .line 746
    .local v2, "host":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->cdnHost:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 747
    :cond_0
    const-string/jumbo v7, "H5ContentProviderImpl"

    const-string/jumbo v8, "[getFallback] cdn url or install host empty!"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 786
    :cond_1
    :goto_1
    return-object v1

    .line 745
    .end local v2    # "host":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->offlineHost:Ljava/lang/String;

    goto :goto_0

    .line 751
    .restart local v2    # "host":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 752
    const-string/jumbo v7, "H5ContentProviderImpl"

    const-string/jumbo v8, "[getFallback] url not starts with host"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 753
    goto :goto_1

    .line 756
    :cond_4
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->cdnHost:Ljava/lang/String;

    if-eqz v7, :cond_5

    const-string/jumbo v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->cdnHost:Ljava/lang/String;

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 757
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->cdnHost:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->cdnHost:Ljava/lang/String;

    .line 760
    :cond_5
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->cdnHost:Ljava/lang/String;

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, "finalUrl":Ljava/lang/String;
    const-string/jumbo v7, "H5ContentProviderImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[getFallback] fallback final url "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mH5Page:Liop;

    if-eqz v7, :cond_1

    .line 764
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getFallbackReason()Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "fallbackReason":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getUnAvailableReason()Ljava/lang/String;

    move-result-object v5

    .line 766
    .local v5, "unAvailableReason":Ljava/lang/String;
    :goto_3
    sget-object v7, Lios;->c:Ljava/lang/String;

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 767
    sget-object v7, Liov$a;->r:Ljava/lang/String;

    invoke-static {v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    .line 768
    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    const-string/jumbo v8, "fallbackReason"

    invoke-virtual {v7, v8, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    const-string/jumbo v8, "unAvailableReason"

    invoke-virtual {v7, v8, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    const-string/jumbo v8, "isNebulaApp"

    iget-boolean v9, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->isNebulaApp:Z

    .line 769
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    const-string/jumbo v8, "inTinyProcess"

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    const-string/jumbo v8, "downloadDelaySeconds"

    sget-wide v10, Lior;->e:J

    .line 770
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    .line 771
    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mH5Page:Liop;

    invoke-interface {v8}, Liop;->getPageData()Lior;

    move-result-object v8

    invoke-virtual {v8}, Lior;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    .line 772
    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    const-string/jumbo v8, "fallbackUrl"

    invoke-virtual {v7, v8, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    .line 773
    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mH5Page:Liop;

    invoke-interface {v8}, Liop;->getPageData()Lior;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 775
    .local v4, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->newH5MonitorLogConfig()Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v7

    const-string/jumbo v8, "webapp"

    .line 776
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogType(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v7

    const-string/jumbo v8, "H-MM"

    .line 777
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogHeader(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v3

    .line 778
    .local v3, "logConfig":Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V

    .line 780
    .end local v3    # "logConfig":Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    .end local v4    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :cond_6
    const-string/jumbo v7, "H5_AL_SESSION_HTTPPROXY_FAIL"

    invoke-static {v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    .line 781
    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mH5Page:Liop;

    invoke-interface {v8}, Liop;->getPageData()Lior;

    move-result-object v8

    invoke-virtual {v8}, Lior;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 782
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "fallbackUrl"

    invoke-virtual {v6, v7, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 783
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mH5Page:Liop;

    invoke-interface {v7}, Liop;->getPageData()Lior;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 780
    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_1

    .line 764
    .end local v0    # "fallbackReason":Ljava/lang/String;
    .end local v5    # "unAvailableReason":Ljava/lang/String;
    :cond_7
    const-string/jumbo v0, "contentPackageIsNull"

    goto/16 :goto_2

    .line 765
    .restart local v0    # "fallbackReason":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, ""

    goto/16 :goto_3
.end method

.method private getFallbackStream(Lcom/alipay/mobile/nebulacore/web/H5InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .param p1, "is"    # Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    .param p2, "pureUrl"    # Ljava/lang/String;
    .param p3, "fallbackUrl"    # Ljava/lang/String;
    .param p4, "originUrl"    # Ljava/lang/String;
    .param p5, "page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 528
    iget-object v0, p1, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->inputToByte(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 530
    .local v7, "bytes":[B
    if-eqz v7, :cond_0

    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v0, p2, v7}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->handleFallbackInfo(Lcom/alipay/mobile/nebulacore/web/H5InputStream;Liop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 537
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 543
    .local v8, "stream":Ljava/io/InputStream;
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mInputStreamList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-direct {p0, p3, v8}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 538
    .end local v8    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    .line 539
    .local v9, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getFallbackStream "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTinyResFallbackUrl()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 446
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->tinyResFallbackUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 448
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 449
    .local v1, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    if-eqz v1, :cond_0

    .line 450
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getTinyCommonApp()Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "tinyCommonApp":Ljava/lang/String;
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 452
    .local v0, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v0, :cond_0

    .line 453
    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "version":Ljava/lang/String;
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getH5AppCdnBaseUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->tinyResFallbackUrl:Ljava/lang/String;

    .line 455
    const-string/jumbo v4, "H5ContentProviderImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getTinyResFallbackUrl "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->tinyResFallbackUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .end local v0    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v1    # "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    .end local v2    # "tinyCommonApp":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->tinyResFallbackUrl:Ljava/lang/String;

    return-object v4
.end method

.method private getUrlFromOnline(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 464
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->tinyConfig:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->tinyConfig:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v0, v3

    .line 478
    :cond_1
    :goto_0
    return-object v0

    .line 467
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->tinyConfig:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v5, "switch"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "switchValue":Ljava/lang/String;
    const-string/jumbo v4, "no"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v3

    .line 469
    goto :goto_0

    .line 471
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->tinyConfig:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v5, "content"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 472
    .local v2, "urlJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 473
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "online":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .end local v0    # "online":Ljava/lang/String;
    :cond_4
    move-object v0, v3

    .line 478
    goto :goto_0
.end method

.method private handleFallbackInfo(Lcom/alipay/mobile/nebulacore/web/H5InputStream;Liop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "is"    # Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    .param p2, "page"    # Liop;
    .param p3, "originUrl"    # Ljava/lang/String;
    .param p4, "pureUrl"    # Ljava/lang/String;
    .param p5, "fallbackUrl"    # Ljava/lang/String;
    .param p6, "isAsync"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "load response from fallback fallbackUrl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pureUrl :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", originUrl :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isAsync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "fallbackLog":Ljava/lang/String;
    const-string/jumbo v3, "H5ContentProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", statusCode: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->statusCode:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFirstReq:Z

    if-eqz v2, :cond_0

    .line 556
    const-string/jumbo v2, "NO"

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->setLocal(Ljava/lang/String;)V

    .line 559
    :cond_0
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 560
    if-eqz p2, :cond_1

    invoke-interface {p2}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 561
    const-string/jumbo v2, "pageLoad|loadFrom"

    const-string/jumbo v3, "fallback"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    :cond_1
    if-eqz p6, :cond_5

    .line 566
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mHasGetAsyncFallbackReq:Z

    if-nez v2, :cond_2

    .line 567
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mHasGetAsyncFallbackReq:Z

    .line 568
    if-eqz p2, :cond_2

    invoke-interface {p2}, Liop;->getPageData()Lior;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 569
    invoke-interface {p2}, Liop;->getPageData()Lior;

    move-result-object v2

    const-string/jumbo v3, "fallbackType"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lior;->a(Ljava/lang/String;I)V

    .line 582
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "url"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "startUpUrl":Ljava/lang/String;
    const-string/jumbo v2, "H5ContentProviderImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fallback showProgress start_up_url is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pureUrl is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {v1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mH5Page:Liop;

    if-eqz v2, :cond_3

    .line 586
    const-string/jumbo v2, "H5ContentProviderImpl"

    const-string/jumbo v3, "fallback showProgress"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mH5Page:Liop;

    const-string/jumbo v3, "showProgressBar_fallback"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 589
    :cond_3
    return-void

    .line 553
    .end local v1    # "startUpUrl":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, ""

    goto/16 :goto_0

    .line 573
    :cond_5
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mHasGetSyncFallbackReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mHasGetAsyncFallbackReq:Z

    if-nez v2, :cond_2

    .line 574
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mHasGetSyncFallbackReq:Z

    .line 575
    if-eqz p2, :cond_2

    invoke-interface {p2}, Liop;->getPageData()Lior;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 576
    invoke-interface {p2}, Liop;->getPageData()Lior;

    move-result-object v2

    const-string/jumbo v3, "fallbackType"

    invoke-virtual {v2, v3, v6}, Lior;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private onGlobalResourceHit(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 911
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 927
    return-void
.end method

.method private setLocal(Ljava/lang/String;)V
    .locals 1
    .param p1, "isLocal"    # Ljava/lang/String;

    .prologue
    .line 956
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mIsLocal:Ljava/lang/String;

    .line 957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFirstReq:Z

    .line 958
    return-void
.end method


# virtual methods
.method public clearInputException()V
    .locals 1

    .prologue
    .line 864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->hasInputException:Z

    .line 865
    return-void
.end method

.method public disconnect()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 874
    :try_start_0
    const-string/jumbo v4, "H5ContentProviderImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "disconnect connList "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mConnList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mConnList:Ljava/util/List;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 876
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mConnList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 877
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mConnList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 879
    .local v1, "his":Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    if-eqz v1, :cond_0

    .line 880
    :try_start_2
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 876
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v4, "H5ContentProviderImpl"

    const-string/jumbo v6, "close connection exception."

    invoke-static {v4, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 887
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "his":Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 904
    .end local v2    # "index":I
    :catch_1
    move-exception v0

    .line 905
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5ContentProviderImpl"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 908
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 886
    .restart local v2    # "index":I
    :cond_1
    :try_start_5
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mConnList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 887
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 890
    :try_start_6
    const-string/jumbo v4, "H5ContentProviderImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "disconnect inputStreamList "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mInputStreamList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mInputStreamList:Ljava/util/List;

    monitor-enter v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 893
    :try_start_7
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mInputStreamList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 895
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 896
    :catch_2
    move-exception v0

    .line 897
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v6, "H5ContentProviderImpl"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 901
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 900
    :cond_2
    :try_start_b
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mInputStreamList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 901
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2
.end method

.method public getContent(Landroid/net/Uri;Ljava/lang/String;Liop;ZZZ)Landroid/webkit/WebResourceResponse;
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "originUrl"    # Ljava/lang/String;
    .param p3, "page"    # Liop;
    .param p4, "canUseFallback"    # Z
    .param p5, "canAsyncFallback"    # Z
    .param p6, "isMainDoc"    # Z

    .prologue
    .line 180
    :try_start_0
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "not invoke on ui thread!!!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :catch_0
    move-exception v22

    .line 426
    .local v22, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5ContentProviderImpl"

    const-string/jumbo v4, "load response from web catch exception "

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    const/16 v24, 0x0

    .end local v22    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-object v24

    .line 185
    :cond_1
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    const-string/jumbo v3, "H5ContentProviderImpl"

    const-string/jumbo v4, "invalid url parameter"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto :goto_0

    .line 190
    :cond_2
    const-string/jumbo v3, "file://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "http://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "https://"

    .line 191
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 192
    const-string/jumbo v3, "H5ContentProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "skip load resource for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/16 v24, 0x0

    goto :goto_0

    .line 196
    :cond_3
    const/16 v18, 0x0

    .line 200
    .local v18, "inputStream":Ljava/io/InputStream;
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->purifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, "pureUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->hasTinyGoOnline:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "https://appx"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    const-string/jumbo v3, "H5ContentProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "hasTinyGoOnline true use tinyRes again "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getTinyResFallbackUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 206
    const-string/jumbo v3, "https://"

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getTinyResFallbackUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 207
    .local v16, "finalUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildOnlineContent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 211
    .end local v16    # "finalUrl":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v3, :cond_8

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v13

    .line 214
    .local v13, "data":[B
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mTryConcatOnlineHost:Z

    if-eqz v3, :cond_5

    if-nez v13, :cond_5

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->onlineHost:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->onlineHost:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v13

    .line 218
    :cond_5
    if-eqz v13, :cond_8

    .line 219
    new-instance v18, Ljava/io/ByteArrayInputStream;

    .end local v18    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 220
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    sget-object v3, Lios;->c:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 221
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 264
    :cond_6
    :goto_1
    const-string/jumbo v3, "H5ContentProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[main_pkg] load response from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mAppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    iget-object v5, v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v13

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 241
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mHasResourceOffline:Z

    if-nez v3, :cond_6

    .line 242
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mHasResourceOffline:Z

    .line 243
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 274
    .end local v13    # "data":[B
    :cond_8
    const/4 v14, 0x0

    .line 275
    .local v14, "disableResPkg":Z
    if-eqz p3, :cond_9

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->disableResPkg(Liop;)Z

    move-result v14

    .line 278
    :cond_9
    if-nez v14, :cond_e

    .line 279
    move/from16 v0, p6

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getContent(Ljava/lang/String;Z)[B

    move-result-object v13

    .line 280
    .restart local v13    # "data":[B
    if-eqz v13, :cond_a

    .line 281
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->onGlobalResourceHit(Landroid/net/Uri;)V

    .line 282
    new-instance v18, Ljava/io/ByteArrayInputStream;

    .end local v18    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 283
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 287
    :cond_a
    if-eqz p6, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mainUrlCanDegrade:Z

    if-eqz v3, :cond_c

    .line 288
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getContent(Ljava/lang/String;)[B

    move-result-object v13

    .line 289
    if-eqz v13, :cond_d

    .line 290
    new-instance v18, Ljava/io/ByteArrayInputStream;

    .end local v18    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 291
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 294
    :cond_c
    const-string/jumbo v3, "H5ContentProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[getContent] not use degrade res for url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isMainDoc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mainUrlCanDegrade: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mainUrlCanDegrade:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .end local v13    # "data":[B
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mContentMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 303
    .local v12, "content":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 304
    const-string/jumbo v3, "H5ContentProviderImpl"

    const-string/jumbo v4, "load response from map local."

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v3, "text/html"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 299
    .end local v12    # "content":Ljava/lang/String;
    :cond_e
    const-string/jumbo v3, "H5ContentProviderImpl"

    const-string/jumbo v4, "disable respkg by SystemWebView & 4.x"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 309
    .restart local v12    # "content":Ljava/lang/String;
    :cond_f
    const-string/jumbo v3, "file://"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->offlineHost:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const/16 v23, 0x1

    .line 310
    .local v23, "unsafe":Z
    :goto_3
    const-string/jumbo v3, "https://alipay.com/h5container/un_safe.html"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    if-eqz v23, :cond_12

    .line 313
    :cond_10
    const-string/jumbo v3, "H5ContentProviderImpl"

    const-string/jumbo v4, "load response forbidden by safe strategy."

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->unsafeUrl:Ljava/lang/String;

    new-instance v5, Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->unsafeUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v5, v9, v0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 309
    .end local v23    # "unsafe":Z
    :cond_11
    const/16 v23, 0x0

    goto :goto_3

    .line 315
    .restart local v23    # "unsafe":Z
    :cond_12
    const-string/jumbo v3, "https://alipay.com/h5container/redirect_link.html"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 316
    sget v3, Lcom/alipay/mobile/nebula/R$raw;->redirect_link:I

    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v21

    .line 317
    .local v21, "rawStr":Ljava/lang/String;
    const-string/jumbo v3, "####"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 318
    .local v17, "html":Ljava/lang/String;
    const-string/jumbo v3, "text/html"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 319
    .end local v17    # "html":Ljava/lang/String;
    .end local v21    # "rawStr":Ljava/lang/String;
    :cond_13
    const-string/jumbo v3, "https://alipay.com/h5container/white_link.html"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 320
    sget v3, Lcom/alipay/mobile/nebula/R$raw;->white_link:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(I)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 321
    :cond_14
    const-string/jumbo v3, "https://alipay.com/h5container/security_link.html"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 322
    sget v3, Lcom/alipay/mobile/nebula/R$raw;->security_link:I

    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v21

    .line 323
    .restart local v21    # "rawStr":Ljava/lang/String;
    const-string/jumbo v3, "####"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 324
    .restart local v17    # "html":Ljava/lang/String;
    const-string/jumbo v3, "text/html"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 325
    .end local v17    # "html":Ljava/lang/String;
    .end local v21    # "rawStr":Ljava/lang/String;
    :cond_15
    const-string/jumbo v3, "https://a.alipayobjects.com/bridgeapi/1.0/jsready.js"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 326
    const-string/jumbo v3, "H5ContentProviderImpl"

    const-string/jumbo v4, "load response for h5 js bridge"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v11, 0x0

    .line 328
    .local v11, "bridge":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mH5Page:Liop;

    instance-of v3, v3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v3, :cond_16

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mH5Page:Liop;

    check-cast v3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->composeBridge()Ljava/lang/String;

    move-result-object v11

    .line 331
    :cond_16
    const-string/jumbo v3, "application/javascript"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 334
    .end local v11    # "bridge":Ljava/lang/String;
    :cond_17
    const-string/jumbo v3, "/favicon.ico"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, "/favicon.png"

    .line 335
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, "/favicon2.ico"

    .line 336
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 337
    :cond_18
    const-string/jumbo v3, "H5ContentProviderImpl"

    const-string/jumbo v4, "favicon request intercepted"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string/jumbo v3, "image/x-icon"

    const-string/jumbo v4, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 341
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->resProvider:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->resProvider:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    invoke-interface {v3, v7}, Lcom/alipay/mobile/nebula/provider/H5ResProvider;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 342
    const-string/jumbo v3, "H5ContentProviderImpl"

    const-string/jumbo v4, "load response from resource provider."

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->resProvider:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    invoke-interface {v3, v7}, Lcom/alipay/mobile/nebula/provider/H5ResProvider;->getResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 348
    :cond_1a
    const-string/jumbo v3, "https://appx"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 349
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getUrlFromOnline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 350
    .local v20, "onlineUrl":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getTinyResFallbackUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildOnlineContent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 355
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getTinyResFallbackUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 356
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->hasTinyGoOnline:Z

    .line 357
    const-string/jumbo v3, "https://"

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getTinyResFallbackUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 358
    .restart local v16    # "finalUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildOnlineContent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 364
    .end local v16    # "finalUrl":Ljava/lang/String;
    .end local v20    # "onlineUrl":Ljava/lang/String;
    :cond_1c
    const/4 v8, 0x0

    .line 365
    .local v8, "fallbackUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->enableFallback:Z

    if-eqz v3, :cond_1d

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 370
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->enableFallback:Z

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->enableFallbackUrl:Z

    if-eqz v3, :cond_1f

    .line 371
    const/16 v19, 0x0

    .line 372
    .local v19, "mimeType":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 373
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 374
    .local v15, "filePath":Ljava/lang/String;
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 375
    new-instance v18, Ljava/io/ByteArrayInputStream;

    .end local v18    # "inputStream":Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 378
    .end local v15    # "filePath":Ljava/lang/String;
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    :cond_1e
    new-instance v24, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v3, "fallbackUrl"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 381
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_1f
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    if-eqz p4, :cond_23

    .line 382
    if-eqz p5, :cond_20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mEnableNetworkFallbackAsync:Z

    if-eqz v3, :cond_20

    if-eqz p3, :cond_20

    invoke-interface/range {p3 .. p3}, Liop;->pageIsClose()Z

    move-result v3

    if-nez v3, :cond_20

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFallbackUrlMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->handleFallbackInfo(Lcom/alipay/mobile/nebulacore/web/H5InputStream;Liop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 387
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 390
    :cond_20
    new-instance v6, Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v8, v0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;)V

    .line 391
    .local v6, "is":Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    iget-object v3, v6, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v3, :cond_21

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 392
    invoke-direct/range {v5 .. v10}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getFallbackStream(Lcom/alipay/mobile/nebulacore/web/H5InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 394
    :cond_21
    const-string/jumbo v3, "H5ContentProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "fallback realStream or contentPackage is null, statusCode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v6, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->statusCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " fallbackUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_22

    .line 399
    if-eqz p3, :cond_22

    invoke-interface/range {p3 .. p3}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 400
    const-string/jumbo v3, "pageLoad|loadFrom"

    const-string/jumbo v4, "fallback"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    :cond_22
    iget-object v3, v6, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 407
    .end local v6    # "is":Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    :cond_23
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_24

    .line 408
    if-eqz p3, :cond_24

    invoke-interface/range {p3 .. p3}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 409
    const-string/jumbo v3, "pageLoad|loadFrom"

    const-string/jumbo v4, "online"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    :cond_24
    const-string/jumbo v3, "H5ContentProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "load response from web "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFirstReq:Z

    if-eqz v3, :cond_25

    .line 414
    const-string/jumbo v3, "NO"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->setLocal(Ljava/lang/String;)V

    .line 417
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h5ResourceHandler:Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    if-eqz v3, :cond_26

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h5ResourceHandler:Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    .line 419
    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v24

    .line 420
    .local v24, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-nez v24, :cond_0

    .line 424
    .end local v24    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_26
    const/16 v24, 0x0

    goto/16 :goto_0
.end method

.method public getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .param p1, "originUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 593
    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Landroid/net/Uri;Ljava/lang/String;Liop;ZZZ)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Ljava/lang/String;Z)Landroid/webkit/WebResourceResponse;
    .locals 7
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "fallback"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 598
    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move v4, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Landroid/net/Uri;Ljava/lang/String;Liop;ZZZ)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onGetResponse"    # Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 605
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 626
    return-void
.end method

.method public getContentOnUi(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseListen"    # Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 647
    if-nez p2, :cond_0

    .line 648
    :try_start_0
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "responseListen == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :goto_0
    return-void

    .line 652
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->enableUseGetContentOnUi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v7

    .line 711
    .local v7, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v0, "H5ContentProviderImpl"

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 659
    .end local v7    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 660
    .local v4, "time":J
    const/4 v6, 0x0

    .line 661
    .local v6, "data":[B
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v0, :cond_2

    .line 662
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v6

    .line 664
    :cond_2
    if-eqz v6, :cond_3

    .line 665
    const/4 v0, 0x0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p1, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->buildContent(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    .line 666
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getContentOnUi form contentPackage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_3
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v8

    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;J)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getContentPackageStatus()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-nez v0, :cond_0

    .line 502
    const-string/jumbo v0, ""

    .line 508
    :goto_0
    return-object v0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_Y_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 506
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppCredit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 508
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_N_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 509
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppCredit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getFallbackUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "originUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 734
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFallbackUrlMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFallbackUrlMap:Ljava/util/Map;

    .line 735
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const-string/jumbo v1, "H5ContentProviderImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getFallbackUrl originUrl is : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", fallbackUrl is : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFallbackUrlMap:Ljava/util/Map;

    .line 738
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFallbackUrlMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 741
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mIsLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalResource(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLottieAnimationImgsCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 490
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 497
    :cond_0
    return v0

    .line 491
    :cond_1
    const/4 v0, 0x0

    .line 492
    .local v0, "count":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->keySet()Ljava/util/Set;

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

    .line 493
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasInputException()Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->hasInputException:Z

    return v0
.end method

.method public mapContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mContentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    return-void
.end method

.method public onInputClose(Lcom/alipay/mobile/nebulacore/web/H5InputStream;)V
    .locals 2
    .param p1, "his"    # Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 847
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "on input stream close."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mConnList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 849
    return-void
.end method

.method public onInputException()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->hasInputException:Z

    .line 860
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "h5InputStream exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method public onInputOpen(Lcom/alipay/mobile/nebulacore/web/H5InputStream;)V
    .locals 2
    .param p1, "his"    # Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 853
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "on input stream open."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mConnList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    return-void
.end method

.method public reSetLocal()V
    .locals 1

    .prologue
    .line 961
    const-string/jumbo v0, "YES"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mIsLocal:Ljava/lang/String;

    .line 962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFirstReq:Z

    .line 963
    return-void
.end method

.method public releaseContent()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 930
    const-string/jumbo v2, "H5ContentProviderImpl"

    const-string/jumbo v3, "releaseContent"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v2, :cond_0

    .line 933
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->releaseContent()V

    .line 936
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->sessionId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->clearPackage(Ljava/lang/String;)V

    .line 937
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFallbackExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_1

    .line 939
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFallbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :cond_1
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mH5Page:Liop;

    .line 946
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFallbackUrlMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 948
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->mFallbackUrlMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 953
    :cond_2
    :goto_1
    return-void

    .line 940
    :catch_0
    move-exception v1

    .line 941
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5ContentProviderImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 949
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5ContentProviderImpl"

    const-string/jumbo v3, "clear mFallbackUrlMap exception "

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setEnableFallbackUrl(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 722
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->enableFallbackUrl:Z

    .line 723
    return-void
.end method

.method public setFallbackCache(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 727
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->contentPackage:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->purifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_0
    return-void
.end method
