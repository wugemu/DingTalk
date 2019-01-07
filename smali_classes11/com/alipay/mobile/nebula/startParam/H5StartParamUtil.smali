.class public Lcom/alipay/mobile/nebula/startParam/H5StartParamUtil;
.super Ljava/lang/Object;
.source "H5StartParamUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5StartParamUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToInfo(Ljava/lang/String;[BLjava/util/List;Ljava/lang/StringBuilder;)V
    .locals 16
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p3, "prerenderPageInfo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;>;"
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    :try_start_0
    new-instance v8, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 30
    .local v8, "data":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 32
    .local v12, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "prerenderPage"

    const-string/jumbo v3, ""

    invoke-static {v12, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v2, "launchParams"

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    .line 34
    .local v15, "launchParams":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 36
    .local v14, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 37
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    :try_start_1
    new-instance v10, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;

    invoke-direct {v10}, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;-><init>()V

    .line 40
    .local v10, "h5StartParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 41
    .local v13, "key":Ljava/lang/String;
    iput-object v13, v10, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->tag:Ljava/lang/String;

    .line 42
    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    iput-object v2, v10, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 43
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 44
    .end local v10    # "h5StartParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    .end local v13    # "key":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 45
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "H5StartParamUtil"

    invoke-static {v2, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 50
    .end local v8    # "data":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "launchParams":Lcom/alibaba/fastjson/JSONObject;
    :catch_1
    move-exception v9

    .line 51
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5StartParamUtil"

    invoke-static {v2, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 53
    .local v1, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v1, :cond_0

    .line 54
    const-string/jumbo v2, "H5_CONFIG_FILE_PARSE_FAIL"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "appId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "^error="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 55
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "H-EM"

    .line 54
    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
