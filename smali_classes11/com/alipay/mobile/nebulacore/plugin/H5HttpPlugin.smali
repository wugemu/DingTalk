.class public Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
.super Lipd;
.source "H5HttpPlugin.java"


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field private static final HEADERS:Ljava/lang/String; = "headers"

.field public static final HTTP_REQUEST:Ljava/lang/String; = "httpRequest"

.field public static final TAG:Ljava/lang/String; = "H5HttpPlugin"


# instance fields
.field private appId:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private bizScenario:Ljava/lang/String;

.field private client:Landroid/net/http/AndroidHttpClient;

.field private h5EventHandlerService:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

.field private h5Page:Liop;

.field private hasReleased:Z

.field private packageNick:Ljava/lang/String;

.field private publicId:Ljava/lang/String;

.field private releaseType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lipd;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->hasReleased:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->closeHttpClient()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Liop;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Liny;
    .param p3, "x3"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->httpRequestWithAlipayNet(Lcom/alipay/mobile/h5container/api/H5Event;Liny;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Liny;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->httpRequest(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->appId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->publicId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->releaseType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->appVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->packageNick:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->bizScenario:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->appIdUseAliPayNet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->getH5EventHandlerService()Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-result-object v0

    return-object v0
.end method

.method private appIdUseAliPayNet(Ljava/lang/String;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    const-string/jumbo v2, "h5_httpRequest_useAlipayNetAppList"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 204
    .local v0, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const/4 v2, 0x1

    .line 207
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private closeHttpClient()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->client:Landroid/net/http/AndroidHttpClient;

    .line 140
    :cond_0
    return-void
.end method

.method private enableSpdyOnUrl(Ljava/lang/String;)Z
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 539
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v8

    const-class v9, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 540
    .local v3, "tinyappPermission":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    if-eqz v3, :cond_1

    .line 542
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->appId:Ljava/lang/String;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    invoke-interface {v3, v8, v9, p1}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->httpRequestShouldUseSpdy(Ljava/lang/String;Liop;Ljava/lang/String;)Z

    move-result v4

    .line 543
    .local v4, "useSpdy":Z
    if-nez v4, :cond_1

    .line 565
    .end local v4    # "useSpdy":Z
    :cond_0
    :goto_0
    return v6

    .line 549
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v8

    const-class v9, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 550
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_3

    .line 551
    const-string/jumbo v8, "h5HttpRequestUseSpdyOnAppId"

    invoke-interface {v1, v8}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "appIdList":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 553
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 554
    .local v2, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->appId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 559
    .end local v2    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    const-string/jumbo v8, "h5HttpRequestUseSpdyOnUrl"

    invoke-interface {v1, v8}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 562
    invoke-static {p1, v5}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0

    .end local v0    # "appIdList":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    move v6, v7

    .line 565
    goto :goto_0
.end method

.method private getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .param p1, "oriUrl"    # Ljava/lang/String;
    .param p2, "startParams"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "finalUrl":Ljava/lang/String;
    const-string/jumbo v2, "url"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "entryUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlV2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 280
    :cond_0
    return-object v1
.end method

.method private getFromPkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liny;)Z
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseType"    # Ljava/lang/String;
    .param p3, "responseCharset"    # Ljava/lang/String;
    .param p4, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    invoke-interface {v11}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_1

    .line 221
    :cond_0
    const/4 v11, 0x0

    .line 265
    :goto_0
    return v11

    .line 224
    :cond_1
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    invoke-interface {v11}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "onlineHost"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "host":Ljava/lang/String;
    const-string/jumbo v11, "http"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 227
    const/4 v11, 0x0

    goto :goto_0

    .line 230
    :cond_2
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    invoke-interface {v11}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, "realPath":Ljava/lang/String;
    const-string/jumbo v11, "H5HttpPlugin"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "getFromPkg realPath "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    invoke-interface {v11}, Liop;->getSession()Lipc;

    move-result-object v4

    .line 233
    .local v4, "h5Session":Lipc;
    if-eqz v4, :cond_6

    .line 234
    invoke-interface {v4}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v3

    .line 235
    .local v3, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    if-eqz v3, :cond_6

    .line 236
    const/4 v11, 0x1

    .line 237
    invoke-interface {v3, v7, v11}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Z)Landroid/webkit/WebResourceResponse;

    move-result-object v10

    .line 238
    .local v10, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v10, :cond_6

    .line 240
    :try_start_0
    invoke-virtual {v10}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v6

    .line 241
    .local v6, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 242
    .local v2, "content":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 243
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 244
    .local v1, "bytes":[B
    const-string/jumbo v11, "base64"

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 245
    const/4 v11, 0x2

    invoke-static {v1, v11}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v2

    .line 253
    :goto_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 255
    .end local v1    # "bytes":[B
    :cond_3
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 256
    .local v8, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "data"

    invoke-virtual {v8, v11, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 258
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 247
    .end local v8    # "result":Lcom/alibaba/fastjson/JSONObject;
    .restart local v1    # "bytes":[B
    :cond_4
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 248
    new-instance v2, Ljava/lang/String;

    .end local v2    # "content":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-direct {v2, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v2    # "content":Ljava/lang/String;
    goto :goto_1

    .line 250
    :cond_5
    new-instance v2, Ljava/lang/String;

    .end local v2    # "content":Ljava/lang/String;
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "content":Ljava/lang/String;
    goto :goto_1

    .line 259
    .end local v1    # "bytes":[B
    .end local v2    # "content":Ljava/lang/String;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    .line 260
    .local v9, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v11, "H5HttpPlugin"

    invoke-static {v11, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    .end local v3    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .end local v9    # "throwable":Ljava/lang/Throwable;
    .end local v10    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private getH5EventHandlerService()Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5EventHandlerService:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    if-nez v0, :cond_0

    .line 212
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5EventHandlerService:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5EventHandlerService:Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    return-object v0
.end method

.method private hasConfigCaseInsensitiveForContentTypeHeader()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 770
    const-string/jumbo v1, "h5_httpRequestHeader_caseInsensitive"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    const/4 v1, 0x1

    .line 776
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 9
    .param p1, "reqUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 285
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 286
    .local v7, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    if-eqz v2, :cond_0

    if-eqz v7, :cond_0

    .line 287
    const-string/jumbo v2, "h5_shouldCheckSPPermission"

    invoke-interface {v7, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v2, "yes"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 291
    .restart local v8    # "value":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, "currentUrl":Ljava/lang/String;
    invoke-interface {v7, v6}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v7, v6}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAlipayDomains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    invoke-interface {v7, p1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v7, p1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAlipayDomains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    :cond_2
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 298
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_3

    .line 299
    const-string/jumbo v1, "h5_al_jsapi_permission_cors"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reqUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "currentUrl="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->appId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private httpRequest(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 42
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 2121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v38, v0

    .line 310
    if-nez v38, :cond_2

    .line 311
    :cond_0
    const/16 v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->sendFailed(ILiny;)V

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 3121
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v27, v0

    .line 316
    .local v27, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v38, "url"

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 317
    .local v36, "url":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 318
    const/16 v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->sendFailed(ILiny;)V

    goto :goto_0

    .line 322
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->hasPermission(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_4

    .line 323
    invoke-interface/range {p2 .. p2}, Liny;->sendNoRigHtToInvoke()V

    goto :goto_0

    .line 328
    :cond_4
    const-string/jumbo v38, "method"

    const-string/jumbo v39, "GET"

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 331
    .local v26, "method":Ljava/lang/String;
    const-string/jumbo v38, "headers"

    const/16 v39, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v21

    .line 332
    .local v21, "headersArray":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v38, "headers"

    const/16 v39, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v17

    .line 334
    .local v17, "headerJsonOb":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v38, "data"

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "data":Ljava/lang/String;
    const-string/jumbo v38, "timeout"

    const/16 v39, -0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v35

    .line 336
    .local v35, "timeout":I
    const-string/jumbo v38, "responseType"

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 337
    .local v32, "responseType":Ljava/lang/String;
    const-string/jumbo v38, "responseCharset"

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 339
    .local v31, "responseCharset":Ljava/lang/String;
    const/16 v29, 0x0

    .line 341
    .local v29, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_5

    const-string/jumbo v38, "GET"

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_f

    .line 342
    :cond_5
    new-instance v29, Lorg/apache/http/client/methods/HttpGet;

    .end local v29    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v29    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v32

    move-object/from16 v3, v31

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->getFromPkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liny;)Z

    move-result v38

    if-nez v38, :cond_1

    .line 376
    :cond_6
    :goto_1
    if-eqz v21, :cond_14

    :try_start_0
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_14

    .line 377
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_7
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_14

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 378
    .local v16, "headerJson":Ljava/lang/Object;
    check-cast v16, Lcom/alibaba/fastjson/JSONObject;

    .end local v16    # "headerJson":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_2
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_7

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 380
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 381
    :catch_0
    move-exception v9

    .line 382
    .local v9, "e":Ljava/lang/ClassCastException;
    :try_start_2
    const-string/jumbo v38, "H5HttpPlugin"

    const-string/jumbo v39, "exception detail"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 404
    .end local v9    # "e":Ljava/lang/ClassCastException;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v9

    .line 405
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v38, "H5HttpPlugin"

    move-object/from16 v0, v38

    invoke-static {v0, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_8
    const-string/jumbo v39, "Accept-Charset"

    .line 410
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_15

    const-string/jumbo v38, "UTF-8"

    .line 409
    :goto_3
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string/jumbo v38, "POST"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_9

    const-string/jumbo v38, "Content-Type"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_9

    .line 415
    const-string/jumbo v38, "Content-Type"

    const-string/jumbo v39, "application/x-www-form-urlencoded"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_9
    const-string/jumbo v38, "referer"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    move-object/from16 v38, v0

    if-eqz v38, :cond_a

    .line 420
    const-string/jumbo v38, "referer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_a
    invoke-static/range {v36 .. v36}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 426
    .local v7, "cookieStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_b

    .line 427
    const-string/jumbo v38, "Cookie"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v38, v0

    if-nez v38, :cond_c

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    move-object/from16 v38, v0

    if-eqz v38, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v38

    if-eqz v38, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v38

    .line 432
    invoke-interface/range {v38 .. v38}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v38

    if-eqz v38, :cond_c

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    move-object/from16 v38, v0

    .line 434
    invoke-interface/range {v38 .. v38}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->client:Landroid/net/http/AndroidHttpClient;

    .line 438
    :cond_c
    if-gez v35, :cond_d

    .line 440
    const/16 v35, 0x7530

    .line 443
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v38, v0

    if-eqz v38, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v38

    if-eqz v38, :cond_e

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v38

    const-string/jumbo v39, "http.connection.timeout"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-interface/range {v38 .. v40}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 447
    :cond_e
    const-string/jumbo v38, "http"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_16

    .line 448
    sget-object v38, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto/16 :goto_0

    .line 347
    .end local v7    # "cookieStr":Ljava/lang/String;
    :cond_f
    const-string/jumbo v38, "DELETE"

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_10

    .line 348
    new-instance v29, Lorg/apache/http/client/methods/HttpDelete;

    .end local v29    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v29    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_1

    .line 349
    :cond_10
    const-string/jumbo v38, "HEADER"

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_11

    .line 350
    new-instance v29, Lorg/apache/http/client/methods/HttpHead;

    .end local v29    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .restart local v29    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_1

    .line 351
    :cond_11
    const-string/jumbo v38, "PUT"

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_12

    .line 352
    new-instance v29, Lorg/apache/http/client/methods/HttpPut;

    .end local v29    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .restart local v29    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_1

    .line 353
    :cond_12
    const-string/jumbo v38, "POST"

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_6

    .line 354
    new-instance v22, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 356
    .local v22, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz v8, :cond_13

    .line 357
    const/4 v11, 0x0

    .line 359
    .local v11, "entity":Lorg/apache/http/HttpEntity;
    :try_start_3
    new-instance v12, Lorg/apache/http/entity/ByteArrayEntity;

    const-string/jumbo v38, "UTF-8"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v12, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .local v12, "entity":Lorg/apache/http/HttpEntity;
    move-object v11, v12

    .line 363
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "entity":Lorg/apache/http/HttpEntity;
    :goto_4
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 365
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    :cond_13
    move-object/from16 v29, v22

    .line 368
    const-string/jumbo v38, "headers"

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_6

    .line 369
    const-string/jumbo v38, "Content-Type"

    const-string/jumbo v39, "application/x-www-form-urlencoded"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 360
    .restart local v11    # "entity":Lorg/apache/http/HttpEntity;
    :catch_2
    move-exception v9

    .line 361
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v38, "H5HttpPlugin"

    const-string/jumbo v39, "exception detail"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 389
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .end local v22    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_14
    if-eqz v17, :cond_8

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_8

    .line 390
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v25

    .line 391
    .local v25, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 392
    .local v23, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v38

    if-eqz v38, :cond_8

    .line 394
    :try_start_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 395
    .local v24, "key":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    .line 396
    .local v37, "value":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 397
    .end local v24    # "key":Ljava/lang/String;
    .end local v37    # "value":Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 398
    .local v9, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v38, "H5HttpPlugin"

    move-object/from16 v0, v38

    invoke-static {v0, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .end local v9    # "e":Ljava/lang/Exception;
    .end local v23    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v25    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_15
    move-object/from16 v38, v31

    .line 410
    goto/16 :goto_3

    .line 452
    .restart local v7    # "cookieStr":Ljava/lang/String;
    :cond_16
    move-object/from16 v14, v29

    .line 454
    .local v14, "finalReq":Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_7
    const-string/jumbo v38, "H5HttpPlugin"

    const-string/jumbo v39, "check point 1, ready to execute"

    invoke-static/range {v38 .. v39}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v38, v0

    if-eqz v38, :cond_1

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v30

    .line 459
    .local v30, "res":Lorg/apache/http/HttpResponse;
    if-nez v30, :cond_17

    .line 460
    const/16 v38, 0xc

    .line 461
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    sget v40, Lcom/alipay/mobile/nebula/R$string;->h5_server_error:I

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 460
    move/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->sendFailed(ILjava/lang/String;Liny;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 528
    .end local v30    # "res":Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v9

    .line 530
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string/jumbo v38, "H5HttpPlugin"

    const-string/jumbo v39, "exception detail"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 531
    const/16 v38, 0xc

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v39

    move/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->sendFailed(ILjava/lang/String;Liny;)V

    .line 532
    const-string/jumbo v38, "H5HttpPlugin"

    invoke-static/range {v38 .. v38}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v38

    const-string/jumbo v39, "executeException"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 467
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v30    # "res":Lorg/apache/http/HttpResponse;
    :cond_17
    :try_start_8
    const-string/jumbo v38, "H5HttpPlugin"

    const-string/jumbo v39, "check point 3, execute done"

    invoke-static/range {v38 .. v39}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->hasReleased:Z

    move/from16 v38, v0

    if-nez v38, :cond_1

    .line 472
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v38

    if-eqz v38, :cond_20

    .line 473
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v34

    .line 474
    .local v34, "statusCode":I
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v28

    .line 475
    .local v28, "reasonPhrase":Ljava/lang/String;
    new-instance v33, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v33 .. v33}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 476
    .local v33, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v38, "status"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 478
    .restart local v11    # "entity":Lorg/apache/http/HttpEntity;
    const/4 v6, 0x0

    .line 479
    .local v6, "content":Ljava/lang/String;
    if-eqz v11, :cond_18

    .line 480
    const-string/jumbo v38, "base64"

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1a

    .line 481
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/alipay/mobile/nebula/util/H5Utils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 482
    .local v5, "bytes":[B
    const/16 v38, 0x2

    move/from16 v0, v38

    invoke-static {v5, v0}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v6

    .line 491
    .end local v5    # "bytes":[B
    :cond_18
    :goto_6
    const-string/jumbo v38, "data"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v38

    if-eqz v38, :cond_1d

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v38

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    if-lez v38, :cond_1d

    .line 494
    new-instance v20, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 495
    .local v20, "headers":Lcom/alibaba/fastjson/JSONArray;
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v39

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v40, v0

    const/16 v38, 0x0

    :goto_7
    move/from16 v0, v38

    move/from16 v1, v40

    if-ge v0, v1, :cond_1c

    aget-object v15, v39, v38

    .line 496
    .local v15, "header":Lorg/apache/http/Header;
    invoke-interface {v15}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v18

    .line 497
    .local v18, "headerName":Ljava/lang/String;
    if-eqz v18, :cond_19

    .line 498
    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 499
    .local v19, "headerValue":Ljava/lang/String;
    new-instance v10, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 500
    .local v10, "element":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 503
    const-string/jumbo v41, "set-cookie"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_19

    .line 504
    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .end local v10    # "element":Lcom/alibaba/fastjson/JSONObject;
    .end local v19    # "headerValue":Ljava/lang/String;
    :cond_19
    add-int/lit8 v38, v38, 0x1

    goto :goto_7

    .line 484
    .end local v15    # "header":Lorg/apache/http/Header;
    .end local v18    # "headerName":Ljava/lang/String;
    .end local v20    # "headers":Lcom/alibaba/fastjson/JSONArray;
    :cond_1a
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_1b

    .line 485
    move-object/from16 v0, v31

    invoke-static {v11, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 487
    :cond_1b
    const-string/jumbo v38, "UTF-8"

    move-object/from16 v0, v38

    invoke-static {v11, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 508
    .restart local v20    # "headers":Lcom/alibaba/fastjson/JSONArray;
    :cond_1c
    const-string/jumbo v38, "headers"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .end local v20    # "headers":Lcom/alibaba/fastjson/JSONArray;
    :cond_1d
    const-string/jumbo v38, "error"

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const/16 v38, 0x1f6

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_1f

    .line 515
    const-string/jumbo v38, "error"

    const/16 v39, 0xd

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string/jumbo v38, "errorMsg"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_1e
    :goto_8
    if-eqz p2, :cond_1

    .line 523
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0

    .line 517
    :cond_1f
    const/16 v38, 0x193

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_1e

    .line 519
    const-string/jumbo v38, "error"

    const/16 v39, 0xb

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string/jumbo v38, "errorMsg"

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 526
    .end local v6    # "content":Ljava/lang/String;
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .end local v28    # "reasonPhrase":Ljava/lang/String;
    .end local v33    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v34    # "statusCode":I
    :cond_20
    const/16 v38, 0x3

    move/from16 v0, v38

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->sendFailed(ILiny;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0
.end method

.method private httpRequestWithAlipayNet(Lcom/alipay/mobile/h5container/api/H5Event;Liny;Z)V
    .locals 33
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;
    .param p3, "forceSpdyLink"    # Z

    .prologue
    .line 571
    if-eqz p1, :cond_0

    .line 4121
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 571
    if-nez v8, :cond_2

    .line 572
    :cond_0
    const/4 v8, 0x2

    move-object/from16 v0, p2

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->sendFailed(ILiny;)V

    .line 767
    :cond_1
    :goto_0
    return-void

    .line 5121
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v25, v0

    .line 577
    .local v25, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "url"

    move-object/from16 v0, v25

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 579
    const/4 v8, 0x2

    move-object/from16 v0, p2

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->sendFailed(ILiny;)V

    goto :goto_0

    .line 584
    :cond_3
    const-string/jumbo v8, "method"

    const-string/jumbo v9, "GET"

    move-object/from16 v0, v25

    invoke-static {v0, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, "method":Ljava/lang/String;
    const-string/jumbo v8, "headers"

    const/4 v9, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v21

    .line 588
    .local v21, "headersArray":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v8, "headers"

    const/4 v9, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v20

    .line 590
    .local v20, "headerJsonOb":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "data"

    move-object/from16 v0, v25

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 591
    .local v14, "data":Ljava/lang/String;
    const-string/jumbo v8, "timeout"

    const/4 v9, -0x1

    move-object/from16 v0, v25

    invoke-static {v0, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v31

    .line 592
    .local v31, "tmpTimeout":I
    if-gez v31, :cond_13

    const/16 v27, 0x7530

    .line 593
    .local v27, "timeout":I
    :goto_1
    const-string/jumbo v8, "responseType"

    move-object/from16 v0, v25

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 594
    .local v10, "responseType":Ljava/lang/String;
    const-string/jumbo v8, "responseCharset"

    move-object/from16 v0, v25

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 596
    .local v11, "responseCharset":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 597
    .local v6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v30, 0x0

    .line 599
    .local v30, "tmpRequestData":[B
    const-string/jumbo v8, "GET"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 601
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v10, v11, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->getFromPkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liny;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 607
    :cond_4
    const-string/jumbo v8, "POST"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 608
    if-eqz v14, :cond_5

    .line 610
    :try_start_0
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v14, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v30

    .line 616
    :cond_5
    :goto_2
    const-string/jumbo v8, "headers"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 617
    const-string/jumbo v8, "Content-Type"

    const-string/jumbo v9, "application/x-www-form-urlencoded"

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_6
    move-object/from16 v7, v30

    .line 623
    .local v7, "requestData":[B
    const/16 v18, 0x0

    .line 627
    .local v18, "hasHeadersContentType":Z
    if-eqz v21, :cond_14

    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_14

    .line 628
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 629
    .local v19, "headerJson":Ljava/lang/Object;
    check-cast v19, Lcom/alibaba/fastjson/JSONObject;

    .end local v19    # "headerJson":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 631
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_2
    const-string/jumbo v13, "content-type"

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 632
    const/16 v18, 0x1

    .line 634
    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 635
    :catch_0
    move-exception v15

    .line 636
    .local v15, "e":Ljava/lang/ClassCastException;
    :try_start_3
    const-string/jumbo v8, "H5HttpPlugin"

    const-string/jumbo v13, "exception detail"

    invoke-static {v8, v13, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 660
    .end local v15    # "e":Ljava/lang/ClassCastException;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v15

    .line 661
    .local v15, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "H5HttpPlugin"

    invoke-static {v8, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 664
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_9
    const-string/jumbo v9, "Accept-Charset"

    .line 665
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-string/jumbo v8, "UTF-8"

    .line 664
    :goto_4
    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->hasConfigCaseInsensitiveForContentTypeHeader()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 669
    const-string/jumbo v8, "POST"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "Content-Type"

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 671
    const-string/jumbo v8, "Content-Type"

    const-string/jumbo v9, "application/x-www-form-urlencoded"

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    :cond_a
    :goto_5
    const-string/jumbo v8, "su584appid"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->appId:Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->publicId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 684
    const-string/jumbo v8, "su584publicid"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->publicId:Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->releaseType:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 688
    const-string/jumbo v8, "x-release-type"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->releaseType:Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :cond_c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->appVersion:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 692
    const-string/jumbo v8, "su584appversion"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->appVersion:Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->packageNick:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 696
    const-string/jumbo v8, "su584tinyappversion"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->packageNick:Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    :cond_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->bizScenario:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 700
    const-string/jumbo v8, "su584bizscenario"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->bizScenario:Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    :cond_f
    const-string/jumbo v8, "su584appletpage"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    invoke-interface {v9}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string/jumbo v8, "referer"

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    if-eqz v8, :cond_10

    .line 706
    const-string/jumbo v8, "referer"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    invoke-interface {v9}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 711
    .local v28, "time":J
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, "cookieStr":Ljava/lang/String;
    const-string/jumbo v8, "H5HttpPlugin"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "getCookie cost "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v28

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 714
    const-string/jumbo v8, "Cookie"

    invoke-interface {v6, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_11
    const-string/jumbo v8, "User-Agent"

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string/jumbo v8, "user-agent"

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    invoke-interface {v8}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v8

    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    invoke-interface {v8}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v8

    .line 718
    invoke-interface {v8}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 719
    const-string/jumbo v8, "User-Agent"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    invoke-interface {v9}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    :cond_12
    const-string/jumbo v8, "http"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 724
    sget-object v8, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v8}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto/16 :goto_0

    .end local v2    # "cookieStr":Ljava/lang/String;
    .end local v6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "requestData":[B
    .end local v10    # "responseType":Ljava/lang/String;
    .end local v11    # "responseCharset":Ljava/lang/String;
    .end local v18    # "hasHeadersContentType":Z
    .end local v27    # "timeout":I
    .end local v28    # "time":J
    .end local v30    # "tmpRequestData":[B
    :cond_13
    move/from16 v27, v31

    .line 592
    goto/16 :goto_1

    .line 611
    .restart local v6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "responseType":Ljava/lang/String;
    .restart local v11    # "responseCharset":Ljava/lang/String;
    .restart local v27    # "timeout":I
    .restart local v30    # "tmpRequestData":[B
    :catch_2
    move-exception v15

    .line 612
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "H5HttpPlugin"

    invoke-static {v8, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 644
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v7    # "requestData":[B
    .restart local v18    # "hasHeadersContentType":Z
    :cond_14
    if-eqz v20, :cond_9

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 645
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v24

    .line 646
    .local v24, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 647
    .local v22, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v8

    if-eqz v8, :cond_9

    .line 649
    :try_start_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 650
    .local v23, "key":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    .line 651
    .local v32, "value":Ljava/lang/String;
    const-string/jumbo v8, "content-type"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 652
    const/16 v18, 0x1

    .line 654
    :cond_15
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    .line 655
    .end local v23    # "key":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :catch_3
    move-exception v15

    .line 656
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v8, "H5HttpPlugin"

    invoke-static {v8, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_6

    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v24    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_16
    move-object v8, v11

    .line 665
    goto/16 :goto_4

    .line 674
    :cond_17
    const-string/jumbo v8, "POST"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    if-nez v18, :cond_a

    .line 676
    const-string/jumbo v8, "Content-Type"

    const-string/jumbo v9, "application/x-www-form-urlencoded"

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 728
    .restart local v2    # "cookieStr":Ljava/lang/String;
    .restart local v28    # "time":J
    :cond_18
    :try_start_7
    const-string/jumbo v8, "H5HttpPlugin"

    const-string/jumbo v9, "check point 1, ready to execute"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-class v8, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 732
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 731
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 733
    .local v3, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v3, :cond_1

    .line 736
    if-eqz p3, :cond_19

    .line 738
    move/from16 v0, v27

    int-to-long v8, v0

    .line 740
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->enableSpdyOnUrl(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    .line 739
    invoke-virtual/range {v3 .. v13}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BJLjava/lang/String;Ljava/lang/String;ZLiop;)Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;

    move-result-object v17

    .line 749
    .local v17, "h5HttpRequestResult":Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;
    :goto_7
    new-instance v26, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v26 .. v26}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 750
    .local v26, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "status"

    move-object/from16 v0, v17

    iget v9, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseStatues:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string/jumbo v8, "data"

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseContext:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    const-string/jumbo v8, "headers"

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->responseHeader:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    const-string/jumbo v8, "error"

    move-object/from16 v0, v17

    iget v9, v0, Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;->error:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    if-eqz p2, :cond_1

    .line 756
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 761
    .end local v3    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v17    # "h5HttpRequestResult":Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;
    .end local v26    # "result":Lcom/alibaba/fastjson/JSONObject;
    :catch_4
    move-exception v15

    .line 763
    .restart local v15    # "e":Ljava/lang/Exception;
    const/16 v8, 0xc

    move-object/from16 v0, p2

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->sendFailed(ILiny;)V

    .line 764
    const-string/jumbo v8, "H5HttpPlugin"

    const-string/jumbo v9, "exception detail"

    invoke-static {v8, v9, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 765
    const-string/jumbo v8, "H5HttpPlugin"

    invoke-static {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    const-string/jumbo v9, "executeException"

    invoke-virtual {v8, v9, v15}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 743
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v3    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_19
    move/from16 v0, v27

    int-to-long v8, v0

    const/4 v12, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    .line 744
    invoke-virtual/range {v3 .. v13}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BJLjava/lang/String;Ljava/lang/String;ZLiop;)Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v17

    .restart local v17    # "h5HttpRequestResult":Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;
    goto :goto_7
.end method

.method static sendFailed(ILiny;)V
    .locals 3
    .param p0, "resultCode"    # I
    .param p1, "bridgeContext"    # Liny;

    .prologue
    .line 103
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 104
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->sendResult(Lcom/alibaba/fastjson/JSONObject;Liny;)V

    .line 106
    return-void
.end method

.method static sendFailed(ILjava/lang/String;Liny;)V
    .locals 3
    .param p0, "resultCode"    # I
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 110
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 111
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v1, "errorMsg"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {v0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->sendResult(Lcom/alibaba/fastjson/JSONObject;Liny;)V

    .line 114
    return-void
.end method

.method private static sendResult(Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 0
    .param p0, "result"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "bridgeContext"    # Liny;

    .prologue
    .line 96
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 97
    invoke-interface {p1, p0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 1081
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 146
    instance-of v1, v1, Liop;

    if-eqz v1, :cond_0

    .line 2081
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 147
    check-cast v1, Liop;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    .line 149
    :cond_0
    const-string/jumbo v1, "httpRequest"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const-string/jumbo v1, "RPC"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 197
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 271
    const-string/jumbo v0, "httpRequest"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->hasReleased:Z

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->h5Page:Liop;

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz v1, :cond_0

    .line 122
    const-string/jumbo v1, "URGENT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "H5HttpPlugin"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
