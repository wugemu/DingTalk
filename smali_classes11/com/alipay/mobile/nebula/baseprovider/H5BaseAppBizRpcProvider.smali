.class public abstract Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;
.super Ljava/lang/Object;
.source "H5BaseAppBizRpcProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final bugMeRpcName:Ljava/lang/String; = "com.alipay.hpmweb.app"

.field private static final normalRpcName:Ljava/lang/String; = "com.alipay.wapcenter.rpc.clientService.app"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "H5AppRpc"

    sput-object v0, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enableUse()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 160
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 161
    const-string/jumbo v1, "no"

    const-string/jumbo v2, "h5_nbmergerpc"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public app(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .locals 14
    .param p1, "req"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 42
    .local v0, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    const-string/jumbo v9, "invalid_param"

    iput-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    .line 83
    :goto_0
    return-object v0

    .line 46
    .end local v0    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    :cond_0
    const-class v9, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 47
    .local v1, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->isLogin()Z

    move-result v9

    if-nez v9, :cond_1

    .line 48
    sget-object v9, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "!h5LoginProvider.isLogin() not handle rpc data "

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 50
    .restart local v0    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    const-string/jumbo v9, "not_login"

    iput-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    goto :goto_0

    .line 56
    .end local v0    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    :cond_1
    const-string/jumbo v3, "com.alipay.wapcenter.rpc.clientService.app"

    .line 58
    .local v3, "rpcName":Ljava/lang/String;
    iget-object v9, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->nbsource:Ljava/lang/String;

    const-string/jumbo v10, "debug"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 59
    const-string/jumbo v3, "com.alipay.hpmweb.app"

    .line 62
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 63
    .local v6, "rpcCallTime":J
    const-class v9, Lcom/alipay/mobile/nebula/provider/H5RpcProxyProvider;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5RpcProxyProvider;

    .line 64
    .local v2, "h5RpcProxyProvider":Lcom/alipay/mobile/nebula/provider/H5RpcProxyProvider;
    if-eqz v2, :cond_4

    const-string/jumbo v9, "com.alipay.wapcenter.rpc.clientService.app"

    .line 65
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->enableUse()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 67
    const-string/jumbo v9, "com.alipay.hpmweb.app"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 68
    const/4 v9, 0x3

    iput v9, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->openPlatReqMode:I

    .line 70
    :cond_3
    sget-object v9, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, " req:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/provider/H5RpcProxyProvider;->getPkgJson(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "rpcResult":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 78
    .local v4, "handlerJsonTime":J
    invoke-virtual {p0, v8}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->handlerPKgJson(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    move-result-object v0

    .line 80
    .restart local v0    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    sget-object v9, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "RpcTime rpcCall cost "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v4, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " handlerJsonTime\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 80
    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    .end local v0    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .end local v4    # "handlerJsonTime":J
    .end local v8    # "rpcResult":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v3, p1}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->rpcCall(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "rpcResult":Ljava/lang/String;
    goto :goto_1
.end method

.method public handlerPKgJson(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .locals 18
    .param p1, "rpcResult"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string/jumbo v15, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 89
    new-instance v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 90
    .local v3, "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    const-string/jumbo v15, "limit"

    iput-object v15, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    .line 155
    .end local v3    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    :goto_0
    return-object v3

    .line 94
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    .line 96
    .local v13, "result":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_b

    .line 97
    sget-object v15, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "result:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v15, "resultCode"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v14

    .line 99
    .local v14, "resultCode":I
    const/16 v15, 0x64

    if-ne v14, v15, :cond_a

    .line 100
    new-instance v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 101
    .restart local v3    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    const-string/jumbo v15, "data"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 102
    .local v2, "appInfoList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v2, :cond_3

    .line 103
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v8, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-gt v7, v15, :cond_2

    .line 105
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/JSONObject;

    .line 106
    .local v11, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v11}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->toAppInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 107
    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 111
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    sget-object v15, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "get rpc result appInfo size:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object v8, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->data:Ljava/util/List;

    .line 116
    .end local v7    # "index":I
    .end local v8    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    :cond_3
    const-string/jumbo v15, "removeAppIdList"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v12

    .line 117
    .local v12, "removeAppIdList":Lcom/alibaba/fastjson/JSONArray;
    sget-object v15, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "removeAppIdList:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    .line 119
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .restart local v7    # "index":I
    :goto_2
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-gt v7, v15, :cond_5

    .line 121
    invoke-virtual {v12, v7}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_4

    .line 122
    invoke-virtual {v12, v7}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 125
    :cond_5
    iput-object v10, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->removeAppIdList:Ljava/util/List;

    .line 129
    .end local v7    # "index":I
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v15, "no"

    const-string/jumbo v16, "h5_handleDiscardData"

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 130
    const-string/jumbo v15, "discardData"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 131
    .local v5, "discardDataObject":Lcom/alibaba/fastjson/JSONObject;
    sget-object v15, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "discardData: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v15

    if-lez v15, :cond_9

    .line 133
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v4, "discardData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 135
    .local v9, "key":Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v5, v9, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 136
    .local v6, "discardVersions":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v16

    if-lez v16, :cond_7

    .line 137
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->toStringArray(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 140
    .end local v6    # "discardVersions":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "key":Ljava/lang/String;
    :cond_8
    iput-object v4, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->discardData:Ljava/util/Map;

    .line 144
    .end local v4    # "discardData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "discardDataObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_9
    invoke-static {v13, v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->setConfig(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebula/appcenter/model/AppRes;)V

    goto/16 :goto_0

    .line 149
    .end local v2    # "appInfoList":Lcom/alibaba/fastjson/JSONArray;
    .end local v3    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .end local v12    # "removeAppIdList":Lcom/alibaba/fastjson/JSONArray;
    :cond_a
    new-instance v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;-><init>()V

    .line 150
    .restart local v3    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    const-string/jumbo v15, "result_code_not_100"

    iput-object v15, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppRes;->rpcFailDes:Ljava/lang/String;

    .line 151
    sget-object v15, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppBizRpcProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "resultCode !== 100"

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    .end local v3    # "appRes":Lcom/alipay/mobile/nebula/appcenter/model/AppRes;
    .end local v14    # "resultCode":I
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
