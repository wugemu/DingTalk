.class public final Lhov;
.super Ljava/lang/Object;
.source "RuntimeNavigator2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lhov;->b(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    .locals 6
    .param p0, "finalDingtalkSchemeUrl"    # Ljava/lang/String;
    .param p1, "commonParseUrlResult"    # Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;
    .param p2, "protocolVersion"    # Ljava/lang/String;
    .param p3, "packageType"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lhoy;

    invoke-direct {v0}, Lhoy;-><init>()V

    .line 184
    .local v0, "alipayMiniParseUrl":Lhoy;
    invoke-virtual {v0, p0}, Lhoy;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    move-result-object v1

    .line 185
    .local v1, "miniParseUrlResult":Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    iput-object p1, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    .line 186
    iput-object p2, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddPVersion:Ljava/lang/String;

    .line 187
    iput-object p3, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddPackageType:Ljava/lang/String;

    .line 1199
    if-eqz v1, :cond_0

    if-nez p4, :cond_2

    .line 189
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddFallbackUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->originUrl:Ljava/lang/String;

    :goto_1
    iput-object v2, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddFallbackUrl:Ljava/lang/String;

    .line 192
    :cond_1
    return-object v1

    .line 1206
    :cond_2
    const-string/jumbo v2, "navi_to_open_mini_app"

    const-wide/16 v4, 0x0

    invoke-virtual {p4, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1207
    iput-wide v2, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->navi_to_open_mini_app:J

    .line 1218
    const-string/jumbo v2, "cid"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1219
    const-string/jumbo v2, "ding_content_type"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1220
    iput v2, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->frameworkSceneId:I

    .line 1221
    iput-object v4, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->cid:Ljava/lang/String;

    .line 1222
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 1223
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1222
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 1224
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->miniAppId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1225
    iget-object v5, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->miniAppId:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getExtraJo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1226
    const-string/jumbo v2, ""

    .line 1228
    :try_start_0
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 1229
    if-eqz v3, :cond_3

    .line 1230
    const-string/jumbo v5, "appOwnerOrgId"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1236
    :cond_3
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1237
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string/jumbo v5, "_"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1238
    invoke-static {v2}, Lhoi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1239
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1240
    const-string/jumbo v4, "openCid"

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->referrerInfo:Ljava/lang/String;

    .line 1244
    :cond_4
    iput-object p4, v1, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->extensionBundle:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 1232
    :catch_0
    move-exception v3

    .line 1233
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 190
    :cond_5
    const-string/jumbo v2, ""

    goto/16 :goto_1
.end method
