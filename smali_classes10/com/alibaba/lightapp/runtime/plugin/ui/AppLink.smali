.class public Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "AppLink.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAppLinkReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->mAppLinkReceiver:Landroid/content/BroadcastReceiver;

    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_applink"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->mAppLinkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 255
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->mAppLinkReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->mAppLinkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->mAppLinkReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    :cond_0
    return-void
.end method


# virtual methods
.method public fetch(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    const/4 v5, 0x0

    .line 147
    .local v5, "isFetchSuccess":Z
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .local v6, "result":Lorg/json/JSONObject;
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "linkIdentifier"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "identifier":Ljava/lang/String;
    const/4 v8, 0x0

    .line 151
    .local v8, "webviewIdentifier":Ljava/lang/String;
    const/4 v0, 0x0

    .line 152
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "extras_activity_intent"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bundle":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 154
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 155
    const-string/jumbo v9, "identifier"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 158
    :cond_0
    if-eqz v8, :cond_1

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 159
    const/4 v5, 0x1

    .line 160
    const-string/jumbo v9, "target_page"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "targetPage":Ljava/lang/String;
    const-string/jumbo v9, "extra_datas"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "extraDatas":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v9, "linkIdentifier"

    invoke-virtual {v6, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string/jumbo v9, "targetPage"

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, "extraJson":Lorg/json/JSONObject;
    const-string/jumbo v9, "extraDatas"

    invoke-virtual {v6, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v2    # "extraDatas":Ljava/lang/String;
    .end local v3    # "extraJson":Lorg/json/JSONObject;
    .end local v7    # "targetPage":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v9, v10, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    :goto_1
    return-object v9

    .line 168
    .restart local v2    # "extraDatas":Ljava/lang/String;
    .restart local v7    # "targetPage":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "extraDatas":Ljava/lang/String;
    .end local v7    # "targetPage":Ljava/lang/String;
    :cond_2
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 226
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->registerReceiver()V

    .line 227
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->unregisterReceiver()V

    .line 213
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 214
    return-void
.end method

.method public open(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    const/4 v4, 0x0

    .line 59
    .local v4, "isOpenActionSuccess":Z
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "appId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "appIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 62
    .local v0, "appId":J
    const-wide/16 v6, -0x4

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    const-wide/16 v6, 0x9e

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    const-wide/16 v6, -0x6

    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    .line 63
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "homePage":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    const/4 v4, 0x1

    .line 67
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    new-instance v7, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$1;

    invoke-direct {v7, p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;J)V

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v3, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "appId":J
    .end local v2    # "appIdStr":Ljava/lang/String;
    .end local v3    # "homePage":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    :goto_1
    return-object v5

    :cond_2
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public request(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 18
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    .prologue
    .line 87
    const/4 v9, 0x0

    .line 89
    .local v9, "isOpenActionSuccess":Z
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v11, "result":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v15, "targetSchema"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, "targetSchema":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v15, "targetPage"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 94
    .local v12, "targetPage":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v15, "extraDatas"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 97
    .local v5, "extraDatas":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 98
    .local v2, "appId":J
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, "homepage":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 100
    const/4 v9, 0x1

    .line 101
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljav;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, "identifier":Ljava/lang/String;
    const-string/jumbo v14, "%3f"

    invoke-virtual {v6, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 104
    .local v8, "index":I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_0

    .line 105
    const-string/jumbo v14, "%3F"

    invoke-virtual {v6, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 107
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    .line 108
    .local v10, "length":I
    if-ltz v8, :cond_2

    .line 109
    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    add-int/lit8 v17, v8, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "dd_fetch_id"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "%3d"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object v7, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "%26"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    add-int/lit8 v16, v8, 0x3

    move/from16 v0, v16

    invoke-virtual {v6, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    :goto_0
    const-string/jumbo v14, "linkIdentifier"

    invoke-virtual {v11, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v14, "target_page"

    invoke-virtual {v4, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v14, "extra_datas"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v14, "identifier"

    invoke-virtual {v4, v14, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Landroid/app/Activity;

    new-instance v16, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;Landroid/os/Bundle;)V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v6, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v2    # "appId":J
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v6    # "homepage":Ljava/lang/String;
    .end local v7    # "identifier":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v10    # "length":I
    :cond_1
    :goto_1
    if-eqz v9, :cond_4

    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v15, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v14, v15, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    :goto_2
    return-object v14

    .line 111
    .restart local v2    # "appId":J
    .restart local v6    # "homepage":Ljava/lang/String;
    .restart local v7    # "identifier":Ljava/lang/String;
    .restart local v8    # "index":I
    .restart local v10    # "length":I
    :cond_2
    :try_start_1
    const-string/jumbo v14, "?"

    invoke-virtual {v6, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 112
    if-ltz v8, :cond_3

    .line 113
    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    add-int/lit8 v17, v8, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "dd_fetch_id"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "="

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object v7, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "&"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 115
    :cond_3
    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "?dd_fetch_id"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "="

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object v7, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 140
    .end local v2    # "appId":J
    .end local v6    # "homepage":Ljava/lang/String;
    .end local v7    # "identifier":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v10    # "length":I
    :cond_4
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v15, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v14, v15}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_2

    :catch_0
    move-exception v14

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
    .line 179
    const/4 v6, 0x0

    .line 180
    .local v6, "isResponseSuccess":Z
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "linkIdentifier"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "identifier":Ljava/lang/String;
    const/4 v7, 0x0

    .line 183
    .local v7, "webviewIdentifier":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "extras_activity_intent"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 185
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 186
    const-string/jumbo v8, "identifier"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 190
    const/4 v6, 0x1

    .line 191
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "code"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 192
    .local v2, "code":I
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "callBackDatas"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 195
    .local v1, "callbackDatas":Lorg/json/JSONObject;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "action_applink"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "code"

    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    const-string/jumbo v8, "callback_result"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string/jumbo v8, "identifier"

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v8

    invoke-virtual {v8, v5}, Ldq;->a(Landroid/content/Intent;)Z

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 201
    .local v3, "ctx":Landroid/content/Context;
    if-eqz v3, :cond_1

    instance-of v8, v3, Landroid/app/Activity;

    if-eqz v8, :cond_1

    .line 202
    check-cast v3, Landroid/app/Activity;

    .end local v3    # "ctx":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 206
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
