.class public final Lipt;
.super Lips;
.source "JsonBioParameterToBioApp.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/workspace/BioTransfer;)V
    .locals 0
    .param p1, "transfer"    # Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lips;-><init>(Lcom/alipay/mobile/security/bio/workspace/BioTransfer;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/security/bio/api/BioParameter;)Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    .locals 26
    .param p1, "param"    # Lcom/alipay/mobile/security/bio/api/BioParameter;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v18, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>()V

    throw v18

    .line 46
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getProtocol()Ljava/lang/String;

    move-result-object v10

    .line 1193
    .local v10, "protocol":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v16, ""

    .line 1194
    const-class v18, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;

    .line 1195
    if-eqz v18, :cond_1

    .line 1199
    invoke-virtual/range {v18 .. v18}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->getContent()Ljava/lang/String;

    move-result-object v18

    const-class v19, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;

    .line 1198
    invoke-static/range {v18 .. v19}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;

    .line 1200
    if-eqz v18, :cond_1

    .line 1203
    invoke-virtual/range {v18 .. v18}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getType()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 1206
    invoke-virtual/range {v18 .. v18}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getAndroidcfg()Ljava/lang/String;

    move-result-object v19

    .line 1207
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v19

    .line 1208
    if-eqz v19, :cond_1

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcStep:I

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 1212
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcToken:Ljava/lang/String;

    .line 1214
    const-string/jumbo v18, "fcToken"

    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcToken:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mRecordExtService:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    move-object/from16 v18, v0

    sget-object v21, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_ENTRY_SDK:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    .line 1216
    const-string/jumbo v18, "params"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mRecordExtService:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    move-object/from16 v18, v0

    sget-object v21, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_GET_PARAM:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    .line 2053
    const-string/jumbo v18, "paperGuideUrl"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2054
    const-string/jumbo v20, "showPaperGuide"

    invoke-virtual/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2055
    const-string/jumbo v21, "certType"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2056
    const-string/jumbo v22, "paperStartPage"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v22

    .line 2057
    const-string/jumbo v23, "paperTotalPage"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v23

    .line 2058
    new-instance v24, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v24 .. v24}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2059
    const-string/jumbo v25, "showPaperGuide"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    const-string/jumbo v20, "paperGuideUrl"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    const-string/jumbo v18, "certType"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    const-string/jumbo v18, "paperStartPage"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    const-string/jumbo v18, "paperTotalPage"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    const-string/jumbo v18, "fcToken"

    move-object/from16 v0, p0

    iget-object v0, v0, Lips;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcToken:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Lips;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v18, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mFcSpecialData:Lcom/alibaba/fastjson/JSONObject;

    .line 2070
    new-instance v18, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2071
    const-string/jumbo v20, "content"

    const-string/jumbo v21, "papersCfg"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    .line 50
    .local v16, "tmp":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 51
    move-object/from16 v10, v16

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mIDFaceParam:Lcom/alipay/mobile/security/bio/api/BioParameter;

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->isIDFaceFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v16    # "tmp":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v4, Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;-><init>()V

    .line 61
    .local v4, "app":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-static {}, Lipt;->a()Ljava/lang/String;

    move-result-object v17

    .line 62
    .local v17, "uuid":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setTag(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getRemoteURL()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setRemoteURL(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getHeadImageUrl()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setHeadImageURL(Ljava/lang/String;)V

    .line 67
    invoke-static {v10}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 73
    const-string/jumbo v12, "bid-log-key-public.key"

    .line 74
    .local v12, "publicKeyFileName":Ljava/lang/String;
    const-string/jumbo v13, "bid-log-key-public_t.key"

    .line 78
    .local v13, "publicKeyFileNameBak":Ljava/lang/String;
    :try_start_1
    const-class v18, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;

    .line 80
    .local v5, "config":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->getContent()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v18

    if-nez v18, :cond_5

    .line 183
    .end local v5    # "config":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
    .end local v12    # "publicKeyFileName":Ljava/lang/String;
    .end local v13    # "publicKeyFileNameBak":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v4

    .line 1219
    .end local v4    # "app":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    .end local v17    # "uuid":Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcStep:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 2083
    new-instance v18, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2084
    const-string/jumbo v20, "f"

    const-string/jumbo v21, "fc"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    const-string/jumbo v20, "fcToken"

    move-object/from16 v0, p0

    iget-object v0, v0, Lips;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcToken:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lips;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mFcSpecialData:Lcom/alibaba/fastjson/JSONObject;

    .line 2090
    new-instance v18, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2091
    const-string/jumbo v20, "content"

    const-string/jumbo v21, "faceCfg"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v16

    goto/16 :goto_0

    .line 55
    :catch_0
    move-exception v7

    .line 56
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 83
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "app":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    .restart local v5    # "config":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
    .restart local v12    # "publicKeyFileName":Ljava/lang/String;
    .restart local v13    # "publicKeyFileNameBak":Ljava/lang/String;
    .restart local v17    # "uuid":Ljava/lang/String;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->isIDFaceFlag:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->getSign()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 88
    :cond_6
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->getContent()Ljava/lang/String;

    move-result-object v18

    const-class v19, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;

    invoke-static/range {v18 .. v19}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;

    .line 90
    .local v6, "configContent":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getAndroidcfg()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "androidCfg":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 95
    new-instance v11, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;

    invoke-direct {v11}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;-><init>()V

    .line 107
    .local v11, "protocolConfig":Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->isIDFaceFlag:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 108
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getEnv()I

    move-result v18

    if-nez v18, :cond_9

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 113
    .local v8, "inPub":Ljava/io/InputStream;
    :goto_4
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->getSign()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x8

    invoke-static/range {v18 .. v19}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v14

    .line 114
    .local v14, "signBase64":[B
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->getContent()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v14, v8}, Lcom/alipay/mobile/security/bio/utils/RSASign;->doCheck([B[BLjava/io/InputStream;)Z

    move-result v15

    .line 119
    .end local v8    # "inPub":Ljava/io/InputStream;
    .end local v14    # "signBase64":[B
    .local v15, "suc":Z
    :goto_5
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getType()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioType(I)V

    .line 121
    const-string/jumbo v18, " "

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "\"ui\":992"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 123
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    .line 125
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getType()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    if-eqz v11, :cond_10

    .line 126
    invoke-virtual {v11}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getUi()I

    move-result v18

    if-nez v18, :cond_c

    .line 127
    invoke-virtual {v11}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getNavigatepage()Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 128
    invoke-virtual {v11}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getNavigatepage()Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->isEnable()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 129
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v18

    const/16 v19, 0x12e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 130
    const/16 v18, -0x12e

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    .line 159
    :cond_7
    :goto_6
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setCfg(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBistoken(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mFcSpecialData:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setFcSpecialData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 162
    invoke-virtual {v4, v15}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setSigned(Z)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->isAutoClose()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setAutoClose(Z)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getBundle()Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBundle(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getExtProperty()Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 168
    .local v9, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getExtProperty()Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v4, v9, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_7

    .line 171
    .end local v3    # "androidCfg":Ljava/lang/String;
    .end local v5    # "config":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
    .end local v6    # "configContent":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "protocolConfig":Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    .end local v15    # "suc":Z
    :catch_1
    move-exception v7

    .line 172
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 98
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "androidCfg":Ljava/lang/String;
    .restart local v5    # "config":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
    .restart local v6    # "configContent":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;
    :cond_8
    :try_start_4
    const-class v18, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .restart local v11    # "protocolConfig":Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    goto/16 :goto_3

    .line 99
    .end local v11    # "protocolConfig":Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    :catch_2
    move-exception v7

    .line 100
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v7}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V

    .line 102
    new-instance v11, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;

    invoke-direct {v11}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;-><init>()V

    .restart local v11    # "protocolConfig":Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    goto/16 :goto_3

    .line 111
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lipt;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .restart local v8    # "inPub":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 116
    .end local v8    # "inPub":Ljava/io/InputStream;
    :cond_a
    const/4 v15, 0x1

    .restart local v15    # "suc":Z
    goto/16 :goto_5

    .line 131
    :cond_b
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v18

    const/16 v19, 0x12f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 132
    const/16 v18, -0x12f

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_6

    .line 173
    .end local v3    # "androidCfg":Ljava/lang/String;
    .end local v5    # "config":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
    .end local v6    # "configContent":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;
    .end local v11    # "protocolConfig":Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    .end local v15    # "suc":Z
    :catch_3
    move-exception v7

    .line 174
    .local v7, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 135
    .end local v7    # "e":Lcom/alibaba/fastjson/JSONException;
    .restart local v3    # "androidCfg":Ljava/lang/String;
    .restart local v5    # "config":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
    .restart local v6    # "configContent":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;
    .restart local v11    # "protocolConfig":Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    .restart local v15    # "suc":Z
    :cond_c
    :try_start_6
    invoke-virtual {v11}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getUi()I

    move-result v18

    const/16 v19, 0x3df

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 136
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v18

    const/16 v19, 0x12e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 137
    const/16 v18, 0x3df

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_6

    .line 175
    .end local v3    # "androidCfg":Ljava/lang/String;
    .end local v5    # "config":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
    .end local v6    # "configContent":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;
    .end local v11    # "protocolConfig":Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    .end local v15    # "suc":Z
    :catch_4
    move-exception v7

    .line 176
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 138
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "androidCfg":Ljava/lang/String;
    .restart local v5    # "config":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
    .restart local v6    # "configContent":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;
    .restart local v11    # "protocolConfig":Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    .restart local v15    # "suc":Z
    :cond_d
    :try_start_7
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v18

    const/16 v19, 0x12f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 139
    const/16 v18, 0x3e0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_6

    .line 177
    .end local v3    # "androidCfg":Ljava/lang/String;
    .end local v5    # "config":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
    .end local v6    # "configContent":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;
    .end local v11    # "protocolConfig":Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    .end local v15    # "suc":Z
    :catch_5
    move-exception v7

    .line 178
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 141
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "androidCfg":Ljava/lang/String;
    .restart local v5    # "config":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
    .restart local v6    # "configContent":Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;
    .restart local v11    # "protocolConfig":Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    .restart local v15    # "suc":Z
    :cond_e
    :try_start_8
    invoke-virtual {v11}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getUi()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 142
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v18

    const/16 v19, 0x12e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 143
    const/16 v18, 0x3e1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    goto/16 :goto_6

    .line 144
    :cond_f
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v18

    const/16 v19, 0x12f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 145
    const/16 v18, 0x3e2

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    goto/16 :goto_6

    .line 148
    :cond_10
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getType()I

    move-result v18

    const/16 v19, 0xc9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    if-eqz v11, :cond_7

    .line 149
    invoke-virtual {v11}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getUi()I

    move-result v18

    const/16 v19, 0x3df

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 150
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v18

    const/16 v19, 0x12c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 151
    const/16 v18, 0x3df

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    goto/16 :goto_6

    .line 152
    :cond_11
    invoke-virtual {v6}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v18

    const/16 v19, 0x12d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 153
    const/16 v18, 0x3e0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_6
.end method
