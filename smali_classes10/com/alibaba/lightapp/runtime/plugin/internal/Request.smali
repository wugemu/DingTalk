.class public Lcom/alibaba/lightapp/runtime/plugin/internal/Request;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Request.java"


# static fields
.field private static final KEY_RESPONSE_HEADERS:Ljava/lang/String; = "responseHeaders"

.field private static final KEY_RESPONSE_TEXT:Ljava/lang/String; = "responseText"

.field private static final KEY_SECURITY_TOKEN:Ljava/lang/String; = "securityToken"

.field private static final KEY_STATUS_CODE:Ljava/lang/String; = "statusCode"

.field private static final KEY_STATUS_TEXT:Ljava/lang/String; = "statusText"

.field private static final LWP_STATUS_OK:I = 0xc8

.field private static final LWP_STATUS_UNKNOWN:Ljava/lang/String; = "900"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Request;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Request;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Request;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->headerListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Request;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Request;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Request;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Request;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Request;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private addAdditionalHeaders(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "refUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 370
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "Host"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string/jumbo v1, "X-Agent"

    const-string/jumbo v2, "lwp-tunnel"

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string/jumbo v1, "Referer"

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string/jumbo v1, "User-Agent"

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/uc/webview/export/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "existCookie":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    const-string/jumbo v1, "Cookie"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_0
    return-void
.end method

.method private headerListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 382
    .local p1, "headerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 383
    const-string/jumbo v2, ""

    .line 392
    :goto_0
    return-object v2

    .line 385
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 386
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    .local v0, "prop":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 389
    .end local v0    # "prop":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 390
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->deleteCharAt(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 392
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getSecurityToken(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 170
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "securityToken":Ljava/lang/String;
    const-string/jumbo v3, "securityToken"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "securityToken":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 176
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public httpOverLWP(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 17
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 183
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 185
    .local v1, "callbackId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 186
    .local v13, "url":Ljava/lang/String;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 187
    .local v12, "uri":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "host":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    sget-boolean v14, Lcic;->a:Z

    if-nez v14, :cond_1

    const-string/jumbo v14, ".dingtalk.com"

    .line 190
    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string/jumbo v14, ".dingtalkapps.com"

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string/jumbo v14, ".alibaba-inc.com"

    .line 191
    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string/jumbo v14, ".alibaba.net"

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    const-string/jumbo v14, ".aliway.com"

    .line 192
    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string/jumbo v14, ".aliway.net"

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 193
    :cond_1
    new-instance v5, Lgti;

    invoke-direct {v5}, Lgti;-><init>()V

    .line 196
    .local v5, "httpRequest":Lgti;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v15, "uri"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 197
    .local v11, "reqUrlStr":Ljava/lang/String;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 208
    .local v10, "reqUri":Landroid/net/Uri;
    invoke-virtual {v5, v11}, Lgti;->a(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v15, "method"

    const-string/jumbo v16, "GET"

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lgti;->b(Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v15, "body"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 212
    .local v8, "reqBody":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v14, "utf-8"

    invoke-virtual {v8, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v5, v14}, Lgti;->a([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :goto_0
    :try_start_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v15, "headers"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 218
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v15, "headers"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 219
    .local v9, "reqHeaders":Lorg/json/JSONObject;
    if-eqz v9, :cond_2

    .line 220
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 221
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 222
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 223
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 229
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "reqBody":Ljava/lang/String;
    .end local v9    # "reqHeaders":Lorg/json/JSONObject;
    .end local v10    # "reqUri":Landroid/net/Uri;
    .end local v11    # "reqUrlStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 231
    const/4 v14, 0x2

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v14

    .line 280
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v5    # "httpRequest":Lgti;
    :goto_2
    return-object v14

    .line 213
    .restart local v5    # "httpRequest":Lgti;
    .restart local v8    # "reqBody":Ljava/lang/String;
    .restart local v10    # "reqUri":Landroid/net/Uri;
    .restart local v11    # "reqUrlStr":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 214
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->addAdditionalHeaders(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 228
    invoke-virtual {v5, v3}, Lgti;->a(Ljava/util/Map;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 236
    :try_start_4
    new-instance v14, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v14}, Lgtg;->a(Lgti;Lgte;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 280
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "httpRequest":Lgti;
    .end local v8    # "reqBody":Ljava/lang/String;
    .end local v10    # "reqUri":Landroid/net/Uri;
    .end local v11    # "reqUrlStr":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v14

    goto :goto_2

    .line 273
    .restart local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "httpRequest":Lgti;
    .restart local v8    # "reqBody":Ljava/lang/String;
    .restart local v10    # "reqUri":Landroid/net/Uri;
    .restart local v11    # "reqUrlStr":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 274
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 275
    const/4 v14, 0x3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_3

    .line 278
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "httpRequest":Lgti;
    .end local v8    # "reqBody":Ljava/lang/String;
    .end local v10    # "reqUri":Landroid/net/Uri;
    .end local v11    # "reqUrlStr":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x3

    const-string/jumbo v15, "unauthorized for this hostname"

    invoke-static {v14, v15}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public lwp(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 24
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 59
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 61
    .local v4, "callbackId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 62
    .local v18, "url":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 63
    .local v17, "uri":Landroid/net/Uri;
    const-string/jumbo v19, "Resource"

    const-string/jumbo v20, "fromType=lwp====start"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, "host":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 69
    .local v12, "path":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    sget-boolean v19, Lcic;->a:Z

    if-nez v19, :cond_1

    const-string/jumbo v19, "dingtalk.com"

    .line 70
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string/jumbo v19, "dingtalkapps.com"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string/jumbo v19, ".taobao.net"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    :cond_0
    const-string/jumbo v19, "g.alicdn.com"

    .line 71
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string/jumbo v19, "/dingding/"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 73
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "uri"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 74
    .local v16, "reqUri":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "body"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 75
    .local v14, "reqBody":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "headers"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 78
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "headers"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 80
    .local v15, "reqHeaders":Lorg/json/JSONObject;
    if-nez v15, :cond_2

    .line 82
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string/jumbo v20, "headers"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "headersStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 84
    new-instance v15, Lorg/json/JSONObject;

    .end local v15    # "reqHeaders":Lorg/json/JSONObject;
    invoke-direct {v15, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    .end local v8    # "headersStr":Ljava/lang/String;
    .restart local v15    # "reqHeaders":Lorg/json/JSONObject;
    :cond_2
    if-eqz v15, :cond_3

    .line 89
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 90
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 91
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 92
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v7, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "reqBody":Ljava/lang/String;
    .end local v15    # "reqHeaders":Lorg/json/JSONObject;
    .end local v16    # "reqUri":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 155
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 156
    const/16 v19, 0x2

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 162
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v19

    return-object v19

    .line 97
    .restart local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "reqBody":Ljava/lang/String;
    .restart local v16    # "reqUri":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v6, v0, v1, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v6, "handler":Liyv;
    new-instance v19, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14, v7, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Liyv;)V

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;->execute()V

    .line 148
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v13, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v19, "uri"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v19, "sessionId"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v19

    const/16 v20, 0x0

    const-string/jumbo v21, "oa_cloud_lwp_request"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2, v13}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    const-string/jumbo v19, "Resource"

    const-string/jumbo v20, "fromType=lwp"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "reqUri:"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v16, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 160
    .end local v6    # "handler":Liyv;
    .end local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "reqBody":Ljava/lang/String;
    .end local v16    # "reqUri":Ljava/lang/String;
    :cond_4
    const/16 v19, 0x3

    const-string/jumbo v20, "unauthorized for this hostname"

    invoke-static/range {v19 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public sendHeadRequest(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    :try_start_0
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "url"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "url":Ljava/lang/String;
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "headers"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 293
    .local v1, "headersJson":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v2, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 295
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 298
    .local v4, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 299
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 301
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_1

    const-string/jumbo v7, ""

    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v1    # "headersJson":Lorg/json/JSONObject;
    .end local v2    # "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 363
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x2

    .line 364
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v8

    .line 307
    .restart local v1    # "headersJson":Lorg/json/JSONObject;
    .restart local v2    # "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v8, "REQUEST"

    .line 308
    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/request/Request;

    .line 310
    .local v5, "request":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v8

    .line 311
    invoke-interface {v8, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestHeaders(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v8

    new-instance v9, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$3;

    invoke-direct {v9, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Request$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Request;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 312
    invoke-interface {v8, v9}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 357
    const/4 v8, 0x4

    invoke-interface {v5, v8}, Lcom/alibaba/doraemon/request/Request;->setMethod(I)V

    .line 358
    invoke-interface {v5}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 360
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_1
.end method
