.class public Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;
.super Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
.source "LightAppRuntimeReverseInterfaceImpl.java"


# static fields
.field private static final FETCH_OA_CHECK_IN_DATA_DELAY_MILLIS:I = 0x2710

.field private static final LIGHT_APP_WHITE_LIST:Ljava/lang/String; = "light_app_white_list"

.field private static final TAG:Ljava/lang/String; = "LightAppRuntime"

.field private static final TOWER_CORPID_DECODE_PLACEHOLDER:Ljava/lang/String; = "%24CORPID%24"

.field private static final TOWER_CORPID_PLACEHOLDER:Ljava/lang/String; = "$CORPID$"


# instance fields
.field private mApp:Landroid/app/Application;

.field private mJsapiDataSource:Lhqb;

.field private mLogoutReceiver:Landroid/content/BroadcastReceiver;

.field private mOnLightAppNotificationListener:Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;-><init>()V

    .line 161
    invoke-static {}, Lhqc;->a()Lhqb;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mJsapiDataSource:Lhqb;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/util/List;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/util/Map;

    .prologue
    .line 150
    invoke-direct/range {p0 .. p8}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->navToCommonWebView(Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->buildOrgAgentModels()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->saveOrgAgentModels(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Lhoh;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;
    .param p1, "x1"    # Lhoh;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->updateOrgAgentModel(Lhoh;)V

    return-void
.end method

.method private buildMiniAppIds()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1325
    .local v2, "miniAppIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->c()Ljava/util/List;

    move-result-object v4

    .line 1326
    .local v4, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1327
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1328
    .local v3, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v3, :cond_0

    .line 1329
    iget-object v0, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 1330
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1332
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_1

    iget-object v7, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1333
    iget-object v7, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppId:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1341
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v3    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    return-object v2
.end method

.method private buildOrgAgentModels()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhoh;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1345
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    .local v3, "orgAgentModels":Ljava/util/List;, "Ljava/util/List<Lhoh;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->c()Ljava/util/List;

    move-result-object v5

    .line 1348
    .local v5, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1349
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1350
    .local v4, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v4, :cond_0

    .line 1351
    iget-object v0, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 1352
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1353
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1354
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_1

    .line 1355
    iget-object v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppIdV2:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1359
    iget v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->migrationStatus:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1360
    new-instance v2, Lhoh;

    invoke-direct {v2}, Lhoh;-><init>()V

    .line 1361
    .local v2, "orgAgentModel":Lhoh;
    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v2, Lhoh;->b:Ljava/lang/Long;

    .line 1362
    iget-wide v8, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v2, Lhoh;->a:Ljava/lang/Long;

    .line 1363
    iget-object v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppIdV2:Ljava/lang/String;

    iput-object v8, v2, Lhoh;->d:Ljava/lang/String;

    .line 1364
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1366
    .end local v2    # "orgAgentModel":Lhoh;
    :cond_2
    iget-object v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1367
    new-instance v2, Lhoh;

    invoke-direct {v2}, Lhoh;-><init>()V

    .line 1368
    .restart local v2    # "orgAgentModel":Lhoh;
    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v2, Lhoh;->b:Ljava/lang/Long;

    .line 1369
    iget-wide v8, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v2, Lhoh;->a:Ljava/lang/Long;

    .line 1370
    iget-object v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppId:Ljava/lang/String;

    iput-object v8, v2, Lhoh;->d:Ljava/lang/String;

    .line 1371
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1380
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v2    # "orgAgentModel":Lhoh;
    .end local v4    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_3
    return-object v3
.end method

.method private fetchUidArray(Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 789
    .local p1, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p2, "staffVUserIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 791
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 807
    :cond_0
    return-object v2

    .line 795
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 798
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 799
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "userId"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    const-string/jumbo v5, "name"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 802
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private initCore(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 811
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhfw;->a(Landroid/content/Context;)V

    .line 812
    return-void
.end method

.method private initMiniApp()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 815
    invoke-static {}, Lhlt;->a()Lhlt;

    move-result-object v1

    .line 13199
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 14033
    sget-object v2, Lcom/alipay/mobile/context/a;->b:Landroid/app/Application;

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 14034
    sput-object v0, Lcom/alipay/mobile/context/a;->b:Landroid/app/Application;

    .line 14035
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/context/a;->a:Landroid/content/Context;

    .line 14047
    new-instance v0, Linr;

    invoke-direct {v0}, Linr;-><init>()V

    .line 14048
    const-string/jumbo v2, "com.alipay.mobile.h5container.service.H5Service"

    .line 15025
    iput-object v2, v0, Linr;->b:Ljava/lang/String;

    .line 14049
    const-string/jumbo v2, "com.alipay.mobile.nebulacore.wallet.H5ServiceImpl"

    .line 16013
    iput-object v2, v0, Linr;->a:Ljava/lang/String;

    .line 14051
    invoke-static {v0}, Lcom/alipay/mobile/context/a;->a(Linr;)V

    .line 16056
    new-instance v0, Linr;

    invoke-direct {v0}, Linr;-><init>()V

    .line 16057
    const-string/jumbo v2, "com.alipay.mobile.h5container.service.H5AppCenterService"

    .line 17025
    iput-object v2, v0, Linr;->b:Ljava/lang/String;

    .line 16058
    const-string/jumbo v2, "com.alipay.mobile.nebulaappcenter.H5AppCenterServiceImpl"

    .line 18013
    iput-object v2, v0, Linr;->a:Ljava/lang/String;

    .line 16060
    invoke-static {v0}, Lcom/alipay/mobile/context/a;->a(Linr;)V

    .line 18064
    new-instance v0, Linr;

    invoke-direct {v0}, Linr;-><init>()V

    .line 18065
    const-string/jumbo v2, "com.alipay.mobile.h5container.service.UcService"

    .line 19025
    iput-object v2, v0, Linr;->b:Ljava/lang/String;

    .line 18066
    const-string/jumbo v2, "com.alipay.mobile.nebulauc.impl.UcServiceImpl"

    .line 20013
    iput-object v2, v0, Linr;->a:Ljava/lang/String;

    .line 18068
    invoke-static {v0}, Lcom/alipay/mobile/context/a;->a(Linr;)V

    .line 20072
    new-instance v0, Linr;

    invoke-direct {v0}, Linr;-><init>()V

    .line 20073
    const-string/jumbo v2, "com.alipay.mobile.h5container.service.H5ConfigService"

    .line 21025
    iput-object v2, v0, Linr;->b:Ljava/lang/String;

    .line 20074
    const-string/jumbo v2, "com.alipay.mobile.nebulaconfig.service.H5ConfigServiceImpl"

    .line 22013
    iput-object v2, v0, Linr;->a:Ljava/lang/String;

    .line 20076
    invoke-static {v0}, Lcom/alipay/mobile/context/a;->a(Linr;)V

    .line 13201
    :cond_0
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 13202
    if-nez v0, :cond_a

    .line 13203
    sget-boolean v0, Lhfx;->c:Z

    if-eqz v0, :cond_1

    .line 13204
    const-string/jumbo v0, "ProviderInit"

    const-string/jumbo v2, "h5Service == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22316
    :cond_1
    :goto_0
    invoke-static {}, Lhlt;->c()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 22317
    if-eqz v0, :cond_9

    .line 22318
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getPluginManager()Liow;

    move-result-object v2

    .line 22319
    if-eqz v2, :cond_9

    .line 22320
    new-instance v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-direct {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22321
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappNuvaBridgePlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappNuvaBridgePlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22322
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22323
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22324
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappPerfPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappPerfPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22325
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppMenuParamPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppMenuParamPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22326
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22327
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22328
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22329
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22330
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22331
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22332
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22333
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22334
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22335
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappWarnPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappWarnPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22336
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22337
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppDebugPanelPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniAppDebugPanelPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22338
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniNavBarPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniNavBarPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22339
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniPagePlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniPagePlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22340
    const-string/jumbo v3, "CLOUD_SETTING_BACKGROUND_AUDIO_PLUGIN"

    invoke-static {v3, v7}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22341
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22343
    :cond_2
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v3, "f_lightapp_mini_new_api_file_4511"

    invoke-static {v3, v7}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 22344
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22346
    :cond_3
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v3, "f_lightapp_new_api_video_4511"

    invoke-static {v3, v7}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22347
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22349
    :cond_4
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v3, "hybrid_e_app_new_api_open_app"

    invoke-static {v3, v7}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22350
    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;-><init>()V

    invoke-interface {v2, v3}, Liow;->register(Liov;)Z

    .line 22362
    :cond_5
    const-string/jumbo v2, "session"

    .line 22363
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22366
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v4, "hybrid_e_app_new_api_audio"

    invoke-static {v4, v7}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 22367
    new-instance v4, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-class v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    .line 22368
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "setAudioSrcSync|getAudioSrcSync|setAudioStartTimeSync|getAudioStartTimeSync|setAudioAutoPlaySync|getAudioAutoPlaySync|setAudioLoopSync|getAudioLoopSync|getAudioDurationSync|getAudioCurrentTimeSync|getAudioPausedSync|playAudio|pauseAudio|stopAudio|seekAudio|destroyAudio"

    invoke-direct {v4, v8, v5, v2, v6}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22367
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22376
    :cond_6
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/h5container/service/H5Service;->addH5PluginConfigList(Ljava/util/List;)V

    .line 22383
    const-string/jumbo v2, "page"

    .line 22384
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22387
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v4, "f_lightapp_new_api_keyboard_4511x"

    invoke-static {v4, v7}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 22388
    new-instance v4, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-class v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;

    .line 22389
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "addKeyboardShowListener|offKeyboardShowListener|addKeyboardHideListener|offKeyboardHideListener"

    invoke-direct {v4, v8, v5, v2, v6}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22388
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22395
    :cond_7
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v4, "hybrid_e_app_new_api_record"

    invoke-static {v4, v7}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 22396
    new-instance v4, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-class v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    .line 22397
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "startRecord|stopRecord"

    invoke-direct {v4, v8, v5, v2, v6}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22396
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22402
    :cond_8
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/h5container/service/H5Service;->addH5PluginConfigList(Ljava/util/List;)V

    .line 13186
    :cond_9
    invoke-virtual {v1}, Lhlt;->b()V

    .line 13189
    invoke-static {}, Lhol;->a()V

    .line 13191
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->initMiniAppStatistics()V

    .line 816
    return-void

    .line 13210
    :cond_a
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppBizRpcProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhnl;

    invoke-direct {v4}, Lhnl;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13214
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhnk;

    invoke-direct {v4}, Lhnk;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13218
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhnj;

    invoke-direct {v4}, Lhnj;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13227
    const-string/jumbo v2, "mini_download_provider"

    invoke-static {v2, v7}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 13228
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhnq;

    invoke-direct {v4}, Lhnq;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13233
    :cond_b
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhnw;

    invoke-direct {v4}, Lhnw;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13237
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhnn;

    invoke-direct {v4}, Lhnn;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13241
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhnm;

    invoke-direct {v4}, Lhnm;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13245
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhnp;

    invoke-direct {v4}, Lhnp;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13249
    new-instance v2, Lhnv;

    invoke-direct {v2}, Lhnv;-><init>()V

    .line 13250
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5UcInitProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13254
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ActivityProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhni;

    invoke-direct {v4}, Lhni;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13259
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5PageHandlerProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhnt;

    invoke-direct {v4}, Lhnt;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13263
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhny;

    invoke-direct {v4}, Lhny;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13268
    const-string/jumbo v2, "mini_loading_provider"

    invoke-static {v2, v7}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 13269
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhnr;

    invoke-direct {v4}, Lhnr;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13274
    :cond_c
    const-string/jumbo v2, "mini_log_provider"

    invoke-static {v2, v7}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 13275
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhnz;

    invoke-direct {v4}, Lhnz;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13279
    :cond_d
    const-string/jumbo v2, "mini_loading_view_provider"

    invoke-static {v2, v7}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 13280
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhns;

    invoke-direct {v4}, Lhns;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13283
    :cond_e
    const-string/jumbo v2, "mini_resource_handler"

    invoke-static {v2, v7}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 13284
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhoa;

    invoke-direct {v4}, Lhoa;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13287
    :cond_f
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhno;

    invoke-direct {v4}, Lhno;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13288
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v2, "hybrid_enable_h5_threadpool_provider"

    .line 22023
    invoke-static {v2, v7}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 13288
    if-eqz v2, :cond_10

    .line 13289
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lhnh;

    invoke-direct {v3}, Lhnh;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13294
    :cond_10
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "CLOUD_SETTING_ENABLE_SDK_LOG_PROVIDER"

    .line 13295
    invoke-static {v0, v7}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13296
    new-instance v0, Lhlt$1;

    invoke-direct {v0, v1}, Lhlt$1;-><init>(Lhlt;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/wallet/H5WalletLog;->setAppLogProvider(Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;)V

    goto/16 :goto_0
.end method

.method private initWeex()V
    .locals 2

    .prologue
    .line 819
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "f_lightapp_enable_init_weex_launch_lightapp"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-static {}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->init()V

    .line 822
    :cond_0
    return-void
.end method

.method private navToCommonWebView(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "chatName"    # Ljava/lang/String;
    .param p7, "chatId"    # Ljava/lang/String;
    .param p8, "msgId"    # J
    .param p10, "msgsInfo"    # Ljava/lang/String;

    .prologue
    .line 749
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 785
    :goto_0
    return-void

    .line 752
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "corpId":Ljava/lang/String;
    move-object v4, p4

    .line 754
    .local v4, "realUrl":Ljava/lang/String;
    const-string/jumbo v5, "$CORPID$"

    invoke-virtual {p4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 755
    const-string/jumbo v5, "$CORPID$"

    invoke-virtual {p4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 760
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "EXTRA_IM_MESSAGE_CONTENT"

    invoke-static {v5, v6, p5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "EXTRA_IM_CONVERSATION_NAME"

    invoke-static {v5, v6, p6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "EXTRA_IM_CONVERSATION_ID"

    invoke-static {v5, v6, p7}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "EXTRA_IM_ORGID"

    invoke-static {v5, v6, p2, p3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 768
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "EXTRA_IM_MESSAGE_ID"

    move-wide/from16 v0, p8

    invoke-static {v5, v6, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 770
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "EXTRA_IM_MESSAGES_INFO"

    move-object/from16 v0, p10

    invoke-static {v5, v6, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-static {}, Lhrf;->a()Z

    move-result v3

    .line 775
    .local v3, "isEnableSingleTask":Z
    const-string/jumbo v5, "NAVIGATOR"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v5, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$16;

    invoke-direct {v6, p0, v3}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$16;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Z)V

    .line 776
    invoke-interface {v5, v4, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 756
    .end local v3    # "isEnableSingleTask":Z
    :cond_2
    const-string/jumbo v5, "%24CORPID%24"

    invoke-virtual {p4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 757
    const-string/jumbo v5, "%24CORPID%24"

    invoke-virtual {p4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private navToCommonWebView(Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "url"    # Ljava/lang/String;
    .param p6, "chatName"    # Ljava/lang/String;
    .param p7, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p8, "staffVUserIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v24

    .line 680
    .local v24, "msgSize":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    .local v26, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v25, Lorg/json/JSONArray;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONArray;-><init>()V

    .line 682
    .local v25, "msgsArray":Lorg/json/JSONArray;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 683
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/alibaba/wukong/im/Message;

    .line 684
    .local v21, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v21, :cond_3

    .line 685
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v22

    .line 686
    .local v22, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    const-string/jumbo v23, ""

    .line 687
    .local v23, "msgContent":Ljava/lang/String;
    const-string/jumbo v20, ""

    .line 688
    .local v20, "mediaAccessToken":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 689
    .local v13, "atArray":Lorg/json/JSONArray;
    if-eqz v22, :cond_3

    .line 690
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 723
    :goto_2
    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 724
    .local v18, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "msgType"

    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 725
    const-string/jumbo v2, "msgId"

    invoke-interface/range {v21 .. v21}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 726
    const-string/jumbo v2, "content"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 728
    const-string/jumbo v2, "mediaAccessToken"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    :cond_2
    const-string/jumbo v2, "atList"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 682
    .end local v13    # "atArray":Lorg/json/JSONArray;
    .end local v18    # "jsonObject":Lorg/json/JSONObject;
    .end local v20    # "mediaAccessToken":Ljava/lang/String;
    .end local v22    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v23    # "msgContent":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .restart local v13    # "atArray":Lorg/json/JSONArray;
    .restart local v20    # "mediaAccessToken":Ljava/lang/String;
    .restart local v22    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .restart local v23    # "msgContent":Ljava/lang/String;
    :sswitch_0
    move-object/from16 v27, v22

    .line 692
    check-cast v27, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 693
    .local v27, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v14

    .line 694
    .local v14, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 695
    .local v15, "displayContentString":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    add-int/lit8 v2, v24, -0x1

    move/from16 v0, v17

    if-ge v0, v2, :cond_4

    .line 697
    const-string/jumbo v2, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    :cond_4
    move-object/from16 v23, v15

    .line 700
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v14, v1}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->fetchUidArray(Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v13

    .line 702
    goto :goto_2

    .end local v14    # "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v15    # "displayContentString":Ljava/lang/String;
    .end local v27    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :sswitch_1
    move-object/from16 v2, v22

    .line 704
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v23

    .line 705
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    .line 706
    goto/16 :goto_2

    :sswitch_2
    move-object/from16 v19, v22

    .line 708
    check-cast v19, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 709
    .local v19, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 711
    .restart local v18    # "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v2, "text"

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    const-string/jumbo v2, "title"

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 713
    const-string/jumbo v2, "url"

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    const-string/jumbo v2, "picUrl"

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 718
    :goto_4
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_2

    .line 715
    :catch_0
    move-exception v16

    .line 716
    .local v16, "e":Lorg/json/JSONException;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 732
    .end local v16    # "e":Lorg/json/JSONException;
    .end local v18    # "jsonObject":Lorg/json/JSONObject;
    .end local v19    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :catch_1
    move-exception v16

    .line 733
    .restart local v16    # "e":Lorg/json/JSONException;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 741
    .end local v13    # "atArray":Lorg/json/JSONArray;
    .end local v16    # "e":Lorg/json/JSONException;
    .end local v20    # "mediaAccessToken":Ljava/lang/String;
    .end local v21    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v22    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v23    # "msgContent":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 742
    .local v7, "content":Ljava/lang/String;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v10

    .line 744
    .local v10, "msgId":J
    :goto_5
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v12}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->navToCommonWebView(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 742
    .end local v10    # "msgId":J
    :cond_6
    const-wide/16 v10, 0x0

    goto :goto_5

    .line 690
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x66 -> :sswitch_2
    .end sparse-switch
.end method

.method private registerActivityLifecycle()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 969
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$2;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1000
    return-void
.end method

.method private registerLogoutReceiver()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 941
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mLogoutReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 942
    new-instance v2, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$18;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$18;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mLogoutReceiver:Landroid/content/BroadcastReceiver;

    .line 959
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 960
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.workapp.user.logout"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mApp:Landroid/app/Application;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mLogoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private saveOrgAgentModels(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhoh;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1384
    .local p1, "orgAgentModels":Ljava/util/List;, "Ljava/util/List<Lhoh;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    .local v1, "miniAppOpenTypeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhoh;

    .line 1387
    .local v2, "orgAgentModel":Lhoh;
    if-eqz v2, :cond_0

    .line 1388
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;-><init>()V

    .line 1389
    .local v0, "miniAppOpenTypeModel":Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;
    iget-object v4, v2, Lhoh;->d:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->miniAppId:Ljava/lang/String;

    .line 1390
    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    .line 1391
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1395
    .end local v0    # "miniAppOpenTypeModel":Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;
    .end local v2    # "orgAgentModel":Lhoh;
    :cond_1
    invoke-static {}, Lhmm;->a()Lhmm;

    move-result-object v3

    .line 37161
    const-string/jumbo v4, "MiniAppOpenTypeSPLocalDataAccessor"

    invoke-static {}, Lhmm;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhrn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37162
    invoke-virtual {v3, v1}, Lhmm;->a(Ljava/util/List;)V

    .line 1397
    .end local v1    # "miniAppOpenTypeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    :cond_2
    return-void
.end method

.method private startService(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 826
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->isSupportStepCount(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/lightapp/runtime/service/LightAppService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 831
    .local v1, "i":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "stepcount"

    const-string/jumbo v4, "LightAppService started"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 832
    .restart local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "stepcount"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Exception start service"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 838
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "stepcount"

    const-string/jumbo v4, "not support"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateOrgAgentModel(Lhoh;)V
    .locals 6
    .param p1, "orgAgentModel"    # Lhoh;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1400
    if-eqz p1, :cond_0

    .line 1401
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;-><init>()V

    .line 1402
    .local v0, "miniAppOpenTypeModel":Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;
    iget-object v1, p1, Lhoh;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->miniAppId:Ljava/lang/String;

    .line 1403
    iput-object p1, v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    .line 1404
    invoke-static {}, Lhmm;->a()Lhmm;

    move-result-object v1

    .line 38145
    const-string/jumbo v2, "MiniAppOpenTypeSPLocalDataAccessor"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "updateMiniAppOpenTypeModel"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "miniAppOpenTypeModel="

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 39071
    const-string/jumbo v4, "mini_app"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38147
    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->miniAppId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38150
    new-instance v2, Lhmm$4;

    invoke-direct {v2, v1, v0}, Lhmm$4;-><init>(Lhmm;Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;)V

    invoke-virtual {v1, v2}, Lhmm;->a(Lhmh;)V

    .line 1406
    .end local v0    # "miniAppOpenTypeModel":Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;
    :cond_0
    return-void
.end method


# virtual methods
.method public beaconListUpdate()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    return-void
.end method

.method public clearWebViewCache()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 879
    const-string/jumbo v3, "LIGHTAPPCACHE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/cache/Cache;

    .line 880
    .local v1, "cache":Lcom/alibaba/doraemon/cache/Cache;
    if-eqz v1, :cond_0

    .line 881
    invoke-interface {v1}, Lcom/alibaba/doraemon/cache/Cache;->clear()Z

    .line 883
    :cond_0
    const-string/jumbo v3, "PERSISTCACHE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/cache/Cache;

    .line 884
    .local v2, "persistCache":Lcom/alibaba/doraemon/cache/Cache;
    if-eqz v2, :cond_1

    .line 885
    invoke-interface {v2}, Lcom/alibaba/doraemon/cache/Cache;->clear()Z

    .line 887
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "cache"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "appCacheDir":Ljava/lang/String;
    invoke-static {v0}, Lhfy;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 889
    return-void
.end method

.method public createRuntimeEntry(Landroid/content/Context;)Lhdf;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    new-instance v0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;

    invoke-direct {v0, p1}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createSystemWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x10

    const/4 v8, 0x2

    const/16 v11, 0xb

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 313
    new-instance v5, Lcom/alibaba/lightapp/runtime/webview/DingSystemWebView;

    invoke-direct {v5, p1}, Lcom/alibaba/lightapp/runtime/webview/DingSystemWebView;-><init>(Landroid/content/Context;)V

    .line 315
    .local v5, "webView":Landroid/webkit/WebView;
    invoke-static {v7}, Lcms;->b(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 316
    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 319
    :cond_0
    invoke-virtual {v5, v10}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 320
    invoke-virtual {v5, v10}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 322
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v11, :cond_1

    .line 323
    const-string/jumbo v6, "searchBoxJavaBridge_"

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 326
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v7, :cond_2

    .line 327
    invoke-static {v9, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 330
    :cond_2
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 331
    .local v4, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 332
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 333
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 334
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 335
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 336
    const-wide/32 v6, 0x800000

    invoke-virtual {v4, v6, v7}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 337
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "pref_key_settings_developer_options_smartapp_cache"

    invoke-static {v6, v7}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 338
    .local v2, "isChecked":Z
    if-eqz v2, :cond_7

    .line 339
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 343
    :goto_0
    const-string/jumbo v6, "cache"

    invoke-virtual {p1, v6, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "appCacheDir":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 347
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 348
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 349
    const-string/jumbo v6, "utf-8"

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 351
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 352
    sget-object v6, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 354
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 355
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 356
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 358
    sget-object v6, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 360
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_3

    .line 361
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 364
    :cond_3
    sget-object v6, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 366
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v11, :cond_4

    .line 367
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 371
    :cond_4
    const-string/jumbo v6, "%1$s %2$s"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 372
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 371
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 374
    const/4 v3, 0x0

    .line 376
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v6, Lcom/uc/webview/export/WebSettings;

    const-string/jumbo v7, "setHardwareAccelSkiaEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 381
    :goto_1
    if-eqz v3, :cond_5

    .line 383
    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    :cond_5
    :goto_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v11, :cond_6

    .line 392
    const-string/jumbo v6, "searchBoxJavaBridge_"

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 393
    const-string/jumbo v6, "accessibilityTraversal"

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v6, "accessibility"

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 397
    :cond_6
    return-object v5

    .line 341
    .end local v0    # "appCacheDir":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_7
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0

    .line 377
    .restart local v0    # "appCacheDir":Ljava/lang/String;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 388
    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method public createWebViewWrapper(Landroid/content/Context;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    invoke-direct {v0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public fetchMiniAppIconListByType(Ljava/lang/String;Lhma;)V
    .locals 9
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "listener"    # Lhma;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v5, "mini_app_list_type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1423
    .local v3, "type":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    move v4, v5

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1425
    :pswitch_0
    invoke-static {}, Lhmr;->a()Lhmr;

    move-result-object v5

    .line 39157
    const-class v4, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    .line 39158
    const/4 v6, 0x0

    const/16 v7, 0x14

    new-instance v8, Lhmr$3;

    invoke-direct {v8, v5, p2}, Lhmr$3;-><init>(Lhmr;Lhma;)V

    invoke-interface {v4, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;->myMiniAppList(IILiyv;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1436
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1437
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1423
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "object":Lorg/json/JSONObject;
    .restart local v3    # "type":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    const-string/jumbo v6, "my_applications"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "applications_in_chat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    .line 1428
    :pswitch_1
    const-string/jumbo v4, "conversation_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1429
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1430
    invoke-static {}, Lhmr;->a()Lhmr;

    move-result-object v5

    .line 39266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 39270
    const-class v4, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    .line 39271
    const/4 v6, 0x0

    .line 39273
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x14

    .line 39274
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lhmr$6;

    invoke-direct {v8, v5, p2}, Lhmr$6;-><init>(Lhmr;Lhma;)V

    .line 39271
    invoke-interface {v4, v0, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;->inConversationMiniAppList(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1423
    :sswitch_data_0
    .sparse-switch
        -0x4143672a -> :sswitch_0
        -0x320d8ea -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAlarmInterface()Lgvi;
    .locals 1

    .prologue
    .line 612
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    return-object v0
.end method

.method public getAuthCode(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Lhqt;

    invoke-direct {v0}, Lhqt;-><init>()V

    .line 618
    .local v0, "oapiAPI":Lhqs;
    invoke-interface {v0, p2, p1, p3}, Lhqs;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 619
    return-void
.end method

.method public getCheckInRemindPlan(Lcma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1513
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/Set<Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;>;>;"
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->getCheckInRemindPlan(Lcma;)V

    .line 1514
    return-void
.end method

.method public getCidTokenForOrg(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Lhqt;

    invoke-direct {v0}, Lhqt;-><init>()V

    .line 596
    .local v0, "oapiAPI":Lhqs;
    invoke-interface {v0, p1, p2, p3}, Lhqs;->c(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 597
    return-void
.end method

.method public getDomainStorageItem(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1021
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$3;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$3;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Lcom/alibaba/wukong/Callback;)V

    invoke-static {p1, p2, v0}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->getItem(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 1049
    return-void
.end method

.method public getMiniAppInstance(Landroid/content/Context;Landroid/os/Bundle;)Lhlm;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1482
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return-object v0

    .line 1485
    :cond_1
    invoke-static {}, Lhmq;->a()Lhmq;

    move-result-object v1

    .line 40172
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 1486
    .local v0, "instance":Lhlm;
    :cond_2
    :goto_1
    goto :goto_0

    .line 40175
    .end local v0    # "instance":Lhlm;
    :cond_3
    const-string/jumbo v2, "appId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40176
    iget-object v3, v1, Lhmq;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 40177
    new-instance v3, Lhls;

    invoke-direct {v3, p1, p2}, Lhls;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 41122
    iget-object v4, v1, Lhmq;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 41125
    iget-object v4, v1, Lhmq;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40180
    :cond_4
    iget-object v1, v1, Lhmq;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhls;

    move-object v0, v1

    goto :goto_1
.end method

.method public getOnLightAppNotificationListener()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mOnLightAppNotificationListener:Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;

    return-object v0
.end method

.method public getPageErrorTipsView(Landroid/content/Context;Ljava/lang/String;Lcmi;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcmi",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1477
    .local p3, "requestCallback":Lcmi;, "Lcmi<Landroid/view/View;>;"
    invoke-static {p1, p2, p3}, Lhrc;->a(Landroid/content/Context;Ljava/lang/String;Liyv;)V

    .line 1478
    return-void
.end method

.method public getPageStatus(Ljava/lang/Object;)I
    .locals 1
    .param p1, "preloadInstance"    # Ljava/lang/Object;

    .prologue
    .line 937
    invoke-static {}, Lhqi;->a()Lhqi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhqi;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPermanentEncryptedCid(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "agentId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Lhqt;

    invoke-direct {v0}, Lhqt;-><init>()V

    .line 602
    .local v0, "oapiAPI":Lhqs;
    invoke-interface {v0, p1, p2, p3}, Lhqs;->f(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 603
    return-void
.end method

.method public getWebViewIntent()Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mApp:Landroid/app/Application;

    const-class v2, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public handleHpmConfigData(Lorg/json/JSONObject;)Z
    .locals 5
    .param p1, "data"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 607
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v2

    .line 11300
    iget-object v3, v2, Lhhy;->c:Lhia;

    if-eqz v3, :cond_2

    iget-object v2, v2, Lhhy;->c:Lhia;

    .line 12069
    if-nez p1, :cond_0

    move v2, v1

    .line 11300
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 12074
    :cond_0
    invoke-static {}, Lhqi;->a()Lhqi;

    move-result-object v3

    invoke-virtual {v3}, Lhqi;->b()V

    .line 12076
    iget-object v3, v2, Lhia;->c:Ljava/util/concurrent/Executor;

    if-eqz v3, :cond_1

    .line 12077
    iget-object v3, v2, Lhia;->c:Ljava/util/concurrent/Executor;

    new-instance v4, Lhia$1;

    invoke-direct {v4, v2, p1}, Lhia$1;-><init>(Lhia;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    move v2, v0

    .line 12163
    goto :goto_0

    :cond_2
    move v0, v1

    .line 607
    goto :goto_1
.end method

.method public handleJsapiConfigData(Lorg/json/JSONArray;)Z
    .locals 5
    .param p1, "arr"    # Lorg/json/JSONArray;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 433
    const/4 v2, 0x0

    .line 434
    .local v2, "isSuccess":Z
    if-eqz p1, :cond_1

    .line 435
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lhqd;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 438
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lhqd;->a(Lorg/json/JSONObject;)Lhqd;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 443
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mJsapiDataSource:Lhqb;

    invoke-interface {v4, v3}, Lhqb;->a(Ljava/util/List;)V

    .line 444
    const/4 v2, 0x1

    .line 446
    .end local v1    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lhqd;>;"
    :cond_1
    return v2
.end method

.method public handleLanguageChanged()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 665
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v1

    .line 12424
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhlq;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 12425
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 12426
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmu;

    .line 12427
    if-eqz v0, :cond_0

    .line 13033
    iget-object v3, v0, Lhmu;->b:Landroid/app/Activity;

    .line 12429
    if-eqz v3, :cond_0

    .line 13041
    iget-object v0, v0, Lhmu;->c:Ljava/lang/String;

    .line 12429
    invoke-virtual {v1, v0}, Lhlq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12430
    invoke-static {v3}, Lhrf;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 666
    :cond_1
    return-void
.end method

.method public hpmCheckUpdate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 281
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v0

    .line 5327
    iget-object v1, v0, Lhhy;->h:Ljava/util/concurrent/Executor;

    new-instance v2, Lhhy$4;

    invoke-direct {v2, v0}, Lhhy$4;-><init>(Lhhy;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 9
    .param p1, "applicationContext"    # Landroid/app/Application;

    .prologue
    const/4 v8, 0x0

    .line 167
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mApp:Landroid/app/Application;

    .line 169
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mApp:Landroid/app/Application;

    if-nez v1, :cond_0

    .line 170
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mApp:Landroid/app/Application;

    .line 174
    :cond_0
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const-string/jumbo v1, "CLOUD_SETTING_RUNTIME_FEATURE_MANAGER"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-static {}, Lhhq;->a()Lhhq;

    .line 2039
    invoke-static {}, Lhhq;->b()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhhq;->a([Ljava/lang/String;)V

    .line 2040
    invoke-static {}, Lhhq;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhhq;->a([Ljava/lang/String;)V

    .line 2041
    invoke-static {}, Lhhq;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhhq;->a([Ljava/lang/String;)V

    .line 2042
    invoke-static {}, Lhhq;->e()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhhq;->a([Ljava/lang/String;)V

    .line 2043
    invoke-static {}, Lhhq;->f()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhhq;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_1
    :goto_0
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v2

    .line 2264
    const-string/jumbo v1, "attendance"

    sget-object v3, Lhkx;->a:Ljava/lang/String;

    const-string/jumbo v4, "registerAppStateListener"

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 2266
    new-instance v3, Lhkx$5;

    invoke-direct {v3, v2}, Lhkx$5;-><init>(Lhkx;)V

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 3049
    sget-object v1, Lhgg$d;->a:Lhgg;

    .line 3072
    invoke-static {}, Lhgb;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3075
    new-instance v2, Lhgf;

    invoke-direct {v2}, Lhgf;-><init>()V

    iput-object v2, v1, Lhgg;->a:Lhgf;

    .line 3076
    iget-object v2, v1, Lhgg;->a:Lhgf;

    new-instance v3, Lhgg$b;

    invoke-direct {v3, v1, v8}, Lhgg$b;-><init>(Lhgg;B)V

    .line 3315
    iput-object v3, v2, Lhgf;->c:Lhgf$a;

    .line 3077
    iget-object v2, v1, Lhgg;->a:Lhgf;

    .line 4085
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 4086
    iget-object v3, v2, Lhgf;->e:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 4088
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 4089
    invoke-virtual {v2}, Lhgf;->a()V

    .line 4092
    const-string/jumbo v1, "device_request_key"

    invoke-static {v1, v8}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lhgf;->d:Z

    .line 4094
    iget-boolean v1, v2, Lhgf;->d:Z

    if-nez v1, :cond_2

    .line 4095
    invoke-virtual {v2}, Lhgf;->c()V

    .line 3080
    :cond_2
    invoke-static {}, Lhgh;->a()Lhgh;

    .line 186
    :cond_3
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "Lightapp_feature_preload_fail"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "throwable= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public initBeacon()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 288
    return-void
.end method

.method public initBiz()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 190
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mApp:Landroid/app/Application;

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->initCore(Landroid/content/Context;)V

    .line 191
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->initMiniApp()V

    .line 192
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->initWeex()V

    .line 193
    invoke-static {}, Lhli;->a()Lhli;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mApp:Landroid/app/Application;

    .line 5043
    iget-object v0, v0, Lhli;->a:Lhlj;

    .line 5064
    const-string/jumbo v0, "android_uic_disable_login"

    invoke-static {v0}, Lhlj;->a(Ljava/lang/String;)Z

    move-result v0

    .line 5043
    if-eqz v0, :cond_0

    .line 5049
    sget-object v1, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->ONLINE:Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    .line 5050
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v3, "dt_function"

    const-string/jumbo v4, "uic_env_dev"

    invoke-interface {v0, v3, v4}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 5052
    if-eqz v0, :cond_1

    .line 5053
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 5150
    invoke-static {v0, v5}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 5054
    if-ne v0, v6, :cond_1

    .line 5055
    sget-object v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->DEV:Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    .line 5059
    :goto_0
    new-instance v1, Lhlf;

    invoke-direct {v1}, Lhlf;-><init>()V

    invoke-static {v2, v0, v1}, Lcom/ali/user/enterprise/Login;->init(Landroid/content/Context;Lcom/ali/user/enterprise/base/constant/LoginEnvType;Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;)V

    .line 5060
    const-string/jumbo v1, "init"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lhlg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_0
    invoke-static {}, Lhpx;->a()Lhpx;

    .line 196
    new-instance v0, Lhqo;

    const-string/jumbo v1, "biz/oa_notify"

    invoke-direct {v0, v1}, Lhqo;-><init>(Ljava/lang/String;)V

    .line 197
    new-instance v0, Lhqm;

    const-string/jumbo v1, "biz/oa_check_in"

    invoke-direct {v0, v1}, Lhqm;-><init>(Ljava/lang/String;)V

    .line 198
    new-instance v0, Lhqn;

    const-string/jumbo v1, "biz/oa_host"

    invoke-direct {v0, v1}, Lhqn;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v0, Lhql;

    const-string/jumbo v1, "biz/hpm"

    invoke-direct {v0, v1}, Lhql;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance v0, Lhre;

    invoke-direct {v0}, Lhre;-><init>()V

    .line 202
    invoke-static {}, Lhqx;->b()Lhqw;

    .line 204
    invoke-static {}, Lhgb;->a()Lhgb;

    .line 206
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->registerLogoutReceiver()V

    .line 208
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->registerActivityLifecycle()V

    .line 210
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$1;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->init()V

    .line 226
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public initHpm()V
    .locals 6

    .prologue
    .line 230
    invoke-static {}, Lhhy;->a()Lhhy;

    .line 234
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 236
    .local v1, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v3, "isSuccess"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 237
    const-string/jumbo v3, "orgId"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 238
    const-string/jumbo v3, "dtErrorCode"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 240
    const-string/jumbo v3, "serverCode"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 241
    const-string/jumbo v3, "distance"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 242
    const-string/jumbo v3, "fuzzyMatch"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 243
    const-string/jumbo v3, "wifiEnable"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 245
    const-string/jumbo v3, "checkTimes"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 246
    const-string/jumbo v3, "miniDistance"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 247
    const-string/jumbo v3, "hasFuzzyMatched"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 248
    const-string/jumbo v3, "hasMatched"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 249
    const-string/jumbo v3, "longitude"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 250
    const-string/jumbo v3, "latitude"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 251
    const-string/jumbo v3, "planId"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 252
    const-string/jumbo v3, "locationType"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 253
    const-string/jumbo v3, "accuracy"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 256
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 258
    .local v2, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "checkin_time"

    invoke-direct {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "checkinTime":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide v4, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 260
    invoke-virtual {v2, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 262
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "SmartWork"

    const-string/jumbo v5, "fast_checkin_performance"

    invoke-interface {v3, v4, v5, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 266
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 268
    const-string/jumbo v3, "isSuccess"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 269
    const-string/jumbo v3, "orgId"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 270
    const-string/jumbo v3, "dtErrorCode"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 271
    const-string/jumbo v3, "serverCode"

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 274
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 275
    const-string/jumbo v3, "checkin_time"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 276
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "SmartWork"

    const-string/jumbo v5, "beacon_checkin_performance"

    invoke-interface {v3, v4, v5, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 277
    return-void
.end method

.method public initSecurityGuard(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 893
    const-string/jumbo v0, "LightAppInterface"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$17;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$17;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 899
    return-void
.end method

.method public isH5Activity(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1576
    instance-of v0, p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    return v0
.end method

.method public isMiniAppComponentFeatureActived()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1502
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "hybrid_the_one_new_instance_active"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOpenApp4MiniApp(Ljava/lang/String;Ljava/lang/String;Lgvk;)V
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "miniAppId"    # Ljava/lang/String;
    .param p3, "callback"    # Lgvk;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1240
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1241
    invoke-static {}, Lhmm;->a()Lhmm;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$8;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$8;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Lgvk;Ljava/lang/String;Ljava/lang/String;)V

    .line 36077
    new-instance v2, Lhmm$2;

    invoke-direct {v2, v0, v1, p2, p1}, Lhmm$2;-><init>(Lhmm;Lhmg;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lhmm;->a(Lhmh;)V

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    if-eqz p3, :cond_0

    .line 1266
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lgvk;->a(Z)V

    goto :goto_0
.end method

.method public isRuntimeEntryInstanceofWeex(Lhdf;)Z
    .locals 3
    .param p1, "iRuntimeEntry"    # Lhdf;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1307
    if-eqz p1, :cond_2

    .line 1308
    instance-of v2, p1, Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    if-eqz v2, :cond_1

    .line 1319
    .end local p1    # "iRuntimeEntry":Lhdf;
    :cond_0
    :goto_0
    return v1

    .line 1312
    .restart local p1    # "iRuntimeEntry":Lhdf;
    :cond_1
    instance-of v2, p1, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;

    if-eqz v2, :cond_2

    .line 1313
    check-cast p1, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;

    .line 37120
    .end local p1    # "iRuntimeEntry":Lhdf;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a:Lhdf;

    .line 1314
    .local v0, "internalEntry":Lhdf;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    if-nez v2, :cond_0

    .line 1319
    .end local v0    # "internalEntry":Lhdf;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public messageActionACK(JLjava/lang/String;Lcma;)V
    .locals 3
    .param p1, "messageId"    # J
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Lhqt;

    invoke-direct {v0}, Lhqt;-><init>()V

    .line 590
    .local v0, "oapiAPI":Lhqs;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Lhqs;->a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V

    .line 591
    return-void
.end method

.method public motuCommitStatus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Z

    .prologue
    .line 903
    invoke-static {p1, p2, p3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 904
    return-void
.end method

.method public nav2CustomWebViewDialogActivity(Landroid/app/Activity;Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "customWebViewDialogLogic"    # Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;
    .param p3, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1004
    if-nez p1, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    if-eqz p2, :cond_0

    .line 1010
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/lightapp/runtime/activity/CustomWebViewDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1011
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_2

    .line 1012
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1014
    :cond_2
    const-string/jumbo v1, "custom_web_view_dialog_logic"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1015
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1016
    sget v1, Lhdn$a;->lightapp_alpha_in:I

    sget v2, Lhdn$a;->alpha_out:I

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public navToAttendRoutePage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 623
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/map/route.html"

    new-instance v2, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$15;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$15;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 632
    return-void
.end method

.method public navToCommonWebView(Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "url"    # Ljava/lang/String;
    .param p6, "chatName"    # Ljava/lang/String;
    .param p7, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 509
    .local p5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 513
    .local v6, "staffVUserIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v5, "allAtUserId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/wukong/im/Message;

    .line 515
    .local v15, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v15, :cond_2

    .line 516
    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v16

    .line 517
    .local v16, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    .line 518
    invoke-interface {v15}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v2

    .line 519
    .local v2, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 520
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 525
    .end local v2    # "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v15    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v16    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v14

    .line 526
    .local v14, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v17

    new-instance v3, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v3 .. v13}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$14;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Ljava/util/List;Ljava/util/Map;Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v5, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 482
    invoke-static {p1, p2}, Lhou;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 483
    return-void
.end method

.method public navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "intentFlag"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 487
    const-string/jumbo v0, "https://qr.dingtalk.com/common_webview.html"

    .line 489
    .local v0, "activityScheme":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string/jumbo v1, "common_webview_source"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "source_space_online_edit"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    const-string/jumbo v0, "https://qr.dingtalk.com/online_edit_webview.html"

    .line 494
    :cond_0
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$13;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$13;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Landroid/os/Bundle;I)V

    .line 495
    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 504
    return-void
.end method

.method public navToGraphicLiteracyFromIM(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1523
    if-nez p1, :cond_0

    .line 1524
    const-string/jumbo v0, "LightAppRuntime"

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "context null"

    aput-object v2, v1, v3

    .line 42071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1572
    :goto_0
    return-void

    .line 1527
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1528
    :cond_1
    const-string/jumbo v0, "LightAppRuntime"

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "filePaths null"

    aput-object v2, v1, v3

    .line 43071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1531
    :cond_2
    const-string/jumbo v0, "LightAppRuntime"

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Ljava/util/List;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public navToLocationBrowserPage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 464
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/map/location_browser.html"

    new-instance v2, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$12;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$12;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 473
    return-void
.end method

.method public navToLocationPage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 451
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/map/location.html"

    new-instance v2, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$11;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$11;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 460
    return-void
.end method

.method public navToMiniAppList(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1282
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 1283
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/miniapp_list.html"

    new-instance v2, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$9;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$9;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1292
    return-void
.end method

.method public navToPreloadPage(Landroid/content/Context;Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preloadModel"    # Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 927
    invoke-static {}, Lhqi;->a()Lhqi;

    move-result-object v0

    .line 35050
    iget-object v1, v0, Lhqi;->a:Lhqj;

    if-eqz v1, :cond_0

    .line 35051
    iget-object v0, v0, Lhqi;->a:Lhqj;

    .line 36020
    iget-object v0, v0, Lhqj;->a:Lhqh;

    .line 35052
    if-eqz v0, :cond_0

    .line 35053
    invoke-interface {v0, p1, p2}, Lhqh;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)I

    move-result v0

    :goto_0
    return v0

    .line 35057
    :cond_0
    const/4 v0, -0x1

    .line 927
    goto :goto_0
.end method

.method public navToWebViewDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 557
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 561
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 562
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    sget v1, Lhdn$a;->lightapp_alpha_in:I

    sget v2, Lhdn$a;->alpha_out:I

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 565
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public navToWebViewDialogForResult(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 569
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 570
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/lightapp/runtime/activity/WebViewDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, p1

    .line 572
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 573
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    sget v1, Lhdn$a;->lightapp_alpha_in:I

    sget v2, Lhdn$a;->alpha_out:I

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 575
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onHomeTabSeleceted(I)V
    .locals 13
    .param p1, "tabIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 870
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->onHomeTabSeleceted(I)V

    .line 872
    if-ne p1, v12, :cond_1

    .line 873
    invoke-static {}, Lhli;->a()Lhli;

    move-result-object v3

    .line 31188
    iget-object v4, v3, Lhli;->a:Lhlj;

    .line 32040
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 32041
    iget-wide v8, v4, Lhlj;->a:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x36ee80

    cmp-long v0, v8, v10

    if-lez v0, :cond_2

    move v0, v1

    .line 32042
    :goto_0
    const-string/jumbo v5, "refreshController shouldRefresh"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "last="

    aput-object v9, v8, v2

    iget-wide v10, v4, Lhlj;->a:J

    .line 32043
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v1

    const-string/jumbo v4, "current="

    aput-object v4, v8, v12

    const/4 v4, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v4

    .line 32042
    invoke-static {v5, v8}, Lhlg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31150
    if-eqz v0, :cond_1

    .line 32161
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 32162
    if-eqz v0, :cond_3

    .line 32163
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 32164
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 32166
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 32167
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 32168
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-eqz v5, :cond_0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->newRetail:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 32178
    :goto_1
    const-string/jumbo v4, "isNewRetailUser"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Lhlg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31150
    if-eqz v0, :cond_1

    .line 31151
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lhli;->a(Lhli$a;)V

    .line 875
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 32041
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public onLogin()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 845
    invoke-super {p0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->onLogin()V

    .line 846
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lhkx;->a:Ljava/lang/String;

    const-string/jumbo v2, "onLogin"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v0

    .line 23093
    invoke-virtual {v0, v3}, Lhkx;->a(I)V

    .line 24049
    sget-object v0, Lhgg$d;->a:Lhgg;

    .line 24084
    iget-object v1, v0, Lhgg;->a:Lhgf;

    if-eqz v1, :cond_0

    .line 24085
    iget-object v0, v0, Lhgg;->a:Lhgf;

    .line 24285
    const-string/jumbo v1, "device_request_key"

    invoke-static {v1, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lhgf;->d:Z

    .line 24286
    invoke-virtual {v0}, Lhgf;->a()V

    .line 24287
    invoke-virtual {v0}, Lhgf;->c()V

    .line 851
    :cond_0
    invoke-static {}, Lhgb;->a()Lhgb;

    move-result-object v0

    .line 25159
    iget-object v1, v0, Lhgb;->b:Lhga;

    if-eqz v1, :cond_1

    .line 25160
    iget-object v0, v0, Lhgb;->b:Lhga;

    .line 26100
    const-string/jumbo v1, "old_beacon_device_request_key"

    invoke-static {v1, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lhga;->b:Z

    .line 26101
    invoke-virtual {v0}, Lhga;->a()V

    .line 852
    :cond_1
    return-void
.end method

.method public onLogout()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 856
    invoke-super {p0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->onLogout()V

    .line 857
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lhkx;->a:Ljava/lang/String;

    const-string/jumbo v2, "onLogout"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-static {}, Lhli;->a()Lhli;

    move-result-object v0

    .line 26139
    iget-object v0, v0, Lhli;->a:Lhlj;

    .line 27064
    const-string/jumbo v0, "android_uic_disable_login"

    invoke-static {v0}, Lhlj;->a(Ljava/lang/String;)Z

    move-result v0

    .line 26139
    if-eqz v0, :cond_0

    .line 26140
    const-string/jumbo v0, "onLogout"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lhlg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28048
    const-string/jumbo v0, "SP_KEY_UIC_REFRESH_TIME"

    invoke-static {v0}, Lcpk;->a(Ljava/lang/String;)V

    .line 26142
    invoke-static {}, Lcom/ali/user/enterprise/Login;->logout()V

    .line 860
    :cond_0
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v0

    .line 28167
    invoke-static {}, Lhkx;->d()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lhkx$3;

    invoke-direct {v2, v0}, Lhkx$3;-><init>(Lhkx;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 29049
    sget-object v0, Lhgg$d;->a:Lhgg;

    .line 29090
    iget-object v1, v0, Lhgg;->a:Lhgf;

    if-eqz v1, :cond_1

    .line 29091
    iget-object v1, v0, Lhgg;->a:Lhgf;

    .line 29292
    iget-object v2, v1, Lhgf;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 29293
    invoke-virtual {v1}, Lhgf;->d()V

    .line 29093
    :cond_1
    iget-object v1, v0, Lhgg;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 29094
    iget-object v1, v0, Lhgg;->f:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 29096
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lhgg$1;

    invoke-direct {v2, v0}, Lhgg$1;-><init>(Lhgg;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 863
    invoke-static {}, Lhgb;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 864
    invoke-static {}, Lhgb;->a()Lhgb;

    move-result-object v0

    .line 30165
    iget-object v1, v0, Lhgb;->a:Lhgc;

    if-eqz v1, :cond_2

    .line 30166
    iget-object v0, v0, Lhgb;->a:Lhgc;

    invoke-virtual {v0}, Lhgc;->a()V

    .line 866
    :cond_2
    return-void
.end method

.method public openMiniApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miniAppId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1203
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1211
    :goto_0
    return-void

    .line 1207
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1208
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lhlt;->a()Lhlt;

    invoke-static {p2}, Lhlt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1209
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-static {p1, v0}, Lhou;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public openMiniApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miniAppId"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "page"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1214
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1218
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1219
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lhlt;->a()Lhlt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, p4, v3}, Lhlt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-static {p1, v0}, Lhou;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public openMiniApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miniAppId"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "page"    # Ljava/lang/String;
    .param p5, "ddMode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1227
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1236
    :goto_0
    return-void

    .line 1231
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1232
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lhlt;->a()Lhlt;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4, p5}, Lhlt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1234
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    invoke-static {p1, v0}, Lhou;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public pauseBackgroundAudio()V
    .locals 1

    .prologue
    .line 1461
    invoke-static {}, Lhmo;->a()Lhmo;

    move-result-object v0

    invoke-virtual {v0}, Lhmo;->e()V

    .line 1462
    return-void
.end method

.method public playBackgroundAudio()V
    .locals 1

    .prologue
    .line 1456
    invoke-static {}, Lhmo;->a()Lhmo;

    move-result-object v0

    invoke-virtual {v0}, Lhmo;->g()V

    .line 1457
    return-void
.end method

.method public preloadPage(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)I
    .locals 2
    .param p1, "preloadModel"    # Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 922
    invoke-static {}, Lhqi;->a()Lhqi;

    move-result-object v0

    .line 34039
    iget-object v1, v0, Lhqi;->a:Lhqj;

    if-eqz v1, :cond_0

    .line 34040
    iget-object v0, v0, Lhqi;->a:Lhqj;

    .line 35020
    iget-object v0, v0, Lhqj;->a:Lhqh;

    .line 34041
    if-eqz v0, :cond_0

    .line 34042
    invoke-interface {v0, p1}, Lhqh;->a(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)I

    move-result v0

    :goto_0
    return v0

    .line 34046
    :cond_0
    const/4 v0, -0x1

    .line 922
    goto :goto_0
.end method

.method public preloadResource(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 584
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhhy;->d(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public prepareTargetEApp(Landroid/os/Bundle;Lhlo;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "listener"    # Lhlo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1496
    invoke-super {p0, p1, p2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->prepareTargetEApp(Landroid/os/Bundle;Lhlo;)V

    .line 1497
    invoke-static {}, Lhmp;->a()Lhmp;

    move-result-object v0

    .line 41371
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v1, "hybrid_the_one_package_prepare_active"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41373
    if-eqz p2, :cond_0

    .line 41374
    const-string/jumbo v0, "global_switch_off"

    const-string/jumbo v1, "global switch is off"

    invoke-interface {p2, v0, v1}, Lhlo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41382
    :cond_0
    :goto_0
    return-void

    .line 41378
    :cond_1
    if-nez p1, :cond_2

    .line 41379
    if-eqz p2, :cond_0

    .line 41380
    const-string/jumbo v0, "invalid_params"

    const-string/jumbo v1, "target bundle is null"

    invoke-interface {p2, v0, v1}, Lhlo;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41385
    :cond_2
    const-string/jumbo v1, "appId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41386
    const-string/jumbo v2, "appVersion"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41387
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41388
    const-string/jumbo v2, "version"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41390
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 41391
    const-string/jumbo v2, "nbversion"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41394
    :cond_4
    const/4 v5, 0x2

    move v4, v3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;ZZILhlo;)V

    goto :goto_0
.end method

.method public receiveHpmNotify(Lgvl;)V
    .locals 9
    .param p1, "hpmSwithModel"    # Lgvl;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 579
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v0

    .line 6293
    iget-object v1, v0, Lhhy;->b:Lhib;

    if-eqz v1, :cond_1

    .line 6294
    iget-object v0, v0, Lhhy;->b:Lhib;

    .line 7066
    if-eqz p1, :cond_1

    .line 7067
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "receive notify  testAppId: "

    aput-object v2, v1, v6

    iget-object v2, p1, Lgvl;->c:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string/jumbo v2, ", allConf:"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lgvl;->b:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hpmVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lgvl;->a:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hpmSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lgvl;->d:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 7070
    iget-object v1, p1, Lgvl;->d:Ljava/lang/Boolean;

    .line 7071
    if-eqz v1, :cond_0

    .line 7072
    iget-object v2, v0, Lhib;->b:Lhib$a;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 7276
    invoke-virtual {v2, v3}, Lhib$a;->a(Z)V

    .line 7074
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7079
    :cond_0
    iget-object v1, p1, Lgvl;->c:Ljava/lang/String;

    .line 7080
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8123
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "request test app: "

    aput-object v3, v2, v6

    aput-object v1, v2, v7

    .line 8124
    iget-object v2, v0, Lhib;->b:Lhib$a;

    .line 8276
    iget-wide v2, v2, Lhib$a;->a:J

    .line 8124
    invoke-static {v2, v3, v1}, Lhib;->a(JLjava/lang/String;)Lhjd;

    move-result-object v2

    .line 8128
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "test app["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "] status updated"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8129
    invoke-virtual {v0, v2, v7}, Lhib;->a(Lhjd;Z)V

    .line 7093
    :cond_1
    :goto_0
    return-void

    .line 7085
    :cond_2
    iget-object v1, p1, Lgvl;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 7086
    iget-object v1, p1, Lgvl;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 7087
    if-eqz v1, :cond_3

    .line 9116
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "force update all"

    aput-object v2, v1, v6

    .line 9117
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v8}, Lhib;->a(JLjava/lang/String;)Lhjd;

    move-result-object v1

    .line 9142
    invoke-virtual {v0, v1, v6}, Lhib;->a(Lhjd;Z)V

    goto :goto_0

    .line 7091
    :cond_3
    iget-object v1, p1, Lgvl;->a:Ljava/lang/Long;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lgvl;->a:Ljava/lang/Long;

    .line 7092
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, v0, Lhib;->b:Lhib$a;

    .line 9276
    iget-wide v4, v1, Lhib$a;->a:J

    .line 7092
    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 10135
    iget-object v1, v0, Lhib;->b:Lhib$a;

    .line 10276
    iget-wide v2, v1, Lhib$a;->a:J

    .line 10135
    invoke-static {v2, v3, v8}, Lhib;->a(JLjava/lang/String;)Lhjd;

    move-result-object v1

    .line 11142
    invoke-virtual {v0, v1, v6}, Lhib;->a(Lhjd;Z)V

    goto :goto_0

    .line 7096
    :cond_4
    new-array v0, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "no need to update: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lgvl;->a:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_0
.end method

.method public recyclePreloadPage(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Z
    .locals 1
    .param p1, "preloadModel"    # Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    .prologue
    .line 932
    invoke-static {}, Lhqi;->a()Lhqi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhqi;->a(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Z

    move-result v0

    return v0
.end method

.method public removeDomainStorageItem(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1085
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Lcom/alibaba/wukong/Callback;)V

    invoke-static {p1, p2, v0}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->removeItem(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 1113
    return-void
.end method

.method public reportAppMalfunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1491
    invoke-static {p1}, Lhrc;->a(Ljava/lang/String;)V

    .line 1492
    return-void
.end method

.method public restoreWhiteList(Ljava/lang/String;)V
    .locals 9
    .param p1, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 411
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mApp:Landroid/app/Application;

    const-string/jumbo v7, "light_app_white_list"

    invoke-static {v6, v7}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 413
    .local v5, "whiteListString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 415
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 416
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/Plugin;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 417
    sget-object v6, Lhru;->a:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 423
    .local v1, "isBackup":I
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 424
    .local v4, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "error_code"

    const-string/jumbo v7, "code"

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string/jumbo v6, "isbackup"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "open_micro_whitelist_error"

    invoke-interface {v6, v7, v8, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 427
    return-void

    .line 418
    .end local v1    # "isBackup":I
    .end local v4    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 421
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public saveSWAppsFastConfigData(Ljava/lang/String;)V
    .locals 2
    .param p1, "configData"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 669
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v0

    const-string/jumbo v1, "sw_attendance_apps_config"

    invoke-virtual {v0, v1, p1}, Lhkx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public saveSWFastConfigData(Ljava/lang/String;)V
    .locals 2
    .param p1, "configData"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 660
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v0

    const-string/jumbo v1, "sw_attendance_loc_config"

    invoke-virtual {v0, v1, p1}, Lhkx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public setCheckInListener(Lgvg;)V
    .locals 1
    .param p1, "listener"    # Lgvg;

    .prologue
    .line 1518
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->setCheckInListener(Lgvg;)V

    .line 1519
    return-void
.end method

.method public setDomainStorageItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1053
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$4;

    invoke-direct {v0, p0, p5}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$4;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Lcom/alibaba/wukong/Callback;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorageUtils;->setItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/wukong/Callback;)V

    .line 1081
    return-void
.end method

.method public setOnLightAppNotificationListener(Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;

    .prologue
    .line 1445
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->setOnLightAppNotificationListener(Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;)V

    .line 1446
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mOnLightAppNotificationListener:Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;

    .line 1447
    return-void
.end method

.method public setWhiteList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 403
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sput-object p1, Lhru;->a:Ljava/util/List;

    .line 404
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/Plugin;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "whiteListString":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mApp:Landroid/app/Application;

    const-string/jumbo v2, "light_app_white_list"

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public showPrivacyDialog(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1508
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->showPrivacyDialog(Landroid/content/Context;Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;Z)V

    .line 1509
    return-void
.end method

.method public showSticky(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 641
    invoke-static {p1}, Lhec;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startAutoAttendance()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 908
    invoke-super {p0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->startAutoAttendance()V

    .line 910
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 912
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    const-string/jumbo v1, "lightapp"

    sget-object v2, Lhkx;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "startAutoAttendance background="

    aput-object v4, v3, v6

    const/4 v4, 0x1

    .line 913
    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 912
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v1

    if-nez v1, :cond_0

    .line 915
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v1

    .line 33093
    invoke-virtual {v1, v6}, Lhkx;->a(I)V

    .line 918
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    return-void
.end method

.method public startStepCountService()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->mApp:Landroid/app/Application;

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->startService(Landroid/content/Context;)V

    .line 637
    return-void
.end method

.method public updateAllMicroAppsOpenType()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1118
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "hybrid_disable_update_all_eapp_open_type"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1121
    :cond_0
    const-string/jumbo v0, "LightAppRuntime"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateAllMiniAppBizType()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1274
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v1, "hybrid_disable_update_miniapp_biztype"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1275
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->buildMiniAppIds()Ljava/util/List;

    move-result-object v0

    .line 1276
    .local v0, "miniAppIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lhml;->a()Lhml;

    move-result-object v2

    .line 36171
    new-instance v3, Lhml$4;

    invoke-direct {v3, v2}, Lhml$4;-><init>(Lhml;)V

    .line 36189
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36191
    .end local v0    # "miniAppIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 36194
    .restart local v0    # "miniAppIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    .line 36195
    new-instance v4, Lhml$5;

    invoke-direct {v4, v2, v3}, Lhml$5;-><init>(Lhml;Lhml$a;)V

    invoke-interface {v1, v0, v4}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;->getMiniAppTypeList(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method public updateHpmFastConfigData(Ljava/lang/String;)V
    .locals 1
    .param p1, "configData"    # Ljava/lang/String;

    .prologue
    .line 655
    invoke-static {}, Lhfr;->a()Lhfq;

    move-result-object v0

    invoke-interface {v0, p1}, Lhfq;->a(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public updateMicroAppOpenType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "miniAppId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1152
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1153
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v3

    .line 1154
    .local v3, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v3, :cond_3

    .line 1155
    const/4 v1, 0x0

    .line 1156
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    iget-object v0, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 1157
    .local v0, "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v0, :cond_2

    .line 1158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1159
    .local v6, "temp":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v6, :cond_0

    iget-object v8, v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppId:Ljava/lang/String;

    invoke-static {p2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppIdV2:Ljava/lang/String;

    invoke-static {p2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1160
    :cond_1
    move-object v1, v6

    goto :goto_0

    .line 1164
    .end local v6    # "temp":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_2
    if-eqz v1, :cond_3

    .line 1165
    new-instance v2, Lhoh;

    invoke-direct {v2}, Lhoh;-><init>()V

    .line 1166
    .local v2, "orgAgentModel":Lhoh;
    iput-object p2, v2, Lhoh;->d:Ljava/lang/String;

    .line 1167
    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Lhoh;->b:Ljava/lang/Long;

    .line 1168
    iget-wide v8, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Lhoh;->a:Ljava/lang/Long;

    .line 1170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v4, "reqOrgAgentModels":Ljava/util/List;, "Ljava/util/List<Lhoh;>;"
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    const-string/jumbo v7, "updateMicroAppOpenType"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "OrgMicroAPPIService.getDefaultOpenType"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "reqOrgAgentModels="

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    const-class v7, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OrgMicroAPPIService;

    invoke-static {v7}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OrgMicroAPPIService;

    .line 1177
    .local v5, "service":Lcom/alibaba/lightapp/runtime/miniapp/rpc/OrgMicroAPPIService;
    new-instance v7, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$7;

    invoke-direct {v7, p0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$7;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;)V

    invoke-interface {v5, v4, v7}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OrgMicroAPPIService;->getDefaultOpenType(Ljava/util/List;Liyv;)V

    .line 1199
    .end local v0    # "microAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v2    # "orgAgentModel":Lhoh;
    .end local v3    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v4    # "reqOrgAgentModels":Ljava/util/List;, "Ljava/util/List<Lhoh;>;"
    .end local v5    # "service":Lcom/alibaba/lightapp/runtime/miniapp/rpc/OrgMicroAPPIService;
    :cond_3
    return-void
.end method

.method public updateStickPageTestData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 646
    return-void
.end method

.method public updateWebConfigData(Ljava/lang/String;)V
    .locals 1
    .param p1, "configData"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-static {}, Lhfs;->a()Lhfq;

    move-result-object v0

    invoke-interface {v0, p1}, Lhfq;->a(Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method public wrapperMicroMiniAppUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "agentId"    # Ljava/lang/String;
    .param p4, "corpId"    # Ljava/lang/String;

    .prologue
    .line 1296
    invoke-static {}, Lhlt;->a()Lhlt;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lhlt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
