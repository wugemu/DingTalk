.class public Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;
.super Lipd;
.source "H5SystemPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5SystemPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Liny;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;->installedApp(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Liny;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;->startPackage(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    return-void
.end method

.method private checkJsAPI(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    .line 4121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 118
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "api"

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "apiName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5081
    .local v1, "available":Z
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 122
    .local v5, "target":Liob;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v1, :cond_0

    if-eqz v5, :cond_0

    .line 123
    invoke-interface {v5}, Liob;->getPluginManager()Liow;

    move-result-object v3

    .line 124
    .local v3, "pluginManager":Liow;
    invoke-interface {v5}, Liob;->getParent()Liob;

    move-result-object v5

    .line 125
    invoke-interface {v3, v0}, Liow;->canHandle(Ljava/lang/String;)Z

    move-result v1

    .line 126
    goto :goto_0

    .line 128
    .end local v3    # "pluginManager":Liow;
    :cond_0
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 129
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "available"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {p2, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 131
    return-void
.end method

.method private installedApp(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    .line 2121
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 91
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v4, :cond_0

    const-string/jumbo v5, "packagename"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string/jumbo v5, "packagename"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 97
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 98
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "installed"

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-interface {p2, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 98
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private openInBrowser(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    .line 1121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 80
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "url"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2081
    .local v0, "h5Page":Liop;
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 83
    .local v1, "node":Liob;
    instance-of v4, v1, Liop;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 84
    check-cast v0, Liop;

    .line 86
    :cond_0
    invoke-static {v0, v3, p2}, Lcom/alipay/mobile/nebulacore/Nebula;->openInBrowser(Liop;Ljava/lang/String;Liny;)V

    .line 87
    return-void
.end method

.method private openSystemSetting(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    .line 6121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 164
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "url"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v5, "ext"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "ext":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "openIntent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 168
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 169
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 172
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 171
    invoke-virtual {v1, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 173
    const/4 v5, 0x0

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 174
    if-eqz p2, :cond_1

    .line 175
    invoke-interface {p2}, Liny;->sendSuccess()V

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    if-eqz p2, :cond_1

    .line 179
    const-string/jumbo v5, "success"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sendSMS(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    .line 3121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 104
    .local v2, "parseObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "mobile"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "contact":Ljava/lang/String;
    const-string/jumbo v5, "content"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "message":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "smsto:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 108
    .local v4, "smsToUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.SENDTO"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v3, "smsIntent":Landroid/content/Intent;
    const-string/jumbo v5, "sms_body"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v5, "android.intent.extra.TEXT"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    const/4 v5, 0x0

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method private startPackage(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 5121
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 137
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "packagename"

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 139
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 140
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_1

    .line 141
    const-string/jumbo v10, "closeCurrentApp"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 143
    .local v0, "closeCurrentApp":Z
    if-eqz v0, :cond_0

    .line 6081
    iget-object v9, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 145
    .local v9, "target":Liob;
    instance-of v10, v9, Liop;

    if-eqz v10, :cond_0

    move-object v6, v9

    .line 146
    check-cast v6, Liop;

    .line 147
    .local v6, "page":Liop;
    invoke-interface {v6}, Liop;->getSession()Lipc;

    move-result-object v8

    .line 148
    .local v8, "session":Lipc;
    invoke-interface {v8}, Lipc;->exitSession()Z

    .line 151
    .end local v6    # "page":Liop;
    .end local v8    # "session":Lipc;
    .end local v9    # "target":Liob;
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 152
    invoke-virtual {v10, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 153
    .local v3, "launchIntent":Landroid/content/Intent;
    const/4 v10, 0x0

    invoke-static {v10, v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 155
    const-string/jumbo v10, "startPackage"

    const-string/jumbo v11, "true"

    invoke-virtual {v2, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 160
    .end local v0    # "closeCurrentApp":Z
    .end local v3    # "launchIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-object v10, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v10}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_0
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
    .line 41
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "sendSMS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;->sendSMS(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 75
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 44
    :cond_1
    const-string/jumbo v1, "isInstalledApp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    const-string/jumbo v1, "IO"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 56
    :cond_2
    const-string/jumbo v1, "checkJSAPI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;->checkJsAPI(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    .line 58
    :cond_3
    const-string/jumbo v1, "openInBrowser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;->openInBrowser(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    .line 60
    :cond_4
    const-string/jumbo v1, "startPackage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 61
    const-string/jumbo v1, "IO"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 72
    :cond_5
    const-string/jumbo v1, "openSystemSetting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;->openSystemSetting(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 31
    const-string/jumbo v0, "openInBrowser"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 32
    const-string/jumbo v0, "sendSMS"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "isInstalledApp"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "checkJSAPI"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "startPackage"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "openSystemSetting"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 37
    return-void
.end method
