.class final Lhfk$2;
.super Lcmi;
.source "AppInfoInstallServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhfk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhfl;

.field final synthetic b:Lhfk;


# direct methods
.method constructor <init>(Lhfk;Lhfl;)V
    .locals 0
    .param p1, "this$0"    # Lhfk;

    .prologue
    .line 257
    iput-object p1, p0, Lhfk$2;->b:Lhfk;

    iput-object p2, p0, Lhfk$2;->a:Lhfl;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 322
    const-string/jumbo v0, "AppInfoInstallServiceImpl"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "queryRpc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "getMiniAppMetaData"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "onException"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lhfk$2;->a:Lhfl;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lhfk$2;->a:Lhfl;

    invoke-interface {v0, p1, p2, p3}, Lhfl;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 257
    check-cast p1, Lhod;

    .line 1261
    if-eqz p1, :cond_7

    .line 1262
    iget-object v1, p1, Lhod;->a:Ljava/lang/String;

    .line 1263
    iget-object v2, p1, Lhod;->c:Ljava/lang/String;

    .line 1264
    iget-object v3, p1, Lhod;->b:Ljava/lang/String;

    .line 1266
    const-string/jumbo v4, "AppInfoInstallServiceImpl"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "queryRpc"

    aput-object v6, v5, v0

    const/4 v6, 0x1

    const-string/jumbo v7, "getMiniAppMetaData"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "resultData="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "removeAppIdListJson="

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object v2, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "configJson="

    aput-object v7, v5, v6

    const/4 v6, 0x7

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1271
    new-instance v4, Lcom/alibaba/lightapp/runtime/app/install/impl/AppInfoQueryRes;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/app/install/impl/AppInfoQueryRes;-><init>()V

    .line 1274
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 1275
    if-eqz v5, :cond_2

    .line 1276
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 1277
    :goto_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v1, v7, :cond_1

    .line 1278
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 1279
    invoke-static {v7}, Lhfh;->a(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    move-result-object v7

    .line 1280
    if-eqz v7, :cond_0

    .line 1281
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1284
    :cond_1
    iput-object v6, v4, Lcom/alibaba/lightapp/runtime/app/install/impl/AppInfoQueryRes;->data:Ljava/util/List;

    .line 1287
    :cond_2
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 1288
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1289
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 1290
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_4

    .line 1291
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1292
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1290
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1295
    :cond_4
    iput-object v5, v4, Lcom/alibaba/lightapp/runtime/app/install/impl/AppInfoQueryRes;->removeAppIdList:Ljava/util/List;

    .line 1298
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1299
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1300
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->jsonToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v4, Lcom/alibaba/lightapp/runtime/app/install/impl/AppInfoQueryRes;->config:Ljava/util/Map;

    .line 1301
    iget-object v0, v4, Lcom/alibaba/lightapp/runtime/app/install/impl/AppInfoQueryRes;->config:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 1302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lcom/alibaba/lightapp/runtime/app/install/impl/AppInfoQueryRes;->config:Ljava/util/Map;

    .line 1308
    :cond_6
    :goto_2
    const-string/jumbo v0, "APP_INFO_CONFIG_SP_KEY"

    invoke-static {v0, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    :goto_3
    iget-object v0, p0, Lhfk$2;->a:Lhfl;

    if-eqz v0, :cond_7

    .line 1314
    iget-object v0, p0, Lhfk$2;->a:Lhfl;

    invoke-interface {v0, v4}, Lhfl;->onSuccess(Ljava/lang/Object;)V

    .line 257
    :cond_7
    return-void

    .line 1305
    :cond_8
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, v4, Lcom/alibaba/lightapp/runtime/app/install/impl/AppInfoQueryRes;->config:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
