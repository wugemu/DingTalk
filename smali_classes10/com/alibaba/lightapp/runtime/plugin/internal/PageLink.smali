.class public Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "PageLink.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mPageLinkReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->mPageLinkReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_pagelink"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->mPageLinkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 214
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->mPageLinkReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->mPageLinkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public fetch(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    const/4 v5, 0x0

    .line 106
    .local v5, "isFetchSuccess":Z
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v6, "result":Lorg/json/JSONObject;
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "linkIdentifier"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "identifier":Ljava/lang/String;
    const/4 v7, 0x0

    .line 110
    .local v7, "webviewIdentifier":Ljava/lang/String;
    const/4 v0, 0x0

    .line 111
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "extras_activity_intent"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bundle":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 113
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 114
    const-string/jumbo v8, "identifier"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 118
    const/4 v5, 0x1

    .line 119
    const-string/jumbo v8, "target_page"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    const-string/jumbo v8, "extra_datas"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "extraDatas":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, "linkIdentifier"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    if-eqz v2, :cond_1

    .line 125
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    .local v3, "extraJson":Lorg/json/JSONObject;
    const-string/jumbo v8, "extraDatas"

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v2    # "extraDatas":Ljava/lang/String;
    .end local v3    # "extraJson":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    :goto_1
    return-object v8

    .line 128
    .restart local v2    # "extraDatas":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "extraDatas":Ljava/lang/String;
    :cond_2
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 185
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->registerReceiver()V

    .line 186
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->unregisterReceiver()V

    .line 173
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 174
    return-void
.end method

.method public request(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    const/4 v5, 0x0

    .line 54
    .local v5, "isOpenActionSuccess":Z
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v7, "result":Lorg/json/JSONObject;
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "url"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "targetUrl":Ljava/lang/String;
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "extraDatas"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 61
    .local v1, "extraDatas":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 62
    const/4 v5, 0x1

    .line 63
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljav;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "identifier":Ljava/lang/String;
    const-string/jumbo v9, "%3f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 66
    .local v3, "index":I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_0

    .line 67
    const-string/jumbo v9, "%3F"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 69
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 70
    .local v6, "length":I
    if-ltz v3, :cond_3

    .line 71
    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    add-int/lit8 v12, v3, 0x3

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "dd_page_id"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "%3d"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v2, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "%26"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    add-int/lit8 v11, v3, 0x3

    invoke-virtual {v8, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 80
    :goto_0
    const-string/jumbo v9, "linkIdentifier"

    invoke-virtual {v7, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v4, "innerBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 85
    const-string/jumbo v9, "extra_datas"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    const-string/jumbo v9, "identifier"

    invoke-virtual {v4, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "url"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v9, "webview_extras"

    invoke-virtual {v0, v9, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v10

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v10, v9, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "identifier":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "innerBundle":Landroid/os/Bundle;
    .end local v6    # "length":I
    :cond_2
    :goto_1
    if-eqz v5, :cond_5

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v9, v10, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    :goto_2
    return-object v9

    .line 73
    .restart local v2    # "identifier":Ljava/lang/String;
    .restart local v3    # "index":I
    .restart local v6    # "length":I
    :cond_3
    :try_start_1
    const-string/jumbo v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 74
    if-ltz v3, :cond_4

    .line 75
    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "dd_page_id"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "="

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v2, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "&"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v8, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 77
    :cond_4
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "?dd_page_id"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "="

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v2, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 99
    .end local v2    # "identifier":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v6    # "length":I
    :cond_5
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_2

    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public response(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    const/4 v6, 0x0

    .line 140
    .local v6, "isResponseSuccess":Z
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "linkIdentifier"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "identifier":Ljava/lang/String;
    const/4 v7, 0x0

    .line 143
    .local v7, "webviewIdentifier":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "extras_activity_intent"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 145
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v8, "identifier"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 149
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 150
    const/4 v6, 0x1

    .line 151
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "code"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 152
    .local v2, "code":I
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "callBackDatas"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 155
    .local v1, "callbackDatas":Lorg/json/JSONObject;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "action_pagelink"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "code"

    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string/jumbo v8, "callback_result"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string/jumbo v8, "identifier"

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v8

    invoke-virtual {v8, v5}, Ldq;->a(Landroid/content/Intent;)Z

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PageLink;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 161
    .local v3, "ctx":Landroid/content/Context;
    if-eqz v3, :cond_1

    instance-of v8, v3, Landroid/app/Activity;

    if-eqz v8, :cond_1

    .line 162
    check-cast v3, Landroid/app/Activity;

    .end local v3    # "ctx":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 166
    .end local v1    # "callbackDatas":Lorg/json/JSONObject;
    .end local v2    # "code":I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz v6, :cond_2

    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    :goto_0
    return-object v8

    :cond_2
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method
