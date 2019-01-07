.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;
.super Lipd;
.source "MiniappGetUserInfoPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private static a()Lcom/alibaba/fastjson/JSONObject;
    .locals 10

    .prologue
    .line 91
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 93
    .local v2, "user":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 94
    .local v3, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v3, :cond_0

    .line 95
    const-string/jumbo v5, "nickName"

    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, ""

    :goto_0
    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v4, "avatarUrl"

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v3    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :goto_1
    return-object v2

    .line 95
    .restart local v3    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_2
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v3    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    const-string/jumbo v4, "JsApi"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "miniapp getUserInfo"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "code= "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 101
    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;

    .prologue
    .line 30
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;->a()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "JsApi"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "getUserInfo transferToHttpUrl"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "transferToHttpUrl failed "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 113
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "getUserInfo"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v3

    .line 45
    .local v3, "page":Liop;
    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v1

    .line 47
    .local v1, "activity":Landroid/app/Activity;
    invoke-interface {v3}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v4

    .line 48
    .local v4, "params":Landroid/os/Bundle;
    const-string/jumbo v5, "appId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2047
    .local v2, "appId":Ljava/lang/String;
    sget-object v6, Lhqf$b;->a:Lhqf;

    .line 49
    new-instance v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;

    invoke-direct {v5, p0, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;Liny;)V

    const-class v7, Lhqf$a;

    invoke-static {v5, v7, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhqf$a;

    invoke-virtual {v6, v2, v5}, Lhqf;->a(Ljava/lang/String;Lhqf$a;)V

    .line 84
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "appId":Ljava/lang/String;
    .end local v4    # "params":Landroid/os/Bundle;
    :cond_0
    const/4 v5, 0x1

    .line 87
    .end local v3    # "page":Liop;
    :goto_0
    return v5

    :cond_1
    invoke-super {p0, p1, p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v5

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 36
    const-string/jumbo v0, "getUserInfo"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 37
    return-void
.end method
