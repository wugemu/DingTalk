.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;
.super Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;
.source "MiniappOpenAppPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Long;)Ljava/lang/String;
    .locals 6
    .param p0, "oid"    # Ljava/lang/Long;

    .prologue
    .line 194
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 196
    .local v1, "orgInfo":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_0

    .line 197
    iget-object v3, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v1    # "orgInfo":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :goto_0
    return-object v3

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "miniAppId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 206
    if-nez p0, :cond_0

    move-object v3, v4

    .line 6952
    :goto_0
    return-object v3

    .line 210
    :cond_0
    :try_start_0
    const-class v3, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 211
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v5, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhnj;

    .line 212
    .local v1, "provider":Lhnj;
    if-eqz v1, :cond_2

    .line 6950
    iget-object v3, v1, Lhnj;->b:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhnf;

    .line 6951
    if-eqz v3, :cond_1

    .line 7034
    iget-object v3, v3, Lhnf;->c:Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 213
    goto :goto_0

    .line 215
    :cond_2
    const-string/jumbo v3, "MiniappOpenAppPlugin"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "getCanOpenAppList, can\'t get miniapp manager"

    aput-object v7, v5, v6

    .line 7098
    const-string/jumbo v6, "mini_api"

    invoke-static {v6, v3, v5}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v1    # "provider":Lhnj;
    :goto_1
    move-object v3, v4

    .line 220
    goto :goto_0

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Liny;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlTemplate"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "page"    # Ljava/lang/String;
    .param p6, "bridgeContext"    # Liny;

    .prologue
    .line 248
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "corpId":Ljava/lang/String;
    const-string/jumbo v2, "$CORPID$"

    invoke-static {p2, v2, v0}, Lhom;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "jumpUrl":Ljava/lang/String;
    const-string/jumbo v2, "$PAGE$"

    invoke-static {v1, v2, p5}, Lhom;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-direct {p0, v1, p1, p6}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;->a(Ljava/lang/String;Landroid/content/Context;Liny;)V

    .line 252
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Liny;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Liny;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Liny;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Liny;)V
    .locals 1
    .param p1, "jumpUrl"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bridgeContext"    # Liny;

    .prologue
    .line 236
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;Ljava/lang/String;Landroid/content/Context;Liny;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 17
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 63
    :cond_0
    invoke-super/range {p0 .. p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v3

    .line 71
    :goto_0
    return v3

    .line 1065
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 66
    .local v2, "action":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 71
    invoke-super/range {p0 .. p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v3

    goto :goto_0

    .line 66
    :pswitch_0
    const-string/jumbo v4, "openApp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    .line 2121
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 1077
    if-nez v4, :cond_3

    .line 1078
    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lhom;->a(Liny;I)V

    .line 1079
    const-string/jumbo v3, "MiniappOpenAppPlugin"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "param null"

    aput-object v6, v4, v5

    .line 3098
    const-string/jumbo v5, "mini_api"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 1082
    :cond_3
    const-string/jumbo v3, "appId"

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1083
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1084
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lhom;->a(Liny;I)V

    goto :goto_2

    .line 1089
    :cond_4
    invoke-static/range {p1 .. p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 3224
    if-eqz v3, :cond_5

    if-nez v5, :cond_6

    .line 3225
    :cond_5
    const/4 v3, 0x0

    .line 1091
    :goto_3
    if-nez v3, :cond_9

    .line 1092
    const v3, 0xc351

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lhom;->a(Liny;I)V

    goto :goto_2

    .line 3227
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 3228
    if-eqz v3, :cond_7

    const-string/jumbo v7, "appId"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    .line 3232
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 1096
    :cond_9
    const-string/jumbo v5, "bizType"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v6

    .line 1097
    const-string/jumbo v5, "openPage"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1098
    const-string/jumbo v4, "miniAppId"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1099
    const-string/jumbo v4, "linkUrl"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1101
    invoke-static/range {p1 .. p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/content/Context;

    move-result-object v4

    .line 1102
    if-nez v4, :cond_a

    .line 1103
    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lhom;->a(Liny;I)V

    .line 1104
    const-string/jumbo v3, "MiniappOpenAppPlugin"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "empty context?!"

    aput-object v6, v4, v5

    .line 4098
    const-string/jumbo v5, "mini_api"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1108
    :cond_a
    packed-switch v6, :pswitch_data_2

    .line 1120
    :pswitch_2
    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lhom;->a(Liny;I)V

    .line 1121
    const-string/jumbo v3, "MiniappOpenAppPlugin"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "invalid bizType of open app, bizType = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 4127
    :pswitch_3
    const-string/jumbo v3, "$PAGE$"

    invoke-static {v5, v3, v8}, Lhom;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4128
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v4, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;->a(Ljava/lang/String;Landroid/content/Context;Liny;)V

    goto/16 :goto_2

    .line 4132
    :pswitch_4
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v6

    move-object/from16 v3, p0

    move-object/from16 v9, p2

    .line 4133
    invoke-direct/range {v3 .. v9}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Liny;)V

    goto/16 :goto_2

    .line 4138
    :pswitch_5
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 4139
    if-nez v14, :cond_b

    .line 4140
    const v3, 0xc352

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lhom;->a(Liny;I)V

    .line 4141
    const-string/jumbo v3, "MiniappOpenAppPlugin"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "oidList is null"

    aput-object v6, v4, v5

    .line 5098
    const-string/jumbo v5, "mini_api"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 4144
    :cond_b
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    .line 4145
    if-gtz v3, :cond_c

    .line 4146
    const v3, 0xc352

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lhom;->a(Liny;I)V

    goto/16 :goto_2

    .line 4147
    :cond_c
    const/4 v6, 0x1

    if-ne v3, v6, :cond_d

    .line 4148
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 6044
    const-wide/16 v6, 0x0

    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    move-object/from16 v3, p0

    move-object/from16 v9, p2

    .line 4149
    invoke-direct/range {v3 .. v9}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Liny;)V

    goto/16 :goto_2

    .line 4151
    :cond_d
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4152
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 4153
    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    .line 4154
    if-eqz v3, :cond_e

    .line 4155
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4158
    :cond_f
    new-instance v9, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    move-object/from16 v10, p0

    move-object v12, v4

    move-object/from16 v13, p2

    move-object v15, v5

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;Ljava/util/List;Landroid/content/Context;Liny;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 66
    .line 1108
    nop

    :pswitch_data_0
    .packed-switch -0x4b4b4089
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onPrepare(Liof;)V

    .line 57
    const-string/jumbo v0, "openApp"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 58
    return-void
.end method
