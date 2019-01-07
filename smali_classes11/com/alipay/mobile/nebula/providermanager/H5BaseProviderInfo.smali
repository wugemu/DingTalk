.class public Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;
.super Ljava/lang/Object;
.source "H5BaseProviderInfo.java"


# static fields
.field public static final nebulaappproxy:Ljava/lang/String; = "android-phone-wallet-nebulaappproxy"

.field public static final nebulabiz:Ljava/lang/String; = "android-phone-wallet-nebulabiz"

.field public static final nebulauc:Ljava/lang/String; = "android-phone-wallet-nebulauc"

.field public static providerInfoMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final tinyappcommon:Ljava/lang/String; = "android-phone-wallet-tinyappcommon"

.field public static final tinyappservice:Ljava/lang/String; = "android-phone-wallet-tinyappservice"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 43
    sput-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5TraceProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    .line 44
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.alipay.mobile.nebulacore.dev.trace.H5TraceProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5LogProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 48
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.alipay.mobile.nebulacore.wallet.H5LogProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5ThreadPoolProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    .line 52
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.alipay.mobile.nebulacore.wallet.H5ThreadPoolProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5ABTestProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5ABTestProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5APMTool"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5APMToolImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5EnvProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.WalletEnvProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5ConfigProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.WalletConfigProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5CacheProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.WalletCacheProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5PreRpcProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.WalletPreRpcProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5LocationDialogProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.WalletLocationDialogProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5ChannelProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.WalletChannelProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5ImageProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.WalletImageProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5ImageUploadProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.WalletImageUploadProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5CardShareProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.WalletCardShareProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5LastKnowLocationProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.WalletLastKnowLocationProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5AppProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.baseprovider.H5BaseAppProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5JSApiPermissionProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5JSApiPermissionProviderImp"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5DialogManagerProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5WalletDialogProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5ListPopDialogProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5WalletListPopDialogProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5ToastProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5WalletToastProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5SharePanelProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5SharePanelProviderImp"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5AppCenterPresetProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.appcenter.H5AppCenterPresetProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5InputBoardProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5InputBoardProviderImpEx"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5BugMeRpcAuthProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5BugMeRpcAuthProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5LoginProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5LoginProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5ActionSheetProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5AntUIActionSheetProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.search.H5SearchView"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5SearchViewImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.resourcehandler.H5ResourceHandler"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5ResourceHandlerImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5478Provider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5478ProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5LoadingDialog"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5LoadingDialogImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5SimpleRpcProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5SimpleRpcProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5OpenAuthProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5OpenAuthProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5RpcProxyProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5RpcProxyProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5AutoLoginProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5UCProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulauc"

    const-string/jumbo v4, "com.alipay.mobile.nebulauc.provider.H5UCProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5PreConnectProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulauc"

    const-string/jumbo v4, "com.alipay.mobile.nebulauc.impl.network.provider.H5PreConnectProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5FallbackStreamProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulauc"

    const-string/jumbo v4, "com.alipay.mobile.nebulauc.impl.network.provider.UCFallbackStreamProvider"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5WebViewPathProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulauc"

    const-string/jumbo v4, "com.alipay.mobile.nebulauc.provider.UcPathProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5AppBizRpcProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulaappproxy"

    const-string/jumbo v4, "com.alipay.mobile.nebulaappproxy.provider.WalletAppBizRpcImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.appcenter.download.H5ExternalDownloadManager"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulaappproxy"

    const-string/jumbo v4, "com.alipay.mobile.nebulaappproxy.api.download2.H5ExternalDownloadManagerProxy"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5PatchProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulaappproxy"

    const-string/jumbo v4, "com.alipay.mobile.nebulaappproxy.provider.H5PatchProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-tinyappservice"

    const-string/jumbo v4, "com.alipay.mobile.tinyappservice.tinypermission.H5ApiManagerImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-tinyappcommon"

    const-string/jumbo v4, "com.alipay.mobile.tinyappcommon.dynamicpanel.H5TinyPopMenu"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-tinyappcommon"

    const-string/jumbo v4, "com.alipay.mobile.tinyappcommon.provider.H5TinyAppProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-tinyappcommon"

    const-string/jumbo v4, "com.alipay.mobile.tinyappcommon.view.TinyAppActivityLoadingView"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5LottieViewProvider"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5LottieViewProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.nebula.provider.H5ErrorPageView"

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5ErrorPageViewImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5StartParamCheck;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5StartParamCheckImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TimeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5TimeServiceImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5PermissionManagerImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5UrlDownloadProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5UrlDownloadProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyDebugModeProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5TinyDebugModeProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5SchemeInterceptProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5SchemeInterceptProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5HttpErrorRouterProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5HttpErrorRouterProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/alipay/mobile/nebula/providermanager/H5BaseProviderInfo;->providerInfoMap:Ljava/util/Map;

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5PullHeaderViewProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    const-string/jumbo v4, "com.alipay.mobile.nebulabiz.provider.H5PullHeaderViewProviderImpl"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
