.class public Lcom/alipay/mobile/nebula/util/H5Utils;
.super Ljava/lang/Object;
.source "H5Utils.java"


# static fields
.field private static final CLOSE_FLAG:I = -0x1

.field public static final EGG_PAIN_IP:Ljava/lang/String; = "0.0.0.0"

.field public static final KEY_APK_WHITE_LIST:Ljava/lang/String; = "h5_ApkWhiteList"

.field public static final KEY_CLEAR_STATE:Ljava/lang/String; = "h5_ssoLoginNeedClearState"

.field public static final KEY_ENABLE_EXTERNAL_WEBVIEW:Ljava/lang/String; = "h5_enableExternalWebView"

.field public static final KEY_ENTRANCE_WHITELIST:Ljava/lang/String; = "h5_entranceWhiteListSwitch"

.field public static final KEY_EXTERNAL_WEBVIEW_MODEL:Ljava/lang/String; = "h5_externalWebViewModel"

.field public static final KEY_EXTERNAL_WEBVIEW_SDK_VERSION:Ljava/lang/String; = "h5_externalWebViewSdkVersion"

.field public static final KEY_EXTERNAL_WEBVIEW_USAGE_RULE:Ljava/lang/String; = "h5_externalWebViewUsageRule"

.field public static final KEY_H5_AUTO_LOGIN_SWITCH:Ljava/lang/String; = "h5_autoLoginSwitch"

.field public static final KEY_H5_CDN_WEBP_CONFIG:Ljava/lang/String; = "h5_cdnWebPConfig"

.field public static final KEY_H5_COMMON_CONFIG:Ljava/lang/String; = "h5_commonConfig"

.field public static final KEY_H5_FORCE_UC:Ljava/lang/String; = "h5_forceUc"

.field public static final KEY_H5_SHARE_TO_ALP_TIMELINE_SWITCH:Ljava/lang/String; = "h5_share2ALPTimeLineSwitch"

.field public static final KEY_H5_WEBVIEW_CONFIG:Ljava/lang/String; = "h5_webViewConfig"

.field public static final KEY_INPUT_WARNING_TEXT:Ljava/lang/String; = "h5_inputWarningText"

.field public static final KEY_INPUT_WHITE_LIST_SWITCH:Ljava/lang/String; = "inputWhiteListSwitch"

.field public static final KEY_JSAPI_SWITCH:Ljava/lang/String; = "jsApiSwitch"

.field public static final KEY_MAIN_SWITCH:Ljava/lang/String; = "mainSwitch"

.field public static final KEY_SHARE_CHANNELS:Ljava/lang/String; = "h5_shareChannels"

.field public static final KEY_SSO_LOGIN:Ljava/lang/String; = "h5_ssoLogin"

.field public static final KEY_SSO_LOGIN_SWITCH:Ljava/lang/String; = "ssoLoginSwitch"

.field public static final KEY_TBSSO_TIMEOUT:Ljava/lang/String; = "tbssoLoginTimeout"

.field private static final MAX_STR_LENGTH:I = 0x1388

.field public static final NETWORK_TYPE_2G:Ljava/lang/String; = "2G"

.field public static final NETWORK_TYPE_3G:Ljava/lang/String; = "3G"

.field public static final NETWORK_TYPE_4G:Ljava/lang/String; = "4G"

.field public static final NETWORK_TYPE_NOTREACHABLE:Ljava/lang/String; = "NotReachable"

.field public static final NETWORK_TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field public static final SCAN_APP_ID:Ljava/lang/String; = "10000007"

.field public static final SCAN_TYPE_KEY:Ljava/lang/String; = "useScan"

.field public static final SCHEME_INNER_SOURCE:Ljava/lang/String; = "schemeInnerSource"

.field public static final TAG:Ljava/lang/String; = "H5Utils"

.field private static currentProcessName:Ljava/lang/String;

.field private static isDebug:Ljava/lang/Boolean;

.field public static ldcLevel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    sput-object v0, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug:Ljava/lang/Boolean;

    .line 143
    sput-object v0, Lcom/alipay/mobile/nebula/util/H5Utils;->currentProcessName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChooseImageCrossOrigin(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1528
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://resource/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "image"

    .line 1529
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableChooseImageCrossOrigin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1528
    goto :goto_0
.end method

.method public static base64ToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "base64"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .prologue
    .line 480
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    :cond_0
    const/4 v0, 0x0

    .line 483
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static containNebulaAddcors(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1491
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nebula-addcors"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 230
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5Utils"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static contains(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 338
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deParameterizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 728
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    .local v0, "e":Ljava/net/MalformedURLException;
    :goto_0
    return-object p0

    .line 732
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    move-object v3, p0

    .line 738
    .local v3, "targetUrl":Ljava/lang/String;
    const-string/jumbo v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 739
    .local v1, "inPageHashStart":I
    if-eq v1, v5, :cond_1

    .line 740
    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 743
    :cond_1
    const-string/jumbo v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 744
    .local v2, "queryParamStart":I
    if-eq v2, v5, :cond_2

    .line 745
    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object p0, v3

    .line 747
    goto :goto_0

    .line 733
    .end local v1    # "inPageHashStart":I
    .end local v2    # "queryParamStart":I
    .end local v3    # "targetUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 734
    .restart local v0    # "e":Ljava/net/MalformedURLException;
    const-string/jumbo v4, "H5Utils"

    const-string/jumbo v5, "exception detail"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static dip2px(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # I

    .prologue
    .line 952
    int-to-float v1, p1

    :try_start_0
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 956
    :goto_0
    return v1

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "H5Utils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 956
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static enableAddUseScan()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1549
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1550
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 1551
    const-string/jumbo v3, "h5_enableAddUseScan"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1552
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1554
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1552
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static enableCheckCrossOrigin()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1495
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1496
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 1497
    const-string/jumbo v3, "h5_enableCheckCrossOrigin"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1498
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1500
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1498
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static enableChooseImageCrossOrigin()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1533
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1534
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_0

    .line 1535
    const-string/jumbo v3, "h5_enableChooseImageCrossOrigin"

    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1536
    .local v0, "config":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1538
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1536
    .restart local v0    # "config":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static enableCleanUrl()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1657
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1658
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 1659
    const-string/jumbo v3, "h5_enableCleanUrl"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1660
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1662
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1660
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static enableExitAndStartAppOnMain()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1518
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1519
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 1520
    const-string/jumbo v3, "h5_enableExitAndStartAppOnMain"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1521
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1523
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1521
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static enableJsApiPerformance()Z
    .locals 3

    .prologue
    .line 1506
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1507
    const/4 v2, 0x1

    .line 1514
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :goto_0
    return v2

    .line 1509
    .end local v0    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1510
    .restart local v0    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_1

    .line 1511
    const-string/jumbo v2, "h5_enableJsApiPerformance"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1512
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 1514
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static eventFromTinyProcess(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 3
    .param p0, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    const/4 v1, 0x0

    .line 1359
    if-eqz p0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->h:Ljava/lang/Object;

    .line 1359
    if-eqz v0, :cond_0

    .line 3145
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->h:Ljava/lang/Object;

    .line 1360
    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 4145
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->h:Ljava/lang/Object;

    .line 1361
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "isTinyApp"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 1363
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 1144
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1145
    return-void
.end method

.method public static final findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1033
    invoke-static {p0}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 14
    .param p0, "currentUrl"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "startParam"    # Landroid/os/Bundle;

    .prologue
    .line 519
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 520
    .local v10, "uri":Landroid/net/Uri;
    if-nez v10, :cond_1

    .line 572
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 524
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 525
    .local v9, "scheme":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "absUrl":Ljava/lang/String;
    const-string/jumbo v11, "//"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 531
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 532
    const/4 p1, 0x0

    goto :goto_0

    .line 534
    :cond_2
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 535
    .local v4, "currentUri":Landroid/net/Uri;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 536
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, "hostScheme":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .end local v5    # "hostScheme":Ljava/lang/String;
    :cond_3
    const-string/jumbo v11, "H5Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "getAbsoluteUrl // "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "currentUri":Landroid/net/Uri;
    :goto_1
    move-object p1, v0

    .line 572
    goto :goto_0

    .line 540
    :cond_4
    const-string/jumbo v11, "/"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 541
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 542
    .restart local v4    # "currentUri":Landroid/net/Uri;
    if-nez v4, :cond_5

    .line 543
    const/4 p1, 0x0

    goto :goto_0

    .line 545
    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, "currentScheme":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "authority":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 548
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_6
    const-string/jumbo v11, "H5Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "getAbsoluteUrl / "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 552
    .end local v1    # "authority":Ljava/lang/String;
    .end local v3    # "currentScheme":Ljava/lang/String;
    .end local v4    # "currentUri":Landroid/net/Uri;
    :cond_7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 553
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 556
    :cond_8
    const-class v11, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 557
    .local v8, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v8, :cond_9

    .line 558
    const-string/jumbo v11, "h5_getAbsoluteUrlRemoveQuery"

    invoke-interface {v8, v11}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "configStr":Ljava/lang/String;
    const-string/jumbo v11, "NO"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 560
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->purifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 564
    .end local v2    # "configStr":Ljava/lang/String;
    :cond_9
    const-string/jumbo v11, "/"

    invoke-virtual {p0, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 565
    .local v6, "index":I
    const/4 v11, -0x1

    if-ne v6, v11, :cond_a

    .line 566
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 568
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 569
    .local v7, "prefix":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    const-string/jumbo v11, "H5Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "getAbsoluteUrl else "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static getAbsoluteUrlV2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 11
    .param p0, "currentUrl"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "startParam"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 576
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 577
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_1

    .line 617
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 580
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 581
    .local v6, "scheme":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "absUrl":Ljava/lang/String;
    const-string/jumbo v9, "./"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 586
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 587
    .local v3, "currentUri":Landroid/net/Uri;
    if-nez v3, :cond_2

    move-object p1, v8

    .line 588
    goto :goto_0

    .line 590
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "currentScheme":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "authority":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 594
    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 595
    .local v4, "indexPath":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 596
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    .end local v4    # "indexPath":I
    :goto_1
    const-string/jumbo v8, "H5Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getAbsoluteUrlV2 ./ "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "path":Ljava/lang/String;
    :goto_2
    move-object p1, v0

    .line 617
    goto :goto_0

    .line 598
    .restart local v5    # "path":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 602
    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "currentScheme":Ljava/lang/String;
    .end local v3    # "currentUri":Landroid/net/Uri;
    .end local v5    # "path":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 603
    .restart local v3    # "currentUri":Landroid/net/Uri;
    if-nez v3, :cond_5

    move-object p1, v8

    .line 604
    goto/16 :goto_0

    .line 606
    :cond_5
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 607
    .restart local v2    # "currentScheme":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 608
    .restart local v1    # "authority":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 609
    const-string/jumbo v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 610
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    :cond_6
    :goto_3
    const-string/jumbo v8, "H5Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getAbsoluteUrlV2 / or else "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 612
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static getAbsoluteUrlWithURLLib(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 622
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 637
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 625
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 626
    .local v4, "scheme":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 629
    const/4 v0, 0x0

    .line 631
    .local v0, "absUrl":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 632
    .local v1, "base":Ljava/net/URL;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 633
    .local v3, "result":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v1    # "base":Ljava/net/URL;
    .end local v3    # "result":Ljava/net/URL;
    :goto_1
    move-object p1, v0

    .line 637
    goto :goto_0

    .line 634
    :catch_0
    move-exception v2

    .line 635
    .local v2, "e":Ljava/net/MalformedURLException;
    const-string/jumbo v6, "H5Utils"

    const-string/jumbo v7, "getAbsoluteUrlWithURLLib fatal error "

    invoke-static {v6, v7, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getAuthInfo()Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .prologue
    .line 1347
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 1348
    .local v0, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    if-eqz v0, :cond_0

    .line 1349
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1350
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "nick"

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getNick()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    const-string/jumbo v2, "userAvatar"

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    .end local v1    # "result":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # Z

    .prologue
    .line 202
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # Z

    .prologue
    .line 294
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 972
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "ignoreError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 976
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 831
    if-nez p0, :cond_1

    .line 832
    const/4 v0, 0x0

    .line 839
    :cond_0
    :goto_0
    return-object v0

    .line 835
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "clazz":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 837
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCleanUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1635
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableCleanUrl()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1653
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1638
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1641
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1643
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 1644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1645
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 1646
    .local v2, "scheme":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1647
    .local v0, "authority":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    const-string/jumbo v5, "://"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "cleanUrl":Ljava/lang/String;
    move-object p0, v1

    .line 1651
    goto :goto_0
.end method

.method public static getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 384
    const/4 v8, 0x0

    .line 386
    .local v8, "value":Z
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "content://com.alipay.setting/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 387
    .local v1, "contentUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 388
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 392
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 403
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v10

    .line 396
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v9, :cond_2

    move v8, v9

    .line 399
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_2
    move v10, v8

    .line 403
    goto :goto_0

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v8, v10

    .line 397
    goto :goto_1

    .line 400
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 401
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5Utils"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static getConfigString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 365
    const/4 v8, 0x0

    .line 367
    .local v8, "value":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "content://com.alipay.setting/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 368
    .local v1, "contentUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 369
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 373
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 376
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v8

    .line 377
    :catch_0
    move-exception v7

    .line 378
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5Utils"

    const-string/jumbo v3, "exception detail"

    invoke-static {v2, v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1131
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDouble(Landroid/os/Bundle;Ljava/lang/String;)D
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 222
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getDouble(Landroid/os/Bundle;Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDouble(Landroid/os/Bundle;Ljava/lang/String;D)D
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # D

    .prologue
    .line 226
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 1136
    invoke-static {p0}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static final getExtServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1038
    invoke-static {p0}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFloat(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)F
    .locals 1
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getFloat(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;F)F
    .locals 1
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # F

    .prologue
    .line 318
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 1

    .prologue
    .line 1161
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    return-object v0
.end method

.method public static getHpmFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 1187
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getHpmFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/os/Bundle;Ljava/lang/String;I)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # I

    .prologue
    .line 210
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I
    .locals 1
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I
    .locals 1
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # I

    .prologue
    .line 302
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;
    .locals 1
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 331
    if-nez p2, :cond_0

    .line 332
    new-instance p2, Lcom/alibaba/fastjson/JSONArray;

    .end local p2    # "df":Lcom/alibaba/fastjson/JSONArray;
    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 334
    .restart local p2    # "df":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public static getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 323
    if-nez p2, :cond_0

    .line 324
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    .end local p2    # "df":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 326
    .restart local p2    # "df":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public static getLong(Landroid/os/Bundle;Ljava/lang/String;)J
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Landroid/os/Bundle;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/os/Bundle;Ljava/lang/String;J)J
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # J

    .prologue
    .line 218
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)J
    .locals 2
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 306
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;J)J
    .locals 2
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # J

    .prologue
    .line 310
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "logStr"    # Ljava/lang/String;

    .prologue
    .line 1600
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1610
    .end local p0    # "logStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1603
    .restart local p0    # "logStr":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxStrLength()I

    move-result v0

    .line 1604
    .local v0, "maxLength":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1607
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1608
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getMaxStrLength()I
    .locals 4

    .prologue
    .line 1614
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1615
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 1616
    const-string/jumbo v3, "h5_maxUrlLogLength"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1617
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1619
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1625
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return v3

    .line 1620
    .restart local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1621
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5Utils"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1625
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x1388

    goto :goto_0
.end method

.method public static getNebulaBizResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1152
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getNebulaBizResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getNebulaCoreResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1156
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getNebulaCoreResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getNebulaResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1148
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getNebulaResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 906
    const-string/jumbo v4, "connectivity"

    .line 907
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 908
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 910
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 914
    :goto_0
    if-eqz v1, :cond_0

    .line 915
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 921
    const-string/jumbo v4, "phone"

    .line 922
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 923
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 944
    :pswitch_0
    const-string/jumbo v4, "UNKNOWN"

    .line 947
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_1
    return-object v4

    .line 911
    :catch_0
    move-exception v2

    .line 912
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5Utils"

    const-string/jumbo v5, "get network info exception."

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 918
    .end local v2    # "t":Ljava/lang/Throwable;
    :sswitch_0
    const-string/jumbo v4, "WIFI"

    goto :goto_1

    .line 929
    .restart local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :pswitch_1
    const-string/jumbo v4, "2G"

    goto :goto_1

    .line 940
    :pswitch_2
    const-string/jumbo v4, "3G"

    goto :goto_1

    .line 942
    :pswitch_3
    const-string/jumbo v4, "4G"

    goto :goto_1

    .line 947
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    const-string/jumbo v4, "NotReachable"

    goto :goto_1

    .line 915
    .line 923
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v3, v6

    .line 172
    :cond_0
    :goto_0
    return-object v3

    .line 152
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 154
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 156
    .local v4, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v4, :cond_2

    .line 157
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getPkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    goto :goto_0

    .line 159
    :cond_2
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 160
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 161
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 162
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getPkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 168
    .end local v1    # "index":I
    .end local v4    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "H5Utils"

    const-string/jumbo v8, "exception detail"

    invoke-static {v7, v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v6

    .line 172
    goto :goto_0
.end method

.method public static getPkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 180
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 182
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 184
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v2, "H5Utils"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1318
    :try_start_0
    sget-object v4, Lcom/alipay/mobile/nebula/util/H5Utils;->currentProcessName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1319
    sget-object v4, Lcom/alipay/mobile/nebula/util/H5Utils;->currentProcessName:Ljava/lang/String;

    .line 1333
    .local v2, "pid":I
    :goto_0
    return-object v4

    .line 1322
    .end local v2    # "pid":I
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1323
    .restart local v2    # "pid":I
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1325
    .local v1, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1326
    .local v3, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v2, :cond_1

    .line 1327
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v5, Lcom/alipay/mobile/nebula/util/H5Utils;->currentProcessName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1330
    .end local v1    # "manager":Landroid/app/ActivityManager;
    .end local v3    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v0

    .line 1331
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5Utils"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1333
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v4, Lcom/alipay/mobile/nebula/util/H5Utils;->currentProcessName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1165
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    .line 1166
    .local v0, "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1171
    :goto_0
    return-object v1

    .line 1169
    :cond_0
    const-string/jumbo v1, "H5Utils"

    const-string/jumbo v2, "h5ProviderManager == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 1140
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static getShareLoadingScheme(Ljava/lang/String;Ljava/lang/String;Liop;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5Page"    # Liop;

    .prologue
    .line 1401
    if-eqz p2, :cond_0

    invoke-interface {p2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1432
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1404
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "alipay"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1405
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1406
    .local v0, "alipaysUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1407
    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1408
    .local v2, "queryUrl":Ljava/lang/String;
    const-string/jumbo v4, "enableTabBar"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, "queryEnableTabbar":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1413
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1415
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    invoke-interface {p2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, p2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTabbarShareurl(Ljava/lang/String;Ljava/lang/String;Liop;Ljava/lang/StringBuilder;)V

    .line 1417
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1421
    .end local v0    # "alipaysUri":Landroid/net/Uri;
    .end local v1    # "queryEnableTabbar":Ljava/lang/String;
    .end local v2    # "queryUrl":Ljava/lang/String;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1422
    .restart local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1423
    const-string/jumbo p1, "20000067"

    .line 1425
    :cond_3
    const-string/jumbo v4, "alipays://platformapi/startapp?appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    const-string/jumbo v4, "&url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    invoke-static {p0, p1, p2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTabbarShareurl(Ljava/lang/String;Ljava/lang/String;Liop;Ljava/lang/StringBuilder;)V

    .line 1430
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string/jumbo v0, ""

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # Ljava/lang/String;

    .prologue
    .line 195
    if-nez p2, :cond_0

    .line 196
    const-string/jumbo p2, ""

    .line 198
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 283
    const-string/jumbo v0, ""

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "df"    # Ljava/lang/String;

    .prologue
    .line 287
    if-nez p2, :cond_0

    .line 288
    const-string/jumbo p2, ""

    .line 290
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getStripLandingURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "originUrl"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 657
    move-object v5, p0

    .line 658
    .local v5, "resultUrl":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 659
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 660
    .local v4, "originUri":Landroid/net/Uri;
    if-eqz v4, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 661
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "originPrefix":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 664
    .local v1, "landingPrefixs":Lcom/alibaba/fastjson/JSONArray;
    const/4 v6, 0x0

    .line 665
    .local v6, "schemes":Lcom/alibaba/fastjson/JSONArray;
    const-class v12, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 666
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 667
    const-string/jumbo v12, "h5_stripLandingConfig"

    invoke-interface {v0, v12}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 668
    .local v10, "value":Ljava/lang/String;
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 669
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 670
    const-string/jumbo v12, "urlPrefix"

    invoke-static {v2, v12, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 671
    const-string/jumbo v12, "scheme"

    invoke-static {v2, v12, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 675
    .end local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "value":Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    invoke-static {v3, v1, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->ifMatchLanding(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 676
    if-eqz v4, :cond_3

    const-string/jumbo v12, "scheme"

    invoke-virtual {v4, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 677
    .local v9, "tempResultUrl":Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 678
    .local v8, "tempResultUri":Landroid/net/Uri;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 679
    .local v7, "tempResultScheme":Ljava/lang/String;
    :goto_2
    const/4 v11, 0x1

    invoke-static {v7, v6, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->ifMatchLanding(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 680
    move-object v5, v9

    .line 684
    .end local v0    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v1    # "landingPrefixs":Lcom/alibaba/fastjson/JSONArray;
    .end local v3    # "originPrefix":Ljava/lang/String;
    .end local v4    # "originUri":Landroid/net/Uri;
    .end local v6    # "schemes":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "tempResultScheme":Ljava/lang/String;
    .end local v8    # "tempResultUri":Landroid/net/Uri;
    .end local v9    # "tempResultUrl":Ljava/lang/String;
    :cond_1
    const-string/jumbo v11, "H5Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "getStripLandingURL resultUrl "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    return-object v5

    .restart local v4    # "originUri":Landroid/net/Uri;
    :cond_2
    move-object v3, v11

    .line 661
    goto :goto_0

    .restart local v0    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v1    # "landingPrefixs":Lcom/alibaba/fastjson/JSONArray;
    .restart local v3    # "originPrefix":Ljava/lang/String;
    .restart local v6    # "schemes":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    move-object v9, v11

    .line 676
    goto :goto_1

    .restart local v8    # "tempResultUri":Landroid/net/Uri;
    .restart local v9    # "tempResultUrl":Ljava/lang/String;
    :cond_4
    move-object v7, v11

    .line 678
    goto :goto_2
.end method

.method public static getUid(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 769
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 771
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 770
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 772
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 779
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 773
    :catch_0
    move-exception v1

    .line 774
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "H5Utils"

    const-string/jumbo v4, "exception detail"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 779
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 775
    :catch_1
    move-exception v1

    .line 777
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "H5Utils"

    const-string/jumbo v4, "exception detail"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "df":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    .end local p2    # "df":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object p2

    .line 247
    .restart local p2    # "df":Ljava/lang/Object;, "TT;"
    :cond_1
    if-eqz p2, :cond_0

    .line 251
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    move-object v2, p2

    .line 255
    .local v2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 256
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    move-object v2, v1

    :goto_1
    move-object p2, v2

    .line 261
    goto :goto_0

    .line 259
    :cond_2
    const-string/jumbo v3, "H5Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[key] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [value] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 262
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5Utils"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 343
    .local p2, "df":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    .end local p2    # "df":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object p2

    .line 346
    .restart local p2    # "df":Ljava/lang/Object;, "TT;"
    :cond_1
    if-eqz p2, :cond_0

    .line 350
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    move-object v1, p2

    .line 355
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 356
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    move-object v1, v0

    :goto_1
    move-object p2, v1

    .line 361
    goto :goto_0

    .line 359
    :cond_2
    const-string/jumbo v2, "H5Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[key] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [value] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1198
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1199
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1200
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5Utils"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1204
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method private static handleTabbarShareurl(Ljava/lang/String;Ljava/lang/String;Liop;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5Page"    # Liop;
    .param p3, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1436
    invoke-interface {p2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 1437
    .local v1, "startParams":Landroid/os/Bundle;
    const-string/jumbo v2, "enableTabBar"

    .line 1438
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1439
    .local v0, "enableTabbar":Ljava/lang/String;
    const-string/jumbo v2, "H5Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "generateAlipayScheme4Tabbar enableTabbar"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const-string/jumbo v2, "YES"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "enableTabBar"

    .line 1442
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    .line 1443
    invoke-static {p1, p0, v1}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->ifUrlMatch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1444
    const-string/jumbo v2, "&enableTabBar=NO"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    :cond_0
    return-void
.end method

.method private static ifMatchLanding(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;I)Z
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "prefixs"    # Lcom/alibaba/fastjson/JSONArray;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 689
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 690
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 691
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "item":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 693
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 703
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/String;
    :cond_0
    :goto_1
    return v2

    .line 697
    .restart local v0    # "i":I
    .restart local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 690
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static ipToBytesByReg(Ljava/lang/String;)[B
    .locals 4
    .param p0, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 1116
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 1118
    .local v1, "ret":[B
    :try_start_0
    const-string/jumbo v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "ipArr":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1120
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1121
    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1122
    const/4 v2, 0x3

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    .end local v0    # "ipArr":[Ljava/lang/String;
    .end local v1    # "ret":[B
    :goto_0
    return-object v1

    .restart local v1    # "ret":[B
    :catch_0
    move-exception v2

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isCss(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 871
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".css"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 996
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 997
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    .line 999
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 980
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 983
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 984
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 990
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 985
    :catch_0
    move-exception v1

    .line 986
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5Utils"

    const-string/jumbo v4, "exception detail"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 990
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    sget-object v2, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public static final isImage(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 879
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return v0

    .line 883
    :cond_1
    const-string/jumbo v1, ".png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".jpg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".gif"

    .line 884
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".tiff"

    .line 885
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".pcx"

    .line 886
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".tga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".exif"

    .line 887
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".fpx"

    .line 888
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".svg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".psd"

    .line 889
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".cdr"

    .line 890
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".pcd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".dxf"

    .line 891
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".ufo"

    .line 892
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".eps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".ai"

    .line 893
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".raw"

    .line 894
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".webp"

    .line 895
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static isInTinyProcess()Z
    .locals 2

    .prologue
    .line 1341
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 1342
    .local v0, "currentProcessName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "lite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInWallet()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1252
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1253
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1255
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1256
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v4, "AlipayGphone"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1261
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 1256
    .restart local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1257
    .end local v2    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1258
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5Utils"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isInWifi()Z
    .locals 4

    .prologue
    .line 900
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "H5Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getNetworkType "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string/jumbo v1, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static final isJavascript(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 875
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".js"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLogicIP(Ljava/lang/String;)Z
    .locals 3
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 1093
    if-nez p0, :cond_0

    .line 1094
    const/4 v1, 0x0

    .line 1106
    :goto_0
    return v1

    .line 1097
    :cond_0
    const-string/jumbo v1, "0.0.0.0"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1098
    const/4 v1, 0x1

    goto :goto_0

    .line 1101
    :cond_1
    const-string/jumbo v0, "^(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|[1-9])\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)$"

    .line 1106
    .local v0, "regex":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isMain()Z
    .locals 2

    .prologue
    .line 487
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMainProcess()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1303
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1304
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1313
    :goto_0
    return v2

    .line 1307
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5Utils"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isStripLandingURLEnable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 643
    const/4 v2, 0x0

    .line 644
    .local v2, "result":Z
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 645
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 646
    const-string/jumbo v4, "h5_stripLandingConfig"

    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 648
    .local v1, "object":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 649
    const/4 v4, 0x0

    invoke-static {v1, p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 652
    .end local v1    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "H5Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isStripLandingURLEnable result "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    return v2
.end method

.method public static isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 2
    .param p0, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 1476
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTinyMiniService(Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1666
    const-string/jumbo v3, "tinySource"

    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1667
    .local v2, "tinySource":Ljava/lang/String;
    const-string/jumbo v3, "parentAppId"

    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1668
    .local v1, "parentAppId":Ljava/lang/String;
    const-string/jumbo v3, "miniServiceId"

    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1669
    .local v0, "miniServiceId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1670
    const-string/jumbo v3, "H5Utils"

    const-string/jumbo v4, "isTinyMiniService true"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const/4 v3, 0x1

    .line 1673
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isUCM57()Z
    .locals 2

    .prologue
    .line 1483
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5UCProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5UCProvider;

    .line 1484
    .local v0, "ucProvider":Lcom/alipay/mobile/nebula/provider/H5UCProvider;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5UCProvider;->isM40()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static jsonToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;
    .locals 7
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1070
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1071
    :cond_0
    const/4 v4, 0x0

    .line 1086
    :cond_1
    :goto_0
    return-object v4

    .line 1073
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1074
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1075
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1077
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1078
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1079
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1080
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1082
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1083
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5Utils"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static jsonToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1066
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->jsonToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static landingMonitor(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "origUrl"    # Ljava/lang/String;
    .param p1, "parsedUrl"    # Ljava/lang/String;
    .param p2, "result"    # Z
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "publicId"    # Ljava/lang/String;
    .param p6, "bizScenario"    # Ljava/lang/String;

    .prologue
    .line 708
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 709
    .local v7, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v7, :cond_0

    .line 710
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v9

    new-instance v0, Lcom/alipay/mobile/nebula/util/H5Utils$1;

    move v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nebula/util/H5Utils$1;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5LogProvider;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 725
    :cond_0
    return-void
.end method

.method public static openIntent(Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1236
    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 1237
    .local v2, "launchIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1239
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_0

    .line 1240
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1242
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1243
    .local v0, "context":Landroid/content/Context;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1244
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1245
    :catch_0
    move-exception v1

    .line 1246
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "H5Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "bad uri "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openUrl(Ljava/lang/String;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1209
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "http"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1212
    :try_start_0
    const-string/jumbo v5, "UTF-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 1216
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=20000067&url="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1218
    :cond_0
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 1219
    .local v3, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v3, :cond_1

    .line 1220
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;)Z

    .line 1232
    .end local v3    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    :cond_1
    :goto_1
    return-void

    .line 1213
    :catch_0
    move-exception v1

    .line 1214
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "H5Utils"

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1223
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v4

    .line 1224
    .local v4, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v4, :cond_1

    .line 1225
    new-instance v2, Linz;

    invoke-direct {v2}, Linz;-><init>()V

    .line 1226
    .local v2, "h5Bundle":Linz;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1227
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "url"

    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iput-object v0, v2, Linz;->b:Landroid/os/Bundle;

    .line 1229
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Linn;Linz;)V

    goto :goto_1
.end method

.method public static parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    const/4 v1, 0x0

    .line 476
    :goto_0
    return-object v1

    .line 470
    :cond_0
    const/4 v1, 0x0

    .line 472
    .local v1, "ja":Lcom/alibaba/fastjson/JSONArray;
    :try_start_0
    invoke-static {p0}, Lgxk;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5Utils"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, "result":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 845
    const/4 v2, 0x0

    .line 853
    :goto_0
    return v2

    .line 849
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v2, v0

    .line 853
    goto :goto_0

    .line 850
    :catch_0
    move-exception v1

    .line 851
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5Utils"

    const-string/jumbo v3, "parse int exception."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 857
    const-wide/16 v0, 0x0

    .line 858
    .local v0, "result":J
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 859
    const-wide/16 v4, 0x0

    .line 867
    :goto_0
    return-wide v4

    .line 863
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    move-wide v4, v0

    .line 867
    goto :goto_0

    .line 864
    :catch_0
    move-exception v2

    .line 865
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5Utils"

    const-string/jumbo v4, "parse long exception."

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    const/4 v1, 0x0

    .line 462
    :goto_0
    return-object v1

    .line 456
    :cond_0
    const/4 v1, 0x0

    .line 458
    .local v1, "jo":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    invoke-static {p0}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5Utils"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static pt2px(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # I

    .prologue
    .line 961
    const/4 v2, 0x3

    int-to-float v3, p1

    .line 962
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 963
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 961
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 968
    :goto_0
    return v1

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5Utils"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 968
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final read(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "absPath"    # Ljava/lang/String;

    .prologue
    .line 783
    const/4 v7, 0x0

    .line 784
    .local v7, "text":Ljava/lang/String;
    const/4 v2, 0x0

    .line 786
    .local v2, "ips":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    .end local v2    # "ips":Ljava/io/InputStream;
    .local v3, "ips":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 788
    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 789
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 791
    .local v5, "line":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    .line 792
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 794
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 796
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 802
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 808
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "ips":Ljava/io/InputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v2    # "ips":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v7

    .line 803
    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "ips":Ljava/io/InputStream;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 804
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5Utils"

    const-string/jumbo v9, "exception detail"

    invoke-static {v8, v9, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 805
    .end local v3    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    goto :goto_1

    .line 797
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 798
    .restart local v6    # "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    const-string/jumbo v8, "H5Utils"

    const-string/jumbo v9, "Exception"

    invoke-static {v8, v9, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 800
    if-eqz v2, :cond_1

    .line 802
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 803
    :catch_2
    move-exception v6

    .line 804
    const-string/jumbo v8, "H5Utils"

    const-string/jumbo v9, "exception detail"

    invoke-static {v8, v9, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 800
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v2, :cond_2

    .line 802
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 805
    :cond_2
    :goto_4
    throw v8

    .line 803
    :catch_3
    move-exception v6

    .line 804
    .restart local v6    # "t":Ljava/lang/Throwable;
    const-string/jumbo v9, "H5Utils"

    const-string/jumbo v10, "exception detail"

    invoke-static {v9, v10, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 800
    .end local v2    # "ips":Ljava/io/InputStream;
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v3    # "ips":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    goto :goto_3

    .line 797
    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v3    # "ips":Ljava/io/InputStream;
    :catch_4
    move-exception v6

    move-object v2, v3

    .end local v3    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 812
    new-instance v1, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    .line 813
    .local v1, "byteBuffer":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v0

    .line 816
    .local v0, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 817
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 820
    .end local v2    # "len":I
    :catch_0
    move-exception v3

    .line 821
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v4, "H5Utils"

    const-string/jumbo v5, "readBytes exception"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 824
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 825
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 827
    new-array v4, v6, [B

    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    return-object v4

    .line 819
    .restart local v2    # "len":I
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 823
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 824
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 825
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 823
    .end local v2    # "len":I
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 824
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 825
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/alipay/mobile/nebula/permission/H5PermissionCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "h5PermissionCallback"    # Lcom/alipay/mobile/nebula/permission/H5PermissionCallback;

    .prologue
    .line 1369
    invoke-static {p1}, Ligd;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1370
    if-eqz p2, :cond_0

    .line 1371
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/alipay/mobile/nebula/permission/H5PermissionCallback;->onRequestPermissionsResult(Z)V

    .line 1372
    const-string/jumbo v0, "H5Utils"

    const-string/jumbo v1, "requestPermissions get true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1376
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 1377
    if-eqz p2, :cond_2

    .line 1378
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/alipay/mobile/nebula/permission/H5PermissionCallback;->onRequestPermissionsResult(Z)V

    .line 1381
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    new-instance v0, Lcom/alipay/mobile/nebula/util/H5Utils$2;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/nebula/util/H5Utils$2;-><init>(Lcom/alipay/mobile/nebula/permission/H5PermissionCallback;)V

    goto :goto_0
.end method

.method public static resolveExtApp(Ljava/lang/String;)Z
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1559
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1560
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1561
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1563
    .local v1, "launchIntent":Landroid/content/Intent;
    const/4 v6, 0x1

    :try_start_0
    invoke-static {p0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1567
    :goto_0
    if-eqz v1, :cond_0

    .line 1568
    const-string/jumbo v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1569
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1571
    :cond_0
    const/high16 v6, 0x10000

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1572
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 1574
    .end local v1    # "launchIntent":Landroid/content/Intent;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_1
    return v4

    .line 1564
    .restart local v1    # "launchIntent":Landroid/content/Intent;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 1565
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v6, "H5Utils"

    const-string/jumbo v7, "parse event exception."

    invoke-static {v6, v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    move v4, v5

    .line 1572
    goto :goto_1

    .end local v1    # "launchIntent":Landroid/content/Intent;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    move v4, v5

    .line 1574
    goto :goto_1
.end method

.method public static runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "threadType"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 507
    if-nez p1, :cond_0

    .line 516
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 511
    .local v0, "isMain":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 512
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 510
    .end local v0    # "isMain":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 514
    .restart local v0    # "isMain":Z
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static runOnMain(Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 491
    if-nez p0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 495
    .local v1, "isMain":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 496
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 494
    .end local v1    # "isMain":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 498
    .restart local v1    # "isMain":Z
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 499
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static runOnMain(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 751
    if-nez p0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 755
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static runOnMainHandler(Ljava/lang/Runnable;J)Landroid/os/Handler;
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 759
    if-nez p0, :cond_0

    .line 760
    const/4 v0, 0x0

    .line 764
    :goto_0
    return-object v0

    .line 762
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 763
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setLdcLevel(Ljava/lang/String;)V
    .locals 5
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 1450
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-ge v3, v4, :cond_1

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1452
    .local v0, "id":I
    const-string/jumbo v1, ""

    .line 1453
    .local v1, "levelId":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 1454
    const-string/jumbo v1, "1"

    .line 1468
    :cond_2
    :goto_1
    sput-object v1, Lcom/alipay/mobile/nebula/util/H5Utils;->ldcLevel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1469
    .end local v0    # "id":I
    .end local v1    # "levelId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1470
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5Utils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1455
    .end local v2    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "id":I
    .restart local v1    # "levelId":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 1456
    :cond_4
    :try_start_1
    const-string/jumbo v1, "3"

    goto :goto_1

    .line 1457
    :cond_5
    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    if-ne v0, v3, :cond_7

    .line 1458
    :cond_6
    const-string/jumbo v1, "5"

    goto :goto_1

    .line 1459
    :cond_7
    const/4 v3, 0x5

    if-lt v0, v3, :cond_8

    const/16 v3, 0x9

    if-gt v0, v3, :cond_8

    .line 1460
    const-string/jumbo v1, "10"

    goto :goto_1

    .line 1461
    :cond_8
    const/16 v3, 0xa

    if-lt v0, v3, :cond_9

    const/16 v3, 0x13

    if-gt v0, v3, :cond_9

    .line 1462
    const-string/jumbo v1, "20"

    goto :goto_1

    .line 1463
    :cond_9
    const/16 v3, 0x14

    if-lt v0, v3, :cond_a

    const/16 v3, 0x1d

    if-gt v0, v3, :cond_a

    .line 1464
    const-string/jumbo v1, "30"

    goto :goto_1

    .line 1465
    :cond_a
    const/16 v3, 0x1e

    if-lt v0, v3, :cond_2

    const/16 v3, 0x31

    if-gt v0, v3, :cond_2

    .line 1466
    const-string/jumbo v1, "50"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static setNebulaAppCallback(ILjava/util/List;)V
    .locals 11
    .param p0, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1266
    .local p1, "appIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1298
    :cond_0
    return-void

    .line 1269
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    .line 1270
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v2, :cond_0

    .line 1271
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getNebulaAppManager()Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;

    move-result-object v0

    .line 1272
    .local v0, "appManager":Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;
    if-eqz v0, :cond_0

    .line 1273
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;->getNebulaAppCallbackList()Ljava/util/List;

    move-result-object v4

    .line 1274
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1275
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;

    .line 1277
    .local v1, "callback":Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1278
    const-string/jumbo v5, ""

    .line 1279
    .local v5, "log":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1280
    .local v3, "id":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1281
    goto :goto_1

    .line 1282
    .end local v3    # "id":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "H5Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setNebulaAppCallback "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1284
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " source:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " appIdList:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1282
    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    .end local v5    # "log":Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallbackInfo;

    invoke-direct {v6}, Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallbackInfo;-><init>()V

    .line 1291
    .local v6, "nebulaAppCallbackInfo":Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallbackInfo;
    invoke-virtual {v6, p1}, Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallbackInfo;->setAppIdList(Ljava/util/List;)V

    .line 1292
    invoke-virtual {v6, p0}, Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallbackInfo;->setCallBackSource(I)V

    .line 1293
    invoke-interface {v1, v6}, Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;->getCallback(Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallbackInfo;)V

    goto/16 :goto_0
.end method

.method public static setProvider(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/Object;

    .prologue
    .line 1177
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    .line 1178
    .local v0, "h5ProviderManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1183
    :goto_0
    return-void

    .line 1181
    :cond_0
    const-string/jumbo v1, "H5Utils"

    const-string/jumbo v2, "h5ProviderManager == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startExtActivity(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1580
    if-nez p0, :cond_0

    .line 1581
    const-string/jumbo v1, "H5Utils"

    const-string/jumbo v2, "invalid event parameter"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    :goto_0
    return-void

    .line 1585
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1586
    .local v0, "context":Landroid/content/Context;
    const/high16 v1, 0x10000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1587
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static toBundle(Landroid/os/Bundle;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;
    .locals 12
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 411
    if-nez p0, :cond_0

    .line 412
    new-instance p0, Landroid/os/Bundle;

    .end local p0    # "bundle":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 415
    .restart local p0    # "bundle":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 448
    :cond_1
    return-object p0

    .line 419
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 421
    .local v6, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 422
    .local v7, "value":Ljava/lang/Object;
    instance-of v9, v7, Ljava/lang/Integer;

    if-eqz v9, :cond_4

    .line 423
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v1

    .line 444
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "H5Utils"

    const-string/jumbo v10, "toBundle exception"

    invoke-static {v9, v10, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 424
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_4
    :try_start_1
    instance-of v9, v7, Ljava/lang/Boolean;

    if-eqz v9, :cond_5

    .line 425
    check-cast v7, Ljava/lang/Boolean;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {p0, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 426
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 427
    check-cast v7, Ljava/lang/String;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v9, v7, Ljava/lang/Long;

    if-eqz v9, :cond_7

    .line 429
    check-cast v7, Ljava/lang/Long;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p0, v6, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 430
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v9, v7, Ljava/lang/Double;

    if-eqz v9, :cond_8

    .line 431
    check-cast v7, Ljava/lang/Double;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {p0, v6, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 432
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v9, v7, Ljava/lang/Float;

    if-eqz v9, :cond_9

    .line 433
    check-cast v7, Ljava/lang/Float;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 434
    .local v4, "f":F
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    .line 436
    .local v2, "dd":D
    invoke-virtual {p0, v6, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 437
    .end local v0    # "bd":Ljava/math/BigDecimal;
    .end local v2    # "dd":D
    .end local v4    # "f":F
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v9, v7, Lgxk;

    if-eqz v9, :cond_a

    .line 438
    check-cast v7, Lgxk;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Lgxk;->toJSONString()Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, "jsonStr":Ljava/lang/String;
    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    .end local v5    # "jsonStr":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v9, v7, Ljava/math/BigDecimal;

    if-eqz v9, :cond_3

    .line 441
    check-cast v7, Ljava/math/BigDecimal;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    invoke-virtual {p0, v6, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static toBundle(Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;
    .locals 1
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Landroid/os/Bundle;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 269
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 270
    .local v0, "joBundle":Lcom/alibaba/fastjson/JSONObject;
    if-nez p0, :cond_1

    .line 279
    :cond_0
    return-object v0

    .line 274
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 275
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 276
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 277
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1004
    if-nez p0, :cond_0

    .line 1005
    const-string/jumbo v0, ""

    .line 1007
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toStringArray(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    .locals 6
    .param p0, "jsonArray"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1047
    if-eqz p0, :cond_0

    .line 1048
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .line 1049
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1051
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1055
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "size":I
    :catch_0
    move-exception v3

    .line 1056
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5Utils"

    const-string/jumbo v5, "toStringArray error: "

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1058
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static transMapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p0, "map"    # Ljava/util/Map;

    .prologue
    .line 1013
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1014
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1015
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1016
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 1017
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "^"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string/jumbo v3, ""

    goto :goto_2

    .line 1019
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static transStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "mapString"    # Ljava/lang/String;

    .prologue
    .line 1023
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1025
    .local v2, "map":Ljava/util/Map;
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v3, "^"

    invoke-direct {v0, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "entrys":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1028
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    .local v1, "items":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1027
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1026
    :goto_1
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1027
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1029
    .end local v1    # "items":Ljava/util/StringTokenizer;
    :cond_1
    return-object v2
.end method
