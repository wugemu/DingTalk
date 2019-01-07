.class public final Lhnj;
.super Ljava/lang/Object;
.source "MiniAppApiManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;


# static fields
.field public static a:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static e:Ljava/util/Map;
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

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhnf;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private i:Lhne;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    const-string/jumbo v0, "MiniAppApiManagerImpl"

    sput-object v0, Lhnj;->c:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "webAssetsDomain"

    sput-object v0, Lhnj;->a:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lhnj;->e:Ljava/util/Map;

    .line 77
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "navigateTo"

    aput-object v1, v0, v3

    const-string/jumbo v1, "navigateBack"

    aput-object v1, v0, v4

    const-string/jumbo v1, "switchTab"

    aput-object v1, v0, v5

    const-string/jumbo v1, "reLaunch"

    aput-object v1, v0, v6

    const-string/jumbo v1, "redirectTo"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "getCurrentLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "getLocation"

    aput-object v2, v0, v1

    sput-object v0, Lhnj;->f:[Ljava/lang/String;

    .line 89
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "postWebViewMessage"

    aput-object v1, v0, v3

    const-string/jumbo v1, "getEmbedWebViewEnv"

    aput-object v1, v0, v4

    const-string/jumbo v1, "chooseImage"

    aput-object v1, v0, v5

    const-string/jumbo v1, "imageViewer"

    aput-object v1, v0, v6

    const-string/jumbo v1, "getNetworkType"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "getCurrentLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "getLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "openLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "hideLoading"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "showLoading"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "alert"

    aput-object v2, v0, v1

    sput-object v0, Lhnj;->g:[Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    sput-object v0, Lhnj;->h:Ljava/util/List;

    const-string/jumbo v1, "showNetWorkCheckActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lhnj;->h:Ljava/util/List;

    const-string/jumbo v1, "showUCFailDialog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lhnj;->h:Ljava/util/List;

    const-string/jumbo v1, "setKeyboardType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lhnj;->h:Ljava/util/List;

    const-string/jumbo v1, "monitorH5Performance"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lhnj;->h:Ljava/util/List;

    const-string/jumbo v1, "getStartupParams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lhnj;->h:Ljava/util/List;

    const-string/jumbo v1, "inputBlurEvent"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lhnj;->h:Ljava/util/List;

    const-string/jumbo v1, "hideCustomKeyBoard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lhnj;->h:Ljava/util/List;

    const-string/jumbo v1, "hideCustomInputMethod4NativeInput"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lhnj;->h:Ljava/util/List;

    const-string/jumbo v1, "updateNativeKeyBoardInput"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lhnj;->h:Ljava/util/List;

    const-string/jumbo v1, "tinyAppStandardLog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lhnj;->d:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhnj;->b:Ljava/util/Map;

    .line 129
    new-instance v0, Lhne;

    invoke-direct {v0}, Lhne;-><init>()V

    iput-object v0, p0, Lhnj;->i:Lhne;

    .line 130
    return-void
.end method

.method private static a(Liop;)Ljava/lang/String;
    .locals 2
    .param p0, "h5Page"    # Liop;

    .prologue
    .line 792
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 794
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)Z
    .locals 11
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 964
    if-nez p1, :cond_0

    .line 965
    const/4 v5, 0x0

    .line 996
    :goto_0
    return v5

    .line 5121
    :cond_0
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 969
    .local v2, "callParam":Lcom/alibaba/fastjson/JSONObject;
    if-nez v2, :cond_1

    .line 970
    const/4 v5, 0x0

    goto :goto_0

    .line 973
    :cond_1
    iget-object v7, p0, Lhnj;->b:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhnf;

    .line 974
    .local v4, "info":Lhnf;
    if-nez v4, :cond_2

    .line 975
    const/4 v5, 0x0

    goto :goto_0

    .line 978
    :cond_2
    const-string/jumbo v7, "DD_JSAPI_List"

    invoke-virtual {v4, v7}, Lhnf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 979
    .local v3, "ddJsapiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_3

    .line 980
    const/4 v5, 0x0

    goto :goto_0

    .line 983
    :cond_3
    const-string/jumbo v7, "serviceName"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 984
    .local v6, "serviceName":Ljava/lang/String;
    const-string/jumbo v7, "actionName"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "actionName":Ljava/lang/String;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "."

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 988
    .local v1, "apiName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const-string/jumbo v8, ".*"

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 989
    sget-object v7, Lhnj;->c:Ljava/lang/String;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "DD_JSAPI"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "PERMIT"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "super"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p2, v8, v9

    const/4 v9, 0x4

    aput-object v1, v8, v9

    .line 6098
    const-string/jumbo v9, "mini_api"

    invoke-static {v9, v7, v8}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 990
    const/4 v5, 0x1

    goto :goto_0

    .line 993
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 994
    .local v5, "permit":Z
    sget-object v7, Lhnj;->c:Ljava/lang/String;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "DD_JSAPI"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "PERMIT="

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p2, v8, v9

    const/4 v9, 0x4

    aput-object v1, v8, v9

    .line 7098
    const-string/jumbo v9, "mini_api"

    invoke-static {v9, v7, v8}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private static a(Liob;Ljava/lang/String;)Z
    .locals 3
    .param p0, "target"    # Liob;
    .param p1, "apiName"    # Ljava/lang/String;

    .prologue
    .line 771
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 772
    :cond_0
    const/4 v0, 0x0

    .line 780
    :cond_1
    return v0

    .line 774
    :cond_2
    const/4 v0, 0x0

    .line 775
    .local v0, "exist":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 776
    invoke-interface {p0}, Liob;->getPluginManager()Liow;

    move-result-object v1

    .line 777
    .local v1, "pluginManager":Liow;
    invoke-interface {p0}, Liob;->getParent()Liob;

    move-result-object p0

    .line 778
    invoke-interface {v1, p1}, Liow;->canHandle(Ljava/lang/String;)Z

    move-result v0

    .line 779
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    const-string/jumbo v4, "h5_not_use_tiny_permission"

    .line 136
    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v2

    .line 161
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    sget-object v4, Lhnj;->e:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 139
    sget-object v4, Lhnj;->e:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 142
    :cond_2
    const-class v4, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 143
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 144
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, "result":Z
    :try_start_0
    const-class v4, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 148
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v1, :cond_3

    const-string/jumbo v4, "h5_not_use_tiny_permission"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getBooleanConfig(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    const/4 v2, 0x1

    .line 155
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_3
    :goto_1
    sget-object v4, Lhnj;->e:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :catch_0
    move-exception v3

    .line 152
    .local v3, "throwable":Ljava/lang/Throwable;
    sget-object v4, Lhnj;->c:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final clear(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lhnj;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lhnj;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhnf;

    .line 1061
    const/4 v1, 0x0

    .line 2022
    iput-boolean v1, v0, Lhnf;->a:Z

    .line 1062
    iget-object v1, v0, Lhnf;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1063
    iput-object v2, v0, Lhnf;->b:Ljava/util/Map;

    .line 1064
    iget-object v1, v0, Lhnf;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1065
    iput-object v2, v0, Lhnf;->d:Ljava/util/Map;

    .line 198
    iget-object v0, p0, Lhnj;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lhnj;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    return-void
.end method

.method public final getLoadingViewFromTiny(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)Lcom/alipay/mobile/framework/loading/LoadingView;
    .locals 1
    .param p1, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .prologue
    .line 626
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWebViewTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    const-string/jumbo v0, "MINI-PROGRAM-WEB-VIEW-TAG"

    return-object v0
.end method

.method public final hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z
    .locals 12
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "item"    # Ljava/lang/String;
    .param p4, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 213
    sget-object v9, Lhnj;->c:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hasPermission "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static/range {p4 .. p4}, Lhnj;->a(Liop;)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "tag":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 218
    move-object p1, v7

    .line 221
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 222
    invoke-static {p1}, Lhnj;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 223
    const/4 v9, 0x1

    .line 316
    :goto_0
    return v9

    .line 227
    :cond_1
    :try_start_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 229
    invoke-static {}, Lhly;->a()Z

    .line 236
    const-string/jumbo v9, "validDomain"

    invoke-virtual {p3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 238
    const-string/jumbo p3, "Webview_Config_allowedDomain"

    .line 241
    :cond_2
    sget-object v9, Lhnj;->a:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 242
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Webview_Config_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lhnj;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 250
    :cond_3
    iget-object v9, p0, Lhnj;->d:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 251
    iget-object v9, p0, Lhnj;->d:Ljava/lang/String;

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 253
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const/4 v9, 0x0

    invoke-static {v2, p1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 254
    .local v0, "appIdLevel":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 256
    invoke-static {v0, p3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 257
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v9, "yes"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 258
    const/4 v9, 0x1

    goto :goto_0

    .line 262
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    invoke-static {v2, p3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 263
    .restart local v8    # "value":Ljava/lang/String;
    const-string/jumbo v9, "yes"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 264
    const/4 v9, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "appIdLevel":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "Enable_Proxy"

    invoke-static {p3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 271
    const-string/jumbo v10, "YES"

    iget-object v9, p0, Lhnj;->b:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhnf;

    .line 2051
    iget-object v11, v9, Lhnf;->d:Ljava/util/Map;

    if-eqz v11, :cond_6

    iget-object v9, v9, Lhnf;->d:Ljava/util/Map;

    invoke-interface {v9, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 271
    :goto_1
    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    goto/16 :goto_0

    .line 2051
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 274
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lhnj;->b:Ljava/util/Map;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lhnj;->b:Ljava/util/Map;

    .line 276
    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lhnj;->b:Ljava/util/Map;

    .line 277
    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhnf;

    invoke-virtual {v9, p3}, Lhnf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lhnj;->b:Ljava/util/Map;

    .line 278
    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhnf;

    invoke-virtual {v9, p3}, Lhnf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 281
    :cond_8
    if-eqz p3, :cond_9

    const-string/jumbo v9, "JSAPI_SP_Config"

    invoke-virtual {p3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 282
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 285
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 288
    :cond_a
    const-string/jumbo v9, "Valid_SubResMimeList"

    invoke-static {p3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "JSAPI_SP_Config"

    .line 289
    invoke-virtual {p3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "EVENT_List"

    .line 290
    invoke-static {p3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "HttpLink_SubResMimeList"

    .line 291
    invoke-static {p3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "Webview_Config"

    .line 292
    invoke-virtual {p3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 293
    :cond_b
    iget-object v9, p0, Lhnj;->b:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhnf;

    invoke-virtual {v9, p3}, Lhnf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 294
    .local v6, "ruleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_e

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 295
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 296
    .local v5, "regex":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 297
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 298
    .local v3, "matcher":Ljava/util/regex/Matcher;
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 299
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 301
    :cond_d
    const-string/jumbo v10, "JSAPI_SP_Config"

    invoke-virtual {p3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 302
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 303
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 308
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "regex":Ljava/lang/String;
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 311
    .end local v6    # "ruleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    iget-object v9, p0, Lhnj;->b:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhnf;

    invoke-virtual {v9, p3}, Lhnf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto/16 :goto_0

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Lhnj;->c:Ljava/lang/String;

    invoke-static {v9, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public final hasPermissionFile(Ljava/lang/String;Liop;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-static {p2}, Lhnj;->a(Liop;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 340
    .end local v0    # "tag":Ljava/lang/String;
    :goto_0
    return v1

    .line 334
    .restart local v0    # "tag":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    .line 337
    .end local v0    # "tag":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lhnj;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhnj;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhnf;

    .line 3018
    iget-boolean v1, v1, Lhnf;->a:Z

    .line 337
    if-eqz v1, :cond_2

    .line 338
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 340
    goto :goto_0
.end method

.method public final hasPermissionOnIframe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/lang/String;
    .param p4, "h5Page"    # Liop;

    .prologue
    .line 539
    invoke-virtual {p0, p1, p2, p3, p4}, Lhnj;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z

    move-result v0

    return v0
.end method

.method public final hasPermissionOnScheme(Ljava/lang/String;Ljava/lang/String;Liop;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 544
    invoke-static {p3}, Lhnj;->a(Liop;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "appIdTag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v1

    .line 550
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    const-string/jumbo v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 555
    sget-object v1, Lhnj;->c:Ljava/lang/String;

    const-string/jumbo v2, "hasPermissionOnScheme...non-http url, no permission"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hasWebARCameraPermission(Ljava/lang/String;Liop;Liou;)V
    .locals 0
    .param p1, "hostURL"    # Ljava/lang/String;
    .param p2, "h5Page"    # Liop;
    .param p3, "h5PermissionCallBack"    # Liou;

    .prologue
    .line 642
    return-void
.end method

.method public final hasWebARPermission(Ljava/lang/String;Ljava/lang/String;Liop;)Z
    .locals 1
    .param p1, "jsApiName"    # Ljava/lang/String;
    .param p2, "hostURL"    # Ljava/lang/String;
    .param p3, "h5Page"    # Liop;

    .prologue
    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public final httpRequestShouldUseSpdy(Ljava/lang/String;Liop;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5Page"    # Liop;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public final put(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 180
    invoke-static {p1, p2}, Lhng;->a(Ljava/lang/String;[B)Lhnf;

    move-result-object v0

    .line 181
    .local v0, "h5ApiPermissionInfo":Lhnf;
    if-eqz v0, :cond_1

    .line 182
    iget-object v2, p0, Lhnj;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 184
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 185
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_0

    .line 186
    const-string/jumbo v2, "h5_api_permission_config"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lhnj;->d:Ljava/lang/String;

    .line 188
    :cond_0
    sget-object v2, Lhnj;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "put "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v1    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    return-void
.end method

.method public final putJson(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 167
    iget-object v1, p0, Lhnj;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lhng;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lhnf;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 169
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 170
    const-string/jumbo v1, "h5_api_permission_config"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhnj;->d:Ljava/lang/String;

    .line 172
    :cond_0
    sget-object v1, Lhnj;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "put "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public final setIfNeedUpDownAnimWithoutAppinfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p1, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .prologue
    .line 632
    return-void
.end method

.method public final setPermission(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;ZLiop;)Z
    .locals 24
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "h5BridgeContext"    # Liny;
    .param p4, "event"    # Z
    .param p5, "h5Page"    # Liop;

    .prologue
    .line 350
    if-eqz p1, :cond_0

    if-nez p5, :cond_1

    .line 351
    :cond_0
    const/16 v20, 0x0

    .line 534
    :goto_0
    return v20

    .line 3065
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 357
    .local v4, "action":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lhnj;->a(Liop;)Ljava/lang/String;

    move-result-object v19

    .line 358
    .local v19, "tag":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 360
    move-object/from16 p2, v19

    .line 363
    invoke-interface/range {p5 .. p5}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v20

    const-string/jumbo v21, "appId"

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    :cond_2
    if-eqz p4, :cond_3

    .line 369
    const-string/jumbo v20, "EVENT_List"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v4, v2, v3}, Lhnj;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z

    move-result v11

    .line 395
    .local v11, "hasPermission":Z
    :goto_1
    const-string/jumbo v20, "internalAPI"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 397
    const/16 v20, 0x1

    goto :goto_0

    .line 373
    .end local v11    # "hasPermission":Z
    :cond_3
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_11

    .line 3805
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x1

    .line 375
    :goto_2
    if-nez v20, :cond_f

    const/4 v11, 0x1

    .line 376
    .restart local v11    # "hasPermission":Z
    :goto_3
    if-nez v11, :cond_10

    .line 377
    if-eqz p3, :cond_4

    .line 378
    invoke-interface/range {p3 .. p3}, Liny;->sendNoRigHtToInvoke()V

    .line 380
    :cond_4
    const/16 v20, 0x0

    goto :goto_0

    .line 3827
    .end local v11    # "hasPermission":Z
    :cond_5
    const-string/jumbo v20, "webDdExec"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 3828
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnj;->b:Ljava/util/Map;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    if-nez p1, :cond_7

    .line 3829
    :cond_6
    const/16 v20, 0x1

    goto :goto_2

    .line 3831
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnj;->b:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lhnf;

    .line 3832
    if-nez v20, :cond_8

    .line 3833
    const/16 v20, 0x1

    goto :goto_2

    .line 3835
    :cond_8
    const-string/jumbo v21, "JSAPI_List"

    invoke-virtual/range {v20 .. v21}, Lhnf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 3836
    if-nez v20, :cond_9

    .line 3837
    const/16 v20, 0x1

    goto :goto_2

    .line 3839
    :cond_9
    const-string/jumbo v21, "webDdExec"

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    .line 3841
    if-eqz v20, :cond_a

    .line 3842
    invoke-direct/range {p0 .. p2}, Lhnj;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)Z

    move-result v20

    .line 3845
    :cond_a
    if-nez v20, :cond_b

    const/16 v20, 0x1

    goto :goto_2

    :cond_b
    const/16 v20, 0x0

    goto :goto_2

    .line 3849
    :cond_c
    sget-object v21, Lhnj;->g:[Ljava/lang/String;

    const/16 v20, 0x0

    :goto_4
    const/16 v22, 0xb

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    aget-object v22, v21, v20

    .line 3850
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 3851
    const/16 v20, 0x0

    goto :goto_2

    .line 3849
    :cond_d
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 3856
    :cond_e
    invoke-static {}, Lhly;->c()Ljava/util/List;

    .line 3868
    invoke-static {}, Lhly;->d()Ljava/util/List;

    .line 3870
    sget-object v20, Lhnj;->c:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "shouldInterceptWebViewJsapi...webview api list is null, not allowed:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3871
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 375
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 388
    .restart local v11    # "hasPermission":Z
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    .line 387
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 392
    .end local v11    # "hasPermission":Z
    :cond_11
    const-string/jumbo v20, "JSAPI_List"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v4, v2, v3}, Lhnj;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z

    move-result v11

    .restart local v11    # "hasPermission":Z
    goto/16 :goto_1

    .line 400
    :cond_12
    sget-object v20, Lhnj;->c:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "action:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " has api permission:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " appId:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    if-nez v11, :cond_15

    .line 403
    if-eqz p3, :cond_13

    .line 4081
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    move-object/from16 v20, v0

    .line 404
    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lhnj;->a(Liob;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 405
    invoke-interface/range {p3 .. p3}, Liny;->sendNoRigHtToInvoke()V

    .line 410
    :cond_13
    :goto_5
    sget-object v20, Lhnj;->c:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " not in EVENT_List or JSAPI_List"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 407
    :cond_14
    sget-object v20, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NOT_FOUND:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_5

    .line 4121
    :cond_15
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 415
    .local v8, "callParam":Lcom/alibaba/fastjson/JSONObject;
    if-nez v8, :cond_16

    .line 416
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 420
    :cond_16
    const-string/jumbo v20, "CLOUD_SETTING_DD_JSAPI_PERMISSION"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 421
    const-string/jumbo v20, "ddExec"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 422
    invoke-direct/range {p0 .. p2}, Lhnj;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_17

    .line 423
    sget-object v20, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v20

    const-string/jumbo v21, "forbidden!"

    move-object/from16 v0, p3

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Liny;->sendError(ILjava/lang/String;)V

    .line 424
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 427
    :cond_17
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 443
    :cond_18
    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "JSAPI_SP_Config_"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 444
    .local v12, "item":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lhnj;->b:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lhnf;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lhnf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 445
    .local v7, "apiRuleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v20, "uploadFile"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1a

    if-eqz v7, :cond_19

    .line 446
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 455
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    .line 454
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 458
    :cond_1a
    const/4 v9, 0x0

    .line 459
    .local v9, "content":Ljava/lang/String;
    const/4 v5, 0x1

    .line 461
    .local v5, "allowed":Z
    const-string/jumbo v20, "httpRequest"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1b

    const-string/jumbo v20, "uploadFile"

    .line 462
    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_20

    .line 463
    :cond_1b
    const-string/jumbo v20, "url"

    move-object/from16 v0, v20

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 464
    .local v17, "reqUrl":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 465
    .local v16, "reqUri":Landroid/net/Uri;
    if-eqz v16, :cond_1c

    .line 466
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 468
    const-string/jumbo v20, "JSAPI_SP_Config_httpRequest_allowedDomain"

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v21

    .line 468
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v9, v2, v3}, Lhnj;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z

    move-result v5

    .line 471
    const-string/jumbo v20, "httpRequest"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 473
    if-eqz v5, :cond_1c

    .line 4928
    if-eqz p5, :cond_1c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 522
    .end local v16    # "reqUri":Landroid/net/Uri;
    .end local v17    # "reqUrl":Ljava/lang/String;
    :cond_1c
    :goto_6
    sget-object v20, Lhnj;->c:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "check content:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " allowed:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    if-nez v5, :cond_1f

    .line 524
    if-eqz p3, :cond_1d

    .line 525
    invoke-interface/range {p3 .. p3}, Liny;->sendNoRigHtToInvoke()V

    .line 527
    :cond_1d
    sget-object v20, Lhnj;->c:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " param: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " is not allowed"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 4935
    .restart local v16    # "reqUri":Landroid/net/Uri;
    .restart local v17    # "reqUrl":Ljava/lang/String;
    :cond_1e
    invoke-static {}, Lhly;->b()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 530
    .end local v5    # "allowed":Z
    .end local v7    # "apiRuleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "content":Ljava/lang/String;
    .end local v12    # "item":Ljava/lang/String;
    .end local v16    # "reqUri":Landroid/net/Uri;
    .end local v17    # "reqUrl":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 531
    .local v10, "e":Ljava/lang/Throwable;
    sget-object v20, Lhnj;->c:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "setPermission action: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_1f
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 491
    .restart local v5    # "allowed":Z
    .restart local v7    # "apiRuleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "content":Ljava/lang/String;
    .restart local v12    # "item":Ljava/lang/String;
    :cond_20
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_21
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_23

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 492
    .local v6, "apiRule":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v8, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 493
    .local v13, "paramItem":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_21

    .line 497
    move-object v9, v13

    .line 498
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v9, v2, v3}, Lhnj;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z

    move-result v5

    .line 499
    sget-object v21, Lhnj;->c:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "paramKey: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " check content:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " allowed:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    if-nez v5, :cond_21

    .line 501
    if-eqz p3, :cond_22

    .line 502
    invoke-interface/range {p3 .. p3}, Liny;->sendNoRigHtToInvoke()V

    .line 504
    :cond_22
    sget-object v20, Lhnj;->c:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " paramKey: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " content: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " is not allowed"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 509
    .end local v6    # "apiRule":Ljava/lang/String;
    .end local v13    # "paramItem":Ljava/lang/String;
    :cond_23
    const-string/jumbo v20, "startApp"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 511
    const-string/jumbo v20, "param"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v8, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    .line 512
    .local v15, "params":Lcom/alibaba/fastjson/JSONObject;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Landroid/os/Bundle;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    move-result-object v18

    .line 513
    .local v18, "startParams":Landroid/os/Bundle;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v18

    .line 514
    const-string/jumbo v20, "url"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 515
    .local v14, "paramUri":Landroid/net/Uri;
    if-eqz v14, :cond_1c

    .line 516
    invoke-virtual {v14}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 517
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "_url"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v9, v2, v3}, Lhnj;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto/16 :goto_6
.end method

.method public final shouldInterceptJSApiCall(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;Liop;)I
    .locals 9
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "h5BridgeContext"    # Liny;
    .param p4, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 582
    if-nez p1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v4

    .line 5065
    :cond_1
    iget-object v6, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 586
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "request"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "httpRequest"

    .line 587
    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 592
    :cond_2
    invoke-virtual {p0, p2, p4}, Lhnj;->hasPermissionFile(Ljava/lang/String;Liop;)Z

    move-result v7

    .line 593
    .local v7, "hasPermissionFile":Z
    if-eqz v7, :cond_3

    .line 594
    invoke-static {}, Lhly;->e()Lcom/alibaba/fastjson/JSONArray;

    .line 599
    sget-object v0, Lhnj;->h:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 600
    invoke-virtual/range {v0 .. v5}, Lhnj;->setPermission(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;ZLiop;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 601
    const/4 v4, 0x1

    goto :goto_0

    .line 605
    :cond_3
    invoke-interface {p4}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isTinyApp"

    invoke-static {v0, v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    .line 607
    .local v8, "tinyApp":Z
    if-eqz v8, :cond_0

    invoke-static {}, Lhly;->f()Z

    goto :goto_0

    .line 621
    .end local v8    # "tinyApp":Z
    :cond_4
    const/4 v4, 0x2

    goto :goto_0
.end method
