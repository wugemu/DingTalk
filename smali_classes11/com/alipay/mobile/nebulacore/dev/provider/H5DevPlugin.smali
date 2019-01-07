.class public Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;
.super Lipd;
.source "H5DevPlugin.java"


# static fields
.field private static final ACTION_NBREPORT:Ljava/lang/String; = "NBDebugReport"

.field public static final TAG:Ljava/lang/String; = "H5DevPlugin"


# instance fields
.field private h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

.field private lastQueryH5Page:Liop;

.field private sessionId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private viewId:Ljava/lang/String;

.field private webView:Lcom/alipay/mobile/nebula/webview/APWebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lipd;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->userAgent:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->url:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->title:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->sessionId:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 47
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->lastQueryH5Page:Liop;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;)Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    return-object v0
.end method

.method private getData(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    .line 13081
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 218
    instance-of v4, v4, Liop;

    if-eqz v4, :cond_3

    .line 14081
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 219
    check-cast v0, Liop;

    .line 14121
    .local v0, "h5Page":Liop;
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 222
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const/4 v2, 0x0

    .line 223
    .local v2, "parsedUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 224
    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    :cond_0
    if-eqz v2, :cond_4

    .end local v2    # "parsedUrl":Ljava/lang/String;
    :goto_0
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->url:Ljava/lang/String;

    .line 228
    invoke-interface {v0}, Liop;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->title:Ljava/lang/String;

    .line 231
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->lastQueryH5Page:Liop;

    if-eq v0, v4, :cond_2

    .line 232
    invoke-interface {v0}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 233
    invoke-static {v0}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Liop;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    .line 234
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v4, :cond_1

    .line 235
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 236
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->userAgent:Ljava/lang/String;

    .line 239
    :cond_1
    invoke-interface {v0}, Liop;->getSession()Lipc;

    move-result-object v3

    .line 240
    .local v3, "session":Lipc;
    if-eqz v3, :cond_2

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->sessionId:Ljava/lang/String;

    .line 244
    .end local v3    # "session":Lipc;
    :cond_2
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->lastQueryH5Page:Liop;

    .line 246
    .end local v0    # "h5Page":Liop;
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    return-void

    .line 227
    .restart local v0    # "h5Page":Liop;
    .restart local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "parsedUrl":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getFuncFromConsole(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "func":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "invokeJS msgType callback func (.*)"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 156
    .local v0, "callbackPattern":Ljava/util/regex/Pattern;
    if-nez v0, :cond_0

    .line 165
    .end local v0    # "callbackPattern":Ljava/util/regex/Pattern;
    :goto_0
    return-object v3

    .line 159
    .restart local v0    # "callbackPattern":Ljava/util/regex/Pattern;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 160
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    move-object v3, v1

    .line 163
    goto :goto_0

    .line 165
    .end local v0    # "callbackPattern":Ljava/util/regex/Pattern;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private loadVorlon(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 10
    .param p1, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string/jumbo v9, "https://bugme.anyproxy.io:5680"

    .line 257
    .local v9, "vorlonServer":Ljava/lang/String;
    sget v0, Lcom/alipay/mobile/nebula/R$raw;->h5_dev_vorlon:I

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "originScript":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "https://hpmweb.alipay.com/bugme/domScript"

    aput-object v2, v0, v1

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "data":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 262
    const-string/jumbo v0, "H5DevPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vorlon script:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v1, "sync_state"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 14
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->userAgent:Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->title:Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->url:Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setPageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->setSessionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_4
    sget-object v0, Liov$a;->s:Ljava/lang/String;

    .line 1065
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1121
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 105
    const-string/jumbo v2, "content"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2121
    .local v11, "content":Ljava/lang/String;
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 106
    const-string/jumbo v2, "func"

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 107
    .local v12, "func":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 108
    invoke-direct {p0, v11}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->getFuncFromConsole(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v2, "log"

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    invoke-interface {v0, v2, v5, v11, v12}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->consoleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 112
    .end local v11    # "content":Ljava/lang/String;
    .end local v12    # "func":Ljava/lang/String;
    :cond_6
    sget-object v0, Liov$a;->t:Ljava/lang/String;

    .line 3065
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3121
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 113
    const-string/jumbo v2, "content"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 114
    .restart local v11    # "content":Ljava/lang/String;
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v2, "error"

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v5, v11, v6}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->consoleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 116
    .end local v11    # "content":Ljava/lang/String;
    :cond_7
    sget-object v0, Liov$a;->w:Ljava/lang/String;

    .line 4065
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v1, "create"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->userAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->title:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 118
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 119
    :cond_8
    sget-object v0, Liov$a;->x:Ljava/lang/String;

    .line 5065
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v1, "destroy"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->userAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->title:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->lastQueryH5Page:Liop;

    .line 123
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 124
    :cond_9
    sget-object v0, Liov$a;->v:Ljava/lang/String;

    .line 6065
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6121
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 125
    const-string/jumbo v2, "subType"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7121
    .local v1, "subType":Ljava/lang/String;
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 126
    const-string/jumbo v2, "request"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8121
    .local v4, "request":Ljava/lang/String;
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 127
    const-string/jumbo v2, "eventId"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "originEventId":Ljava/lang/String;
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->jsApiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 130
    .end local v1    # "subType":Ljava/lang/String;
    .end local v3    # "originEventId":Ljava/lang/String;
    .end local v4    # "request":Ljava/lang/String;
    :cond_a
    sget-object v0, Liov$a;->y:Ljava/lang/String;

    .line 9065
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v2, "start"

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    .line 9121
    iget-object v6, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 131
    invoke-interface {v0, v2, v5, v6}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->netWorkLog(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 132
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 133
    :cond_b
    sget-object v0, Liov$a;->z:Ljava/lang/String;

    .line 10065
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v2, "finish"

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    .line 10121
    iget-object v6, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 134
    invoke-interface {v0, v2, v5, v6}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->netWorkLog(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 135
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 136
    :cond_c
    sget-object v0, Liov$a;->A:Ljava/lang/String;

    .line 11065
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v2, "upload"

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->screenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 139
    :cond_d
    const-string/jumbo v0, "NBDebugReport"

    .line 12065
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 12121
    iget-object v13, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 141
    .local v13, "params":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v13, :cond_e

    .line 142
    const-string/jumbo v0, "extra"

    const-string/jumbo v2, "type"

    invoke-static {v13, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 143
    const-string/jumbo v0, "content"

    const/4 v2, 0x0

    invoke-static {v13, v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 144
    .local v11, "content":Lcom/alibaba/fastjson/JSONObject;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    const-string/jumbo v6, "sync_state"

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    invoke-interface/range {v5 .. v11}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 147
    .end local v11    # "content":Lcom/alibaba/fastjson/JSONObject;
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 149
    .end local v13    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v9

    .line 13065
    :cond_1
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 176
    .local v7, "action":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->getData(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, "subType":Ljava/lang/String;
    const-string/jumbo v0, "h5PageCreateWebView"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    const-string/jumbo v1, "create"

    .line 209
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 210
    const-string/jumbo v0, "H5DevPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "type:page subType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " viewId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userAgent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->userAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->title:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->pageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 182
    :cond_3
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    const-string/jumbo v1, "update"

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->pause()V

    goto :goto_1

    .line 187
    :cond_4
    const-string/jumbo v0, "h5PageFinished"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    const-string/jumbo v1, "finish"

    .line 189
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 198
    const-string/jumbo v0, "h5_bug_me_dom_debug"

    invoke-static {v0, v9}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v8

    .line 199
    .local v8, "useDomDebug":Z
    if-eqz v8, :cond_2

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->loadVorlon(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    goto/16 :goto_1

    .line 202
    .end local v8    # "useDomDebug":Z
    :cond_5
    const-string/jumbo v0, "h5PageClose"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->resume()V

    goto/16 :goto_1
.end method

.method public onInitialize(Liob;)V
    .locals 1
    .param p1, "coreNode"    # Liob;

    .prologue
    .line 51
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 52
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 56
    const-string/jumbo v0, "NBDebugReport"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "h5PageCreateWebView"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "h5PageClose"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 65
    sget-object v0, Liov$a;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 66
    sget-object v0, Liov$a;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 67
    sget-object v0, Liov$a;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 68
    sget-object v0, Liov$a;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 69
    sget-object v0, Liov$a;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 70
    sget-object v0, Liov$a;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 71
    sget-object v0, Liov$a;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 72
    sget-object v0, Liov$a;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->h5DevDebugProvider:Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 78
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 79
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->lastQueryH5Page:Liop;

    .line 80
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->getInstance()Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->viewId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->release(Ljava/lang/String;)V

    .line 81
    return-void
.end method
