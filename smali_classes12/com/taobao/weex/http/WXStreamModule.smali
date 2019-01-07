.class public Lcom/taobao/weex/http/WXStreamModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXStreamModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;,
        Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;
    }
.end annotation


# static fields
.field static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_TEXT:Ljava/lang/String; = "statusText"


# instance fields
.field final mAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "charset=([a-z0-9-]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/http/WXStreamModule;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/taobao/weex/http/WXStreamModule;-><init>(Lcom/taobao/weex/adapter/IWXHttpAdapter;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/adapter/IWXHttpAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/taobao/weex/adapter/IWXHttpAdapter;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule;->mAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    .line 57
    return-void
.end method

.method private extractHeaders(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/http/Options$Builder;)V
    .locals 4
    .param p1, "headers"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "builder"    # Lcom/taobao/weex/http/Options$Builder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 249
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/http/WXHttpUtil;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "UA":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 251
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "user-agent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/taobao/weex/http/Options$Builder;->putHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    goto :goto_0

    .line 259
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "user-agent"

    invoke-virtual {p2, v2, v0}, Lcom/taobao/weex/http/Options$Builder;->putHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    .line 260
    return-void
.end method

.method static getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    .line 221
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static readAsString([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "cType"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string/jumbo v0, "utf-8"

    .line 232
    .local v0, "charset":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 233
    sget-object v3, Lcom/taobao/weex/http/WXStreamModule;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 234
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-object v3

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, ""

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private sendRequest(Lcom/taobao/weex/http/Options;Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "options"    # Lcom/taobao/weex/http/Options;
    .param p2, "callback"    # Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;
    .param p3, "progressCallback"    # Lcom/taobao/weex/bridge/JSCallback;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "bundleURL"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    new-instance v1, Lcom/taobao/weex/common/WXRequest;

    invoke-direct {v1}, Lcom/taobao/weex/common/WXRequest;-><init>()V

    .line 265
    .local v1, "wxRequest":Lcom/taobao/weex/common/WXRequest;
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getMethod()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    .line 266
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v2

    const-string/jumbo v3, "request"

    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, p5, v3, v4}, Lcom/taobao/weex/adapter/URIAdapter;->rewrite(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getBody()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getTimeout()I

    move-result v2

    iput v2, v1, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    .line 269
    iput-object p4, v1, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, v1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 273
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getHeaders()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    .line 279
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/http/WXStreamModule;->mAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    .line 280
    .local v0, "adapter":Lcom/taobao/weex/adapter/IWXHttpAdapter;
    :goto_1
    if-eqz v0, :cond_3

    .line 281
    new-instance v2, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;-><init>(Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/WXStreamModule$1;)V

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    .line 285
    :goto_2
    return-void

    .line 275
    .end local v0    # "adapter":Lcom/taobao/weex/adapter/IWXHttpAdapter;
    :cond_1
    iget-object v2, v1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule;->mAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    goto :goto_1

    .line 283
    .restart local v0    # "adapter":Lcom/taobao/weex/adapter/IWXHttpAdapter;
    :cond_3
    const-string/jumbo v2, "WXStreamModule"

    const-string/jumbo v3, "No HttpAdapter found,request failed."

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 6
    .param p1, "optionsObj"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .param p3, "progressCallback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/http/WXStreamModule;->fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "optionsObj"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .param p3, "progressCallback"    # Lcom/taobao/weex/bridge/JSCallback;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "bundleURL"    # Ljava/lang/String;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    const-string/jumbo v2, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v11, 0x1

    .line 131
    .local v11, "invaildOption":Z
    :goto_0
    if-eqz v11, :cond_3

    .line 132
    if-eqz p2, :cond_1

    .line 133
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v13, "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "ok"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v13, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v2, "statusText"

    const-string/jumbo v4, "ERR_INVALID_REQUEST"

    invoke-interface {v13, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 195
    .end local v13    # "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_1
    return-void

    .line 130
    .end local v11    # "invaildOption":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 140
    .restart local v11    # "invaildOption":Z
    :cond_3
    const-string/jumbo v2, "method"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, "method":Ljava/lang/String;
    const-string/jumbo v2, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 142
    .local v16, "url":Ljava/lang/String;
    const-string/jumbo v2, "headers"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 143
    .local v10, "headers":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "body"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "body":Ljava/lang/String;
    const-string/jumbo v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 145
    .local v15, "type":Ljava/lang/String;
    const-string/jumbo v2, "timeout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v14

    .line 147
    .local v14, "timeout":I
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 148
    :cond_4
    new-instance v2, Lcom/taobao/weex/http/Options$Builder;

    invoke-direct {v2}, Lcom/taobao/weex/http/Options$Builder;-><init>()V

    const-string/jumbo v4, "GET"

    .line 149
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "POST"

    .line 150
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "PUT"

    .line 151
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "DELETE"

    .line 152
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "HEAD"

    .line 153
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "PATCH"

    .line 154
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v12, "GET"

    .line 149
    .end local v12    # "method":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v12}, Lcom/taobao/weex/http/Options$Builder;->setMethod(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v2

    .line 155
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/taobao/weex/http/Options$Builder;->setUrl(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v2

    .line 156
    invoke-virtual {v2, v8}, Lcom/taobao/weex/http/Options$Builder;->setBody(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v15}, Lcom/taobao/weex/http/Options$Builder;->setType(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v2

    .line 158
    invoke-virtual {v2, v14}, Lcom/taobao/weex/http/Options$Builder;->setTimeout(I)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v9

    .line 160
    .local v9, "builder":Lcom/taobao/weex/http/Options$Builder;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/taobao/weex/http/WXStreamModule;->extractHeaders(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/http/Options$Builder;)V

    .line 161
    invoke-virtual {v9}, Lcom/taobao/weex/http/Options$Builder;->createOptions()Lcom/taobao/weex/http/Options;

    move-result-object v3

    .line 162
    .local v3, "options":Lcom/taobao/weex/http/Options;
    new-instance v4, Lcom/taobao/weex/http/WXStreamModule$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1, v3}, Lcom/taobao/weex/http/WXStreamModule$2;-><init>(Lcom/taobao/weex/http/WXStreamModule;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/Options;)V

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/taobao/weex/http/WXStreamModule;->sendRequest(Lcom/taobao/weex/http/Options;Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method parseData(Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/Object;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/taobao/weex/http/Options$Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/fastjson/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    sget-object v2, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    if-ne p2, v2, :cond_0

    .line 199
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 213
    :goto_0
    return-object v2

    .line 200
    :cond_0
    sget-object v2, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    if-ne p2, v2, :cond_5

    .line 201
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0

    .line 204
    :cond_2
    const-string/jumbo v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 205
    .local v0, "b":I
    const-string/jumbo v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 206
    .local v1, "e":I
    if-eqz v0, :cond_3

    if-ge v0, v1, :cond_3

    if-gtz v1, :cond_4

    .line 207
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0

    .line 210
    :cond_4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .end local v0    # "b":I
    .end local v1    # "e":I
    :cond_5
    move-object v2, p1

    .line 213
    goto :goto_0
.end method

.method public sendHttp(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 12
    .param p1, "paramsObj"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    const-string/jumbo v0, "method"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, "method":Ljava/lang/String;
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, "url":Ljava/lang/String;
    const-string/jumbo v0, "header"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 73
    .local v8, "headers":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v0, "body"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "body":Ljava/lang/String;
    const-string/jumbo v0, "timeout"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v10

    .line 76
    .local v10, "timeout":I
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 77
    :cond_0
    new-instance v0, Lcom/taobao/weex/http/Options$Builder;

    invoke-direct {v0}, Lcom/taobao/weex/http/Options$Builder;-><init>()V

    const-string/jumbo v1, "GET"

    .line 78
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "POST"

    .line 79
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "PUT"

    .line 80
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "DELETE"

    .line 81
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "HEAD"

    .line 82
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "PATCH"

    .line 83
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v9, "GET"

    .line 78
    .end local v9    # "method":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v9}, Lcom/taobao/weex/http/Options$Builder;->setMethod(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v11}, Lcom/taobao/weex/http/Options$Builder;->setUrl(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v6}, Lcom/taobao/weex/http/Options$Builder;->setBody(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v10}, Lcom/taobao/weex/http/Options$Builder;->setTimeout(I)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v7

    .line 88
    .local v7, "builder":Lcom/taobao/weex/http/Options$Builder;
    invoke-direct {p0, v8, v7}, Lcom/taobao/weex/http/WXStreamModule;->extractHeaders(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/http/Options$Builder;)V

    .line 89
    invoke-virtual {v7}, Lcom/taobao/weex/http/Options$Builder;->createOptions()Lcom/taobao/weex/http/Options;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/http/WXStreamModule$1;

    invoke-direct {v2, p0, p2}, Lcom/taobao/weex/http/WXStreamModule$1;-><init>(Lcom/taobao/weex/http/WXStreamModule;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 99
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 89
    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/http/WXStreamModule;->sendRequest(Lcom/taobao/weex/http/Options;Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
