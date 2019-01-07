.class public Lcom/alipay/mobile/nebulacore/biz/H5BizPlugin;
.super Lipd;
.source "H5BizPlugin.java"


# static fields
.field private static final BIZ_SERVICE_CONFIG:Ljava/lang/String; = "h5_bizServiceConfig"

.field private static final SAVE_BIZ_SERVICE_RESULT:Ljava/lang/String; = "saveBizServiceResult"

.field private static final START_BIZ_SERVICE:Ljava/lang/String; = "startBizService"

.field private static final TAG:Ljava/lang/String; = "H5BizPlugin"

.field private static sSourceIdCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulacore/biz/H5BizPlugin;->sSourceIdCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private getServiceInfo(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 161
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 162
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v4, "h5_bizServiceConfig"

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "config":Ljava/lang/String;
    const-string/jumbo v4, "H5BizPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getServiceInfo: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 166
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    invoke-static {v2, p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 170
    .end local v0    # "config":Ljava/lang/String;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-object v3
.end method

.method private saveBizServiceResult(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 130
    .line 5081
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 130
    instance-of v5, v5, Liop;

    if-eqz v5, :cond_0

    .line 6081
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 131
    check-cast v2, Liop;

    .line 132
    .local v2, "h5Page":Liop;
    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "appId"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "currentAppId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 136
    const-string/jumbo v5, "H5BizPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getTopApplication: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lini;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v9}, Lini;->getParams()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v9}, Lini;->getSourceId()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "sourceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 140
    const-string/jumbo v5, "H5BizPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "saveBizServiceResult: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", sourceId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->isStartedBizService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6121
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 145
    invoke-static {v3, v5}, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->saveResult(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z

    .line 146
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 147
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "success"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v5, "savedData"

    .line 7121
    iget-object v6, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 148
    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-interface {p2, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 157
    .end local v0    # "currentAppId":Ljava/lang/String;
    .end local v1    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "h5Page":Liop;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "sourceId":Ljava/lang/String;
    :goto_0
    return v8

    .line 155
    :cond_0
    sget-object v5, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v5

    .line 156
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/nebula/R$string;->h5_biz_cannot_save_result:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 155
    invoke-interface {p2, v5, v6}, Liny;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private startBizService(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 17
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 56
    .line 2121
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 56
    const-string/jumbo v15, "name"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 57
    .local v12, "serviceName":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 58
    sget-object v14, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v14}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 59
    const/4 v14, 0x1

    .line 123
    :goto_0
    return v14

    .line 62
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alipay/mobile/nebulacore/biz/H5BizPlugin;->getServiceInfo(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 63
    .local v10, "serviceInfo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "appId"

    invoke-static {v10, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, "serviceAppId":Ljava/lang/String;
    const-string/jumbo v14, "level"

    invoke-static {v10, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, "serviceLevel":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 67
    sget-object v14, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v14}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v14

    .line 68
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/alipay/mobile/nebula/R$string;->h5_biz_cannot_find_service:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 67
    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Liny;->sendError(ILjava/lang/String;)V

    .line 69
    const/4 v14, 0x1

    goto :goto_0

    .line 72
    :cond_1
    const-string/jumbo v14, "H5BizPlugin"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "startBizService: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v5, 0x0

    .line 75
    .local v5, "h5Page":Liop;
    const-string/jumbo v3, ""

    .line 76
    .local v3, "currentAppId":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 3081
    .local v4, "currentPageUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 78
    instance-of v14, v14, Liop;

    if-eqz v14, :cond_2

    .line 4081
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 79
    .end local v5    # "h5Page":Liop;
    check-cast v5, Liop;

    .line 80
    .restart local v5    # "h5Page":Liop;
    invoke-interface {v5}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "appId"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-interface {v5}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 84
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v14

    const-class v15, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;

    .line 85
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 84
    invoke-virtual {v14, v15}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;

    .line 86
    .local v8, "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    if-eqz v8, :cond_3

    invoke-interface {v8, v11, v4}, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;->hasThisPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 87
    sget-object v14, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v14}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v14

    .line 88
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/alipay/mobile/nebula/R$string;->h5_biz_no_permission:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 87
    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Liny;->sendError(ILjava/lang/String;)V

    .line 89
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 92
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    if-eqz v5, :cond_5

    .line 93
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v7, "param":Landroid/os/Bundle;
    sget v14, Lcom/alipay/mobile/nebulacore/biz/H5BizPlugin;->sSourceIdCounter:I

    add-int/lit8 v14, v14, 0x1

    .line 96
    sput v14, Lcom/alipay/mobile/nebulacore/biz/H5BizPlugin;->sSourceIdCounter:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 98
    .local v13, "sourceId":Ljava/lang/String;
    const-string/jumbo v14, "bizParam"

    .line 4121
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 98
    const-string/jumbo v16, "param"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v14, "fromAppId"

    invoke-virtual {v7, v14, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v14, "fromPageUrl"

    invoke-virtual {v7, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v14, "isAppServiceMode"

    const-string/jumbo v15, "true"

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v14, "appClearTop"

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    const-string/jumbo v14, "startMultApp"

    const-string/jumbo v15, "YES"

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v14, "sourceId"

    invoke-virtual {v7, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->registerServicePointCut(Ljava/lang/String;Liny;)Z

    move-result v2

    .line 109
    .local v2, "canRegister":Z
    if-nez v2, :cond_4

    .line 110
    sget-object v14, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v14}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v14

    .line 111
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/alipay/mobile/nebula/R$string;->h5_biz_service_already_started:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 110
    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Liny;->sendError(ILjava/lang/String;)V

    .line 112
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 116
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v14

    const/4 v15, 0x0

    .line 117
    invoke-virtual {v14, v15, v9, v7}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v2    # "canRegister":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "param":Landroid/os/Bundle;
    .end local v13    # "sourceId":Ljava/lang/String;
    :cond_5
    :goto_1
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 119
    .restart local v2    # "canRegister":Z
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "param":Landroid/os/Bundle;
    .restart local v13    # "sourceId":Ljava/lang/String;
    :catch_0
    move-exception v14

    const-string/jumbo v14, "6002"

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->sendErrorCode(Liny;Ljava/lang/String;)V

    .line 120
    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->unregisterServicePointCut(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    const-string/jumbo v0, "startBizService"

    .line 1065
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/biz/H5BizPlugin;->startBizService(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v0

    .line 52
    :goto_0
    return v0

    .line 49
    :cond_0
    const-string/jumbo v0, "saveBizServiceResult"

    .line 2065
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/biz/H5BizPlugin;->saveBizServiceResult(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v0

    goto :goto_0

    .line 52
    :cond_1
    invoke-super {p0, p1, p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 41
    const-string/jumbo v0, "startBizService"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "saveBizServiceResult"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 43
    return-void
.end method
