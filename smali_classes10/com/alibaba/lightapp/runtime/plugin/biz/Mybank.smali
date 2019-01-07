.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Mybank.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public authLogin(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 200
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "context is not activity"

    .line 201
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 208
    :goto_0
    return-object v2

    .line 203
    :cond_1
    new-instance v1, Lcom/mybank/android/api/LoginTask;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mybank/android/api/LoginTask;-><init>(Landroid/content/Context;)V

    .line 204
    .local v1, "task":Lcom/mybank/android/api/LoginTask;
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 5080
    const-class v2, Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mybank/android/phone/common/service/login/LoginService;

    .line 5081
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 5082
    if-nez v2, :cond_2

    .line 5083
    const-string/jumbo v2, "errorMessage"

    const-string/jumbo v3, "login service lost."

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5084
    const/4 v2, 0x0

    invoke-interface {v4, v2, v5}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 205
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0

    .line 5088
    :cond_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5090
    :try_start_1
    sget-object v7, Ljfb;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5091
    sget-object v8, Ljfb;->b:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5097
    :goto_2
    :try_start_2
    sget-object v7, Ljfb;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5098
    sget-object v8, Ljfb;->a:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5104
    :goto_3
    :try_start_3
    sget-object v7, Ljfb;->c:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5105
    sget-object v7, Ljfb;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 5110
    :goto_4
    :try_start_4
    iget-object v3, v1, Lcom/mybank/android/api/LoginTask;->a:Landroid/content/Context;

    new-instance v7, Lcom/mybank/android/api/LoginTask$2;

    invoke-direct {v7, v1, v5, v4}, Lcom/mybank/android/api/LoginTask$2;-><init>(Lcom/mybank/android/api/LoginTask;Lorg/json/JSONObject;Ljfa;)V

    invoke-virtual {v2, v3, v6, v7}, Lcom/mybank/android/phone/common/service/login/LoginService;->authLogin(Landroid/content/Context;Landroid/os/Bundle;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 206
    .end local v1    # "task":Lcom/mybank/android/api/LoginTask;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 208
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "task":Lcom/mybank/android/api/LoginTask;
    :catch_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v7

    goto :goto_3

    :catch_3
    move-exception v7

    goto :goto_2
.end method

.method public autoLogin(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 184
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "context is not activity"

    .line 185
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 192
    :goto_0
    return-object v2

    .line 187
    :cond_1
    new-instance v1, Lcom/mybank/android/api/LoginTask;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mybank/android/api/LoginTask;-><init>(Landroid/content/Context;)V

    .line 188
    .local v1, "task":Lcom/mybank/android/api/LoginTask;
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 4133
    const-class v2, Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mybank/android/phone/common/service/login/LoginService;

    .line 4134
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 4135
    if-nez v2, :cond_2

    .line 4136
    const-string/jumbo v2, "errorMessage"

    const-string/jumbo v3, "login service lost."

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4137
    const/4 v2, 0x0

    invoke-interface {v4, v2, v5}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 189
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0

    .line 4141
    :cond_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4143
    :try_start_1
    sget-object v7, Ljfb;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4144
    sget-object v8, Ljfb;->b:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4150
    :goto_2
    :try_start_2
    sget-object v7, Ljfb;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4151
    sget-object v8, Ljfb;->a:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4157
    :goto_3
    :try_start_3
    sget-object v7, Ljfb;->c:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4158
    sget-object v7, Ljfb;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4163
    :goto_4
    :try_start_4
    new-instance v3, Lcom/mybank/android/api/LoginTask$3;

    invoke-direct {v3, v1, v5, v4}, Lcom/mybank/android/api/LoginTask$3;-><init>(Lcom/mybank/android/api/LoginTask;Lorg/json/JSONObject;Ljfa;)V

    invoke-virtual {v2, v6, v3}, Lcom/mybank/android/phone/common/service/login/LoginService;->autoLogin(Landroid/os/Bundle;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 190
    .end local v1    # "task":Lcom/mybank/android/api/LoginTask;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 192
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "task":Lcom/mybank/android/api/LoginTask;
    :catch_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v7

    goto :goto_3

    :catch_3
    move-exception v7

    goto :goto_2
.end method

.method public encryptPassword(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 82
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x3

    const-string/jumbo v4, "context is not activity"

    .line 83
    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 90
    :goto_0
    return-object v1

    .line 85
    :cond_1
    new-instance v1, Lcom/mybank/android/api/EncryptTask;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mybank/android/api/EncryptTask;-><init>(Landroid/content/Context;)V

    .line 86
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-static {v1, v2}, Lcom/mybank/android/api/EncryptTask;->a(Lorg/json/JSONObject;Ljfa;)V

    .line 87
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 90
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x2

    const-string/jumbo v4, "invalid args"

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public fakeLogin(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 217
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "context is not activity"

    .line 218
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 225
    :goto_0
    return-object v2

    .line 220
    :cond_1
    new-instance v1, Lcom/mybank/android/api/LoginTask;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mybank/android/api/LoginTask;-><init>(Landroid/content/Context;)V

    .line 221
    .local v1, "task":Lcom/mybank/android/api/LoginTask;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 5187
    const-string/jumbo v4, "token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5188
    const-class v2, Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mybank/android/phone/common/service/login/LoginService;

    .line 5189
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 5190
    if-nez v2, :cond_2

    .line 5191
    const-string/jumbo v2, "errorMessage"

    const-string/jumbo v4, "login service lost."

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5192
    const/4 v2, 0x0

    invoke-interface {v3, v2, v5}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 222
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0

    .line 5196
    :cond_2
    new-instance v6, Lcom/mybank/android/api/LoginTask$4;

    invoke-direct {v6, v1, v5, v3}, Lcom/mybank/android/api/LoginTask$4;-><init>(Lcom/mybank/android/api/LoginTask;Lorg/json/JSONObject;Ljfa;)V

    invoke-virtual {v2, v4, v6}, Lcom/mybank/android/phone/common/service/login/LoginService;->fakeLogin(Ljava/lang/String;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 223
    .end local v1    # "task":Lcom/mybank/android/api/LoginTask;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 225
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public getBankInfo(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x2

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 265
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "context is not activity"

    .line 266
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 273
    :goto_0
    return-object v2

    .line 268
    :cond_1
    new-instance v1, Lcom/mybank/android/api/BankCardTask;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mybank/android/api/BankCardTask;-><init>(Landroid/content/Context;)V

    .line 269
    .local v1, "task":Lcom/mybank/android/api/BankCardTask;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 8029
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 8030
    const-string/jumbo v5, "queryInfo"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 8031
    if-nez v2, :cond_2

    .line 8033
    const/4 v2, 0x0

    invoke-interface {v3, v2, v4}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 270
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0

    .line 8036
    :cond_2
    const-string/jumbo v5, "bankCode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8037
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8039
    const/4 v2, 0x0

    invoke-interface {v3, v2, v4}, Ljfa;->onResult(ZLorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 271
    .end local v1    # "task":Lcom/mybank/android/api/BankCardTask;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 273
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, "invalid args"

    invoke-static {v9, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 8042
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "task":Lcom/mybank/android/api/BankCardTask;
    :cond_3
    :try_start_1
    iget-object v5, v1, Lcom/mybank/android/api/BankCardTask;->a:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Ljava/lang/String;)Ljfx;

    move-result-object v2

    .line 8043
    if-nez v2, :cond_4

    .line 8045
    const/4 v2, 0x0

    invoke-interface {v3, v2, v4}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    goto :goto_1

    .line 8048
    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 8049
    const-string/jumbo v5, "name"

    iget-object v6, v2, Ljfx;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8050
    const-string/jumbo v5, "code"

    iget-object v6, v2, Ljfx;->d:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8051
    const-string/jumbo v5, "localIconUrl"

    iget-object v6, v2, Ljfx;->e:Ljava/lang/String;

    const-string/jumbo v7, "asset://com.mybank.android.phone/"

    const-string/jumbo v8, "https://g.alicdn.com/mybank-h5/localshareres/"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8052
    const-string/jumbo v5, "localWaterMarkUrl"

    iget-object v6, v2, Ljfx;->g:Ljava/lang/String;

    const-string/jumbo v7, "asset://com.mybank.android.phone/"

    const-string/jumbo v8, "https://g.alicdn.com/mybank-h5/localshareres/"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8053
    iget v2, v2, Ljfx;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 8054
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_5

    .line 8055
    const/4 v5, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 8057
    :cond_5
    const-string/jumbo v5, "cardBGColor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8058
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 8059
    const-string/jumbo v5, "success"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 8060
    const-string/jumbo v5, "bankInfo"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8061
    const/4 v4, 0x1

    invoke-interface {v3, v4, v2}, Ljfa;->onResult(ZLorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public getDeviceInfo(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 281
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x3

    const-string/jumbo v4, "context is not activity"

    .line 282
    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 289
    :goto_0
    return-object v1

    .line 284
    :cond_1
    new-instance v1, Lcom/mybank/android/api/DeviceInfoTask;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mybank/android/api/DeviceInfoTask;-><init>(Landroid/content/Context;)V

    .line 285
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-static {v1}, Lcom/mybank/android/api/DeviceInfoTask;->a(Ljfa;)V

    .line 286
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 289
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x2

    const-string/jumbo v4, "invalid args"

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public getMyConfig(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 233
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "context is not activity"

    .line 234
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 241
    :goto_0
    return-object v2

    .line 236
    :cond_1
    new-instance v1, Lcom/mybank/android/api/MyConfigTask;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mybank/android/api/MyConfigTask;-><init>(Landroid/content/Context;)V

    .line 237
    .local v1, "task":Lcom/mybank/android/api/MyConfigTask;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 6031
    if-nez v2, :cond_3

    .line 6032
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/mybank/android/api/MyConfigTask;->a(I)V

    .line 238
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0

    .line 6035
    :cond_3
    const-string/jumbo v4, "configKeys"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 6036
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 6037
    :cond_4
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/mybank/android/api/MyConfigTask;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 239
    .end local v1    # "task":Lcom/mybank/android/api/MyConfigTask;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 241
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 6041
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "task":Lcom/mybank/android/api/MyConfigTask;
    :cond_5
    :try_start_1
    const-class v2, Lcom/mybank/android/phone/common/service/api/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mybank/android/phone/common/service/api/ConfigService;

    .line 6042
    if-nez v2, :cond_6

    .line 6043
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/mybank/android/api/MyConfigTask;->a(I)V

    goto :goto_1

    .line 6046
    :cond_6
    invoke-virtual {v2}, Lcom/mybank/android/phone/common/service/api/ConfigService;->update()V

    .line 6047
    iput-object v3, v1, Lcom/mybank/android/api/MyConfigTask;->b:Ljfa;

    .line 6048
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, v1, Lcom/mybank/android/api/MyConfigTask;->a:Lorg/json/JSONObject;

    .line 6050
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 6051
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    :goto_2
    if-ltz v4, :cond_7

    .line 6052
    const/4 v3, 0x0

    .line 6054
    :try_start_2
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 6058
    :goto_3
    :try_start_3
    invoke-virtual {v2, v3}, Lcom/mybank/android/phone/common/service/api/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6059
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6051
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto :goto_2

    .line 6062
    :cond_7
    iget-object v2, v1, Lcom/mybank/android/api/MyConfigTask;->a:Lorg/json/JSONObject;

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6063
    iget-object v2, v1, Lcom/mybank/android/api/MyConfigTask;->a:Lorg/json/JSONObject;

    const-string/jumbo v3, "success"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6072
    iget-object v2, v1, Lcom/mybank/android/api/MyConfigTask;->b:Ljfa;

    if-eqz v2, :cond_2

    .line 6073
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "verifyIDCard  success:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/mybank/android/api/MyConfigTask;->a:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6074
    iget-object v2, v1, Lcom/mybank/android/api/MyConfigTask;->b:Ljfa;

    const/4 v3, 0x1

    iget-object v4, v1, Lcom/mybank/android/api/MyConfigTask;->a:Lorg/json/JSONObject;

    invoke-interface {v2, v3, v4}, Ljfa;->onResult(ZLorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method public login(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 167
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "context is not activity"

    .line 168
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 175
    :goto_0
    return-object v2

    .line 170
    :cond_1
    new-instance v1, Lcom/mybank/android/api/LoginTask;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mybank/android/api/LoginTask;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, "task":Lcom/mybank/android/api/LoginTask;
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 4027
    const-class v2, Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mybank/android/phone/common/service/login/LoginService;

    .line 4028
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 4029
    if-nez v2, :cond_2

    .line 4030
    const-string/jumbo v2, "errorMessage"

    const-string/jumbo v3, "login service lost."

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4031
    const/4 v2, 0x0

    invoke-interface {v4, v2, v5}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 172
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0

    .line 4035
    :cond_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4037
    :try_start_1
    sget-object v7, Ljfb;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4038
    sget-object v8, Ljfb;->b:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4044
    :goto_2
    :try_start_2
    sget-object v7, Ljfb;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4045
    sget-object v8, Ljfb;->a:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4051
    :goto_3
    :try_start_3
    sget-object v7, Ljfb;->c:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4052
    sget-object v7, Ljfb;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4056
    :goto_4
    :try_start_4
    iget-object v3, v1, Lcom/mybank/android/api/LoginTask;->a:Landroid/content/Context;

    new-instance v7, Lcom/mybank/android/api/LoginTask$1;

    invoke-direct {v7, v1, v5, v4}, Lcom/mybank/android/api/LoginTask$1;-><init>(Lcom/mybank/android/api/LoginTask;Lorg/json/JSONObject;Ljfa;)V

    invoke-virtual {v2, v3, v6, v7}, Lcom/mybank/android/phone/common/service/login/LoginService;->login(Landroid/content/Context;Landroid/os/Bundle;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 173
    .end local v1    # "task":Lcom/mybank/android/api/LoginTask;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 175
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "task":Lcom/mybank/android/api/LoginTask;
    :catch_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v7

    goto :goto_3

    :catch_3
    move-exception v7

    goto :goto_2
.end method

.method public logout(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 151
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "context is not activity"

    .line 152
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 159
    :goto_0
    return-object v2

    .line 154
    :cond_1
    new-instance v1, Lcom/mybank/android/api/LoginTask;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mybank/android/api/LoginTask;-><init>(Landroid/content/Context;)V

    .line 155
    .local v1, "task":Lcom/mybank/android/api/LoginTask;
    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 3220
    const-class v2, Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mybank/android/phone/common/service/login/LoginService;

    .line 3221
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 3222
    if-nez v2, :cond_2

    .line 3223
    const-string/jumbo v2, "errorMessage"

    const-string/jumbo v5, "login service lost."

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3224
    const/4 v2, 0x0

    invoke-interface {v3, v2, v4}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 156
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0

    .line 3228
    :cond_2
    new-instance v5, Lcom/mybank/android/api/LoginTask$5;

    invoke-direct {v5, v1, v4, v3}, Lcom/mybank/android/api/LoginTask$5;-><init>(Lcom/mybank/android/api/LoginTask;Lorg/json/JSONObject;Ljfa;)V

    invoke-virtual {v2, v5}, Lcom/mybank/android/phone/common/service/login/LoginService;->logout(Lcom/mybank/android/phone/common/service/login/LoginService$LoginOutCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 157
    .end local v1    # "task":Lcom/mybank/android/api/LoginTask;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 159
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "23794744"

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;)V

    invoke-static {v0, v1, v2}, Ljez;->a(Landroid/content/Context;Ljava/lang/String;Ljey;)V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    invoke-static {}, Ljez;->a()V

    .line 74
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 76
    return-void
.end method

.method public remoteLog(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 249
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "context is not activity"

    .line 250
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 257
    :goto_0
    return-object v2

    .line 252
    :cond_1
    new-instance v1, Lcom/mybank/android/api/RemoteLogTask;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mybank/android/api/RemoteLogTask;-><init>(Landroid/content/Context;)V

    .line 253
    .local v1, "task":Lcom/mybank/android/api/RemoteLogTask;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 7026
    iput-object v3, v1, Lcom/mybank/android/api/RemoteLogTask;->b:Ljfa;

    .line 7027
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, v1, Lcom/mybank/android/api/RemoteLogTask;->a:Lorg/json/JSONObject;

    .line 7029
    invoke-virtual {v1, v2}, Lcom/mybank/android/api/RemoteLogTask;->a(Lorg/json/JSONObject;)V

    .line 7036
    iget-object v2, v1, Lcom/mybank/android/api/RemoteLogTask;->b:Ljfa;

    if-eqz v2, :cond_2

    .line 7037
    iget-object v2, v1, Lcom/mybank/android/api/RemoteLogTask;->b:Ljfa;

    const/4 v3, 0x1

    iget-object v4, v1, Lcom/mybank/android/api/RemoteLogTask;->a:Lorg/json/JSONObject;

    invoke-interface {v2, v3, v4}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 254
    :cond_2
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 255
    .end local v1    # "task":Lcom/mybank/android/api/RemoteLogTask;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 257
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public rpc(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 133
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "context is not activity"

    .line 134
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 143
    :goto_0
    return-object v2

    .line 136
    :cond_1
    new-instance v1, Lcom/mybank/android/api/RpcTask;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mybank/android/api/RpcTask;-><init>(Landroid/content/Context;)V

    .line 137
    .local v1, "task":Lcom/mybank/android/api/RpcTask;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 3026
    new-instance v4, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    iget-object v5, v1, Lcom/mybank/android/api/RpcTask;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;-><init>(Landroid/content/Context;Z)V

    .line 3030
    new-instance v5, Lcom/mybank/android/api/RpcTask$a;

    invoke-direct {v5, v1, v3}, Lcom/mybank/android/api/RpcTask$a;-><init>(Lcom/mybank/android/api/RpcTask;Ljfa;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->sendRequest(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 141
    .end local v1    # "task":Lcom/mybank/android/api/RpcTask;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 143
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public verifyIDCard(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 98
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v6, "context is not activity"

    .line 99
    invoke-static {v4, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 107
    :goto_0
    return-object v2

    .line 101
    :cond_1
    new-instance v1, Lcom/mybank/android/api/VerifyIdCardTask;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mybank/android/api/VerifyIdCardTask;-><init>(Landroid/content/Context;)V

    .line 103
    .local v1, "task":Lcom/mybank/android/api/VerifyIdCardTask;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 1051
    const-string/jumbo v6, "bisToken"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/mybank/android/api/VerifyIdCardTask;->b:Ljava/lang/String;

    .line 1052
    const-string/jumbo v6, "drmJson"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/mybank/android/api/VerifyIdCardTask;->c:Ljava/lang/String;

    .line 1053
    const-string/jumbo v6, "token"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/mybank/android/api/VerifyIdCardTask;->d:Ljava/lang/String;

    .line 1056
    const-string/jumbo v6, "squareOperationType"

    iget v7, v1, Lcom/mybank/android/api/VerifyIdCardTask;->e:I

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/mybank/android/api/VerifyIdCardTask;->e:I

    .line 1059
    const-string/jumbo v6, "squareCamType"

    iget v7, v1, Lcom/mybank/android/api/VerifyIdCardTask;->f:I

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/mybank/android/api/VerifyIdCardTask;->f:I

    .line 1061
    const-string/jumbo v6, "cardType"

    iget v7, v1, Lcom/mybank/android/api/VerifyIdCardTask;->g:I

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/mybank/android/api/VerifyIdCardTask;->g:I

    .line 1063
    iput-object v3, v1, Lcom/mybank/android/api/VerifyIdCardTask;->i:Ljfa;

    .line 1064
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, v1, Lcom/mybank/android/api/VerifyIdCardTask;->h:Lorg/json/JSONObject;

    .line 1103
    const-class v2, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService;

    .line 1104
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1107
    iget v3, v1, Lcom/mybank/android/api/VerifyIdCardTask;->e:I

    if-ne v3, v4, :cond_5

    .line 1109
    const/4 v3, 0x1

    iput v3, v1, Lcom/mybank/android/api/VerifyIdCardTask;->e:I

    move v3, v5

    .line 1111
    :goto_1
    iget v7, v1, Lcom/mybank/android/api/VerifyIdCardTask;->e:I

    if-ne v7, v5, :cond_2

    .line 1113
    const/4 v3, 0x1

    iput v3, v1, Lcom/mybank/android/api/VerifyIdCardTask;->e:I

    move v3, v4

    .line 1115
    :cond_2
    iget v7, v1, Lcom/mybank/android/api/VerifyIdCardTask;->e:I

    if-ne v7, v8, :cond_3

    .line 1117
    const/4 v3, 0x2

    iput v3, v1, Lcom/mybank/android/api/VerifyIdCardTask;->e:I

    move v3, v4

    .line 1119
    :cond_3
    iget v7, v1, Lcom/mybank/android/api/VerifyIdCardTask;->g:I

    if-ne v7, v4, :cond_4

    .line 1120
    const/4 v4, 0x3

    iput v4, v1, Lcom/mybank/android/api/VerifyIdCardTask;->e:I

    .line 1123
    :cond_4
    sget-object v4, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->RequestPage:Ljava/lang/String;

    iget v7, v1, Lcom/mybank/android/api/VerifyIdCardTask;->e:I

    invoke-virtual {v6, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1125
    sget-object v4, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->RequestTotalPagesNum:Ljava/lang/String;

    invoke-virtual {v6, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1128
    sget-object v3, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->BisToken:Ljava/lang/String;

    iget-object v4, v1, Lcom/mybank/android/api/VerifyIdCardTask;->b:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v3, v1, Lcom/mybank/android/api/VerifyIdCardTask;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v3

    .line 1131
    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v3

    .line 1132
    sget-object v4, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->APDID_TOKEN:Ljava/lang/String;

    iget-object v3, v3, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-virtual {v6, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    sget-object v3, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->BIZ_ID:Ljava/lang/String;

    iget-object v4, v1, Lcom/mybank/android/api/VerifyIdCardTask;->d:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    sget-object v3, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->inputBizParam:Ljava/lang/String;

    iget-object v4, v1, Lcom/mybank/android/api/VerifyIdCardTask;->c:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    sget-object v3, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->RequestCardType:Ljava/lang/String;

    const-string/jumbo v4, "IDCARD"

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    sget-object v3, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->RequestCardCode:Ljava/lang/String;

    const-string/jumbo v4, "RequestCardCode"

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    new-instance v3, Lcom/mybank/android/api/VerifyIdCardTask$1;

    invoke-direct {v3, v1}, Lcom/mybank/android/api/VerifyIdCardTask$1;-><init>(Lcom/mybank/android/api/VerifyIdCardTask;)V

    invoke-virtual {v2, v3, v6}, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService;->recognizeIdentityCard(Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardRecognizeCallBack;Landroid/os/Bundle;)V

    .line 104
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 105
    .end local v1    # "task":Lcom/mybank/android/api/VerifyIdCardTask;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 107
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, "invalid args"

    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "task":Lcom/mybank/android/api/VerifyIdCardTask;
    :cond_5
    move v3, v4

    goto/16 :goto_1
.end method

.method public verifyIdentity(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 23
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 114
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 115
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "context is not activity"

    .line 116
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 124
    :goto_0
    return-object v2

    .line 118
    :cond_1
    new-instance v22, Lcom/mybank/android/api/VerifyTask;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/mybank/android/api/VerifyTask;-><init>(Landroid/content/Context;)V

    .line 119
    .local v22, "task":Lcom/mybank/android/api/VerifyTask;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    new-instance v14, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 2051
    const-string/jumbo v3, "action"

    invoke-static {v2, v3}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2053
    const-string/jumbo v4, "getBioInfo"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2054
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/mybank/android/api/VerifyTask;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getBioInfo()Ljava/lang/String;

    move-result-object v2

    .line 2055
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2056
    const-string/jumbo v4, "actionResult"

    invoke-static {v3, v4, v2}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2057
    const-string/jumbo v2, "success"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2058
    const/4 v2, 0x1

    invoke-interface {v14, v2, v3}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 121
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0

    .line 2062
    :cond_3
    const-string/jumbo v3, "verifyId"

    invoke-static {v2, v3}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2063
    const-string/jumbo v4, "token"

    invoke-static {v2, v4}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2064
    const-string/jumbo v5, "bizName"

    invoke-static {v2, v5}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2065
    const-string/jumbo v6, "verifyType"

    invoke-static {v2, v6}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2066
    const-string/jumbo v6, "logonId"

    invoke-static {v2, v6}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2067
    const-string/jumbo v6, "sceneId"

    invoke-static {v2, v6}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2068
    const-string/jumbo v6, "bizId"

    invoke-static {v2, v6}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2069
    const-string/jumbo v6, "bizRequestData"

    invoke-static {v2, v6}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2070
    const-string/jumbo v6, "nextStep"

    invoke-static {v2, v6}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2071
    const-string/jumbo v6, "moduleData"

    invoke-static {v2, v6}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2074
    invoke-static {v2}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    .line 2075
    invoke-static {v2}, Lcom/mybank/android/api/VerifyTask;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 2077
    const-string/jumbo v2, "pubkey"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "pubkey"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v12, "alipay"

    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2078
    :cond_4
    const-string/jumbo v2, "pubkey"

    const-string/jumbo v12, "alipay"

    invoke-virtual {v6, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    const-string/jumbo v2, "VI_PWD_SCENE"

    const-string/jumbo v12, "alipay"

    invoke-virtual {v6, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->getInstance()Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    move-result-object v2

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->inject(Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;)V

    .line 2082
    const-class v2, Lcom/mybank/android/phone/common/service/api/AlipayRpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mybank/android/phone/common/service/api/RpcService;

    .line 2084
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->getInstance()Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

    move-result-object v12

    new-instance v13, Lcom/mybank/android/api/VerifyTask$1;

    move-object/from16 v0, v22

    invoke-direct {v13, v0, v2}, Lcom/mybank/android/api/VerifyTask$1;-><init>(Lcom/mybank/android/api/VerifyTask;Lcom/mybank/android/phone/common/service/api/RpcService;)V

    invoke-virtual {v12, v13}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->inject(Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;)V

    .line 2126
    :cond_5
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "standard"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2127
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2128
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/mybank/android/api/VerifyTask;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v2

    new-instance v3, Ljew;

    invoke-direct {v3, v14}, Ljew;-><init>(Ljfa;)V

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->startVerifyByToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 122
    .end local v22    # "task":Lcom/mybank/android/api/VerifyTask;
    :catch_0
    move-exception v21

    .line 123
    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 2096
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v22    # "task":Lcom/mybank/android/api/VerifyTask;
    :cond_7
    :try_start_1
    const-string/jumbo v2, "pubkey"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v12, "mybank"

    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2097
    const-string/jumbo v2, "gwUrl"

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/mybank/android/api/VerifyTask;->a:Landroid/content/Context;

    const-string/jumbo v13, "gateway_url"

    invoke-static {v12, v13}, Ljev;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    const-string/jumbo v2, "VI_PWD_SCENE"

    const-string/jumbo v12, "mybank"

    invoke-virtual {v6, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const-string/jumbo v2, "pubkey"

    const-string/jumbo v12, "mybank"

    invoke-virtual {v6, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    const-class v2, Lcom/mybank/android/phone/common/service/api/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mybank/android/phone/common/service/api/RpcService;

    .line 2103
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->getInstance()Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    move-result-object v12

    new-instance v13, Lcom/mybank/android/api/VerifyTask$2;

    move-object/from16 v0, v22

    invoke-direct {v13, v0, v2}, Lcom/mybank/android/api/VerifyTask$2;-><init>(Lcom/mybank/android/api/VerifyTask;Lcom/mybank/android/phone/common/service/api/RpcService;)V

    invoke-virtual {v12, v13}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->inject(Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;)V

    .line 2113
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->getInstance()Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;

    move-result-object v12

    new-instance v13, Lcom/mybank/android/api/VerifyTask$3;

    move-object/from16 v0, v22

    invoke-direct {v13, v0, v2}, Lcom/mybank/android/api/VerifyTask$3;-><init>(Lcom/mybank/android/api/VerifyTask;Lcom/mybank/android/phone/common/service/api/RpcService;)V

    invoke-virtual {v12, v13}, Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcServiceInjector;->inject(Lcom/alipay/android/phone/mobilecommon/dingtalk/api/IRpcService;)V

    goto/16 :goto_2

    .line 2130
    :cond_8
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/mybank/android/api/VerifyTask;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v2

    new-instance v7, Ljex;

    invoke-direct {v7, v14}, Ljex;-><init>(Ljfa;)V

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V

    goto/16 :goto_1

    .line 2132
    :cond_9
    const-string/jumbo v2, "verify_init"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2133
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/mybank/android/api/VerifyTask;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v7

    new-instance v13, Ljex;

    invoke-direct {v13, v14}, Ljex;-><init>(Ljfa;)V

    move-object v12, v6

    move-object v14, v5

    invoke-virtual/range {v7 .. v14}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->fastVerifyWithInitRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2135
    :cond_a
    const-string/jumbo v2, "verify_module"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2136
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/mybank/android/api/VerifyTask;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v12

    new-instance v19, Ljex;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljex;-><init>(Ljfa;)V

    move-object v13, v3

    move-object v14, v4

    move-object/from16 v17, v11

    move-object/from16 v18, v6

    move-object/from16 v20, v5

    invoke-virtual/range {v12 .. v20}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->fastVerifyWithModuleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
