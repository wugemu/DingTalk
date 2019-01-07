.class public final Lhoy;
.super Ljava/lang/Object;
.source "AlipayMiniParseUrlImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    .locals 24
    .param p1, "dingtalkUrl"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_16

    .line 32
    new-instance v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    invoke-direct {v12}, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;-><init>()V

    .line 34
    .local v12, "miniParseUrlResult":Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 35
    .local v6, "dingtalkUri":Landroid/net/Uri;
    const-string/jumbo v19, "query"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 36
    .local v15, "query":Ljava/lang/String;
    const/16 v17, 0x0

    .line 38
    .local v17, "tempMiniAppId":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 39
    .local v14, "path":Ljava/lang/String;
    const/16 v19, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v19, :pswitch_data_0

    .line 4191
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/net/Uri;->isOpaque()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 108
    :cond_2
    :goto_2
    const-string/jumbo v19, "source"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 109
    .local v16, "souceModel":Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 110
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 111
    const-string/jumbo v19, "debug"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string/jumbo v19, "trial"

    .line 112
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 113
    :cond_3
    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->source:Ljava/lang/String;

    .line 115
    const-string/jumbo v19, "version"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 117
    .local v18, "version":Ljava/lang/String;
    const-string/jumbo v19, "debug"

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->nbsource:Ljava/lang/String;

    .line 118
    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->nbversion:Ljava/lang/String;

    .line 121
    const-string/jumbo v19, "false"

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->keepAlive:Ljava/lang/String;

    .line 125
    new-instance v10, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    invoke-direct {v10}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;-><init>()V

    .line 126
    .local v10, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    .line 127
    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->add(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;)V

    .line 140
    .end local v6    # "dingtalkUri":Landroid/net/Uri;
    .end local v10    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .end local v12    # "miniParseUrlResult":Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "query":Ljava/lang/String;
    .end local v16    # "souceModel":Ljava/lang/String;
    .end local v17    # "tempMiniAppId":Ljava/lang/String;
    .end local v18    # "version":Ljava/lang/String;
    :cond_4
    :goto_3
    return-object v12

    .line 39
    .restart local v6    # "dingtalkUri":Landroid/net/Uri;
    .restart local v12    # "miniParseUrlResult":Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v15    # "query":Ljava/lang/String;
    .restart local v17    # "tempMiniAppId":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v20, "/action/open_micro_app"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v19, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v20, "/action/open_mini_app"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v19, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v20, "/action/dev_mini_app"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v19, 0x2

    goto/16 :goto_0

    .line 41
    :pswitch_0
    const-string/jumbo v19, "corpId"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "corpId":Ljava/lang/String;
    const-string/jumbo v19, "appId"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 43
    .local v11, "microAppId":Ljava/lang/String;
    const-string/jumbo v19, "agentId"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "agentId":Ljava/lang/String;
    const-string/jumbo v19, "fallbackUrl"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 45
    .local v9, "fallbackUrl":Ljava/lang/String;
    const-string/jumbo v19, "miniAppId"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 48
    iput-object v4, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddCorpId:Ljava/lang/String;

    .line 49
    iput-object v11, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAppId:Ljava/lang/String;

    .line 50
    iput-object v3, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAgentId:Ljava/lang/String;

    .line 51
    iput-object v9, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddFallbackUrl:Ljava/lang/String;

    .line 52
    const-string/jumbo v19, "org"

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAppType:Ljava/lang/String;

    .line 56
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 57
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 58
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    const-string/jumbo v20, "corpId"

    .line 59
    invoke-virtual/range {v19 .. v20}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    const-string/jumbo v20, "="

    .line 60
    invoke-virtual/range {v19 .. v20}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 84
    :cond_5
    :goto_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 85
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/alibaba/dingtalk/oabase/OAInterface;->m(Ljava/lang/String;)I

    move-result v13

    .line 86
    .local v13, "openStatus":I
    iput v13, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 133
    .end local v3    # "agentId":Ljava/lang/String;
    .end local v4    # "corpId":Ljava/lang/String;
    .end local v6    # "dingtalkUri":Landroid/net/Uri;
    .end local v9    # "fallbackUrl":Ljava/lang/String;
    .end local v11    # "microAppId":Ljava/lang/String;
    .end local v13    # "openStatus":I
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "query":Ljava/lang/String;
    .end local v17    # "tempMiniAppId":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 134
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    const-string/jumbo v19, "AlipayMiniParseUrlImpl"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "parseUrl in BaseParseUrlImpl occurs error: "

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 5082
    const-string/jumbo v21, "mini_task"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 62
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "agentId":Ljava/lang/String;
    .restart local v4    # "corpId":Ljava/lang/String;
    .restart local v6    # "dingtalkUri":Landroid/net/Uri;
    .restart local v9    # "fallbackUrl":Ljava/lang/String;
    .restart local v11    # "microAppId":Ljava/lang/String;
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v15    # "query":Ljava/lang/String;
    .restart local v17    # "tempMiniAppId":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string/jumbo v5, ""

    .line 64
    .local v5, "corpIdFromQuery":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    const-string/jumbo v20, "http://www.example.com?"

    .line 65
    invoke-virtual/range {v19 .. v20}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 64
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 66
    .local v8, "fakeUri":Landroid/net/Uri;
    if-eqz v8, :cond_7

    .line 67
    const-string/jumbo v19, "corpId"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    :cond_7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 70
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 71
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    .line 72
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    const-string/jumbo v20, "&"

    invoke-virtual/range {v19 .. v20}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    const-string/jumbo v20, "corpId"

    .line 73
    invoke-virtual/range {v19 .. v20}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    const-string/jumbo v20, "="

    .line 74
    invoke-virtual/range {v19 .. v20}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 76
    :goto_5
    goto/16 :goto_4

    .line 1150
    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/net/Uri;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1151
    :cond_9
    const-string/jumbo v19, "AlipayMiniParseUrlImpl"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "replaceCorpId"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string/jumbo v22, "uri == null or uri.isOpaque"

    aput-object v22, v20, v21

    .line 2071
    const-string/jumbo v21, "mini_app"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1152
    const/4 v15, 0x0

    goto :goto_5

    .line 1155
    :cond_a
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v20

    .line 1156
    invoke-virtual {v8}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v19

    .line 1157
    if-eqz v19, :cond_e

    .line 1160
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1161
    :cond_b
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 1162
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1163
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 1164
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v22

    const-string/jumbo v23, "="

    invoke-virtual/range {v22 .. v23}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1165
    const-string/jumbo v22, "corpId"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 1166
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1171
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1172
    const-string/jumbo v19, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_6

    .line 1168
    :cond_c
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1169
    if-nez v19, :cond_d

    const-string/jumbo v19, ""

    :cond_d
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_7

    .line 1178
    :cond_e
    const-string/jumbo v19, "AlipayMiniParseUrlImpl"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "replaceCorpId"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "query keys == null"

    aput-object v23, v21, v22

    .line 3071
    const-string/jumbo v22, "mini_app"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1180
    :cond_f
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    .line 81
    .end local v5    # "corpIdFromQuery":Ljava/lang/String;
    .end local v8    # "fakeUri":Landroid/net/Uri;
    :cond_10
    const-string/jumbo v19, "AlipayMiniParseUrlImpl"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "wrapperMiniAppBundleByMiniAppInfo"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string/jumbo v22, "scheme corpId == null"

    aput-object v22, v20, v21

    .line 4071
    const-string/jumbo v21, "mini_app"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 87
    :cond_11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 88
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->n(Ljava/lang/String;)I

    move-result v13

    .line 89
    .restart local v13    # "openStatus":I
    iput v13, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddStatus:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 95
    .end local v3    # "agentId":Ljava/lang/String;
    .end local v4    # "corpId":Ljava/lang/String;
    .end local v9    # "fallbackUrl":Ljava/lang/String;
    .end local v11    # "microAppId":Ljava/lang/String;
    .end local v13    # "openStatus":I
    :pswitch_1
    :try_start_2
    const-string/jumbo v19, "miniAppId"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v17

    goto/16 :goto_1

    .line 96
    :catch_1
    move-exception v7

    .line 97
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 4199
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_12
    const-string/jumbo v19, "page"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4214
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Landroid/net/Uri;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 4215
    :cond_13
    const-string/jumbo v19, "false"

    .line 4201
    :cond_14
    :goto_8
    const-string/jumbo v21, "ddMode"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 4202
    const-string/jumbo v22, "mainTask"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v22

    .line 4204
    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->page:Ljava/lang/String;

    .line 4205
    iput-object v15, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->query:Ljava/lang/String;

    .line 4206
    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->keepAlive:Ljava/lang/String;

    .line 4207
    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddMode:Ljava/lang/String;

    .line 4208
    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->miniAppId:Ljava/lang/String;

    .line 4209
    move/from16 v0, v22

    iput-boolean v0, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->mainTask:Z

    .line 4210
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v12, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->closeAllActivityAnimation:Z

    goto/16 :goto_2

    .line 4218
    :cond_15
    const-string/jumbo v19, "keepAlive"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v21

    sget v22, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    .line 4223
    const-string/jumbo v21, "CLOUD_SETTING_4_3_7_MINIAPP_KEEPALIVE_ENABLE"

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_14

    const-string/jumbo v19, "false"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    .line 140
    .end local v6    # "dingtalkUri":Landroid/net/Uri;
    .end local v12    # "miniParseUrlResult":Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "query":Ljava/lang/String;
    .end local v17    # "tempMiniAppId":Ljava/lang/String;
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 39
    :sswitch_data_0
    .sparse-switch
        -0x260138dc -> :sswitch_1
        0x3031869b -> :sswitch_0
        0x65d095cd -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
