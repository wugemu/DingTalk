.class public final Lhlt;
.super Ljava/lang/Object;
.source "MiniappRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhlt$b;,
        Lhlt$a;
    }
.end annotation


# static fields
.field private static a:Lhlt;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method private static a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p0, "httpUri"    # Landroid/net/Uri;

    .prologue
    .line 1143
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1144
    :cond_0
    const/4 v0, 0x0

    .line 1167
    :cond_1
    :goto_0
    return-object v0

    .line 1147
    :cond_2
    const/4 v0, 0x0

    .line 1149
    .local v0, "dingtalkSchemeUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    .line 1150
    .local v3, "params":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1151
    const/4 v1, 0x0

    .line 1152
    .local v1, "dingtalkSchemeUrl":Ljava/lang/String;
    const-string/jumbo v4, "mini_app_scheme"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1153
    const-string/jumbo v4, "mini_app_scheme"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1159
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1160
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1154
    :cond_4
    const-string/jumbo v4, "micro_app_scheme"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1155
    const-string/jumbo v4, "micro_app_scheme"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1156
    :cond_5
    const-string/jumbo v4, "dev_mini_app"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1157
    const-string/jumbo v4, "dev_mini_app"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 1163
    .end local v1    # "dingtalkSchemeUrl":Ljava/lang/String;
    .end local v3    # "params":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1164
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 25
    .param p1, "dingtalkUri"    # Landroid/net/Uri;
    .param p2, "param"    # Landroid/os/Bundle;

    .prologue
    .line 1179
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-object p2

    .line 1186
    :cond_1
    const-string/jumbo v18, "query"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1188
    .local v14, "query":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1190
    .local v16, "tempMiniAppId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 1191
    .local v13, "path":Ljava/lang/String;
    const/16 v18, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v18, :pswitch_data_0

    .line 10352
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1278
    :cond_4
    :goto_3
    const-string/jumbo v18, "source"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1279
    .local v15, "souceModel":Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 1280
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1281
    const-string/jumbo v18, "debug"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string/jumbo v18, "trial"

    .line 1282
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1283
    :cond_5
    const-string/jumbo v18, "source"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const-string/jumbo v18, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1287
    .local v17, "version":Ljava/lang/String;
    const-string/jumbo v18, "nbsource"

    const-string/jumbo v19, "debug"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const-string/jumbo v18, "nbversion"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    const-string/jumbo v18, "keepAlive"

    const-string/jumbo v19, "false"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    new-instance v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    invoke-direct {v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;-><init>()V

    .line 1295
    .local v9, "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    iput-object v15, v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsn:Ljava/lang/String;

    .line 1296
    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    .line 1297
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->add(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;)V

    goto/16 :goto_0

    .line 1191
    .end local v9    # "h5DevAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;
    .end local v15    # "souceModel":Ljava/lang/String;
    .end local v17    # "version":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v19, "/action/open_micro_app"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v18, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v19, "/action/open_mini_app"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v18, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v19, "/action/dev_mini_app"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v18, 0x2

    goto/16 :goto_1

    .line 1193
    :pswitch_0
    const-string/jumbo v18, "corpId"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1194
    .local v4, "corpId":Ljava/lang/String;
    const-string/jumbo v18, "appId"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1195
    .local v10, "microAppId":Ljava/lang/String;
    const-string/jumbo v18, "agentId"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1196
    .local v3, "agentId":Ljava/lang/String;
    const-string/jumbo v18, "fallbackUrl"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1199
    .local v8, "fallbackUrl":Ljava/lang/String;
    const-string/jumbo v18, "ddCorpId"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string/jumbo v18, "ddAppId"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string/jumbo v18, "ddAgentId"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string/jumbo v18, "ddFallbackUrl"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string/jumbo v18, "ddAppType"

    const-string/jumbo v19, "org"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 1208
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1209
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    const-string/jumbo v19, "corpId"

    .line 1210
    invoke-virtual/range {v18 .. v19}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    const-string/jumbo v19, "="

    .line 1211
    invoke-virtual/range {v18 .. v19}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1235
    :cond_6
    :goto_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_13

    .line 1236
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/alibaba/dingtalk/oabase/OAInterface;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1237
    .local v11, "miniAppIdV2":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1238
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/alibaba/dingtalk/oabase/OAInterface;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1240
    const-string/jumbo v18, "ddStatus"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1213
    .end local v11    # "miniAppIdV2":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, ""

    .line 1215
    .local v5, "corpIdFromQuery":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    const-string/jumbo v19, "http://www.example.com?"

    .line 1216
    invoke-virtual/range {v18 .. v19}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1215
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1217
    .local v7, "fakeUri":Landroid/net/Uri;
    if-eqz v7, :cond_8

    .line 1218
    const-string/jumbo v18, "corpId"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1220
    :cond_8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 1221
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1222
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    .line 1223
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    const-string/jumbo v19, "corpId"

    .line 1224
    invoke-virtual/range {v18 .. v19}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    const-string/jumbo v19, "="

    .line 1225
    invoke-virtual/range {v18 .. v19}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1227
    :goto_5
    goto/16 :goto_4

    .line 7311
    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/net/Uri;->isOpaque()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 7312
    :cond_a
    const-string/jumbo v18, "MiniappRuntime"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "replaceCorpId"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string/jumbo v21, "uri == null or uri.isOpaque"

    aput-object v21, v19, v20

    .line 8071
    const-string/jumbo v20, "mini_app"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7313
    const/4 v14, 0x0

    goto :goto_5

    .line 7316
    :cond_b
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v19

    .line 7317
    invoke-virtual {v7}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v18

    .line 7318
    if-eqz v18, :cond_f

    .line 7321
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 7322
    :cond_c
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 7323
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 7324
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 7325
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v21

    const-string/jumbo v22, "="

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7326
    const-string/jumbo v21, "corpId"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 7327
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7332
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 7333
    const-string/jumbo v18, "&"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_6

    .line 7329
    :cond_d
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 7330
    if-nez v18, :cond_e

    const-string/jumbo v18, ""

    :cond_e
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_7

    .line 7339
    :cond_f
    const-string/jumbo v18, "MiniappRuntime"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "replaceCorpId"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string/jumbo v22, "query keys == null"

    aput-object v22, v20, v21

    .line 9071
    const-string/jumbo v21, "mini_app"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7341
    :cond_10
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_5

    .line 1232
    .end local v5    # "corpIdFromQuery":Ljava/lang/String;
    .end local v7    # "fakeUri":Landroid/net/Uri;
    :cond_11
    const-string/jumbo v18, "MiniappRuntime"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "wrapperMiniAppBundleByMiniAppInfo"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string/jumbo v21, "scheme corpId == null"

    aput-object v21, v19, v20

    .line 10071
    const-string/jumbo v20, "mini_app"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1243
    .restart local v11    # "miniAppIdV2":Ljava/lang/String;
    :cond_12
    move-object/from16 v16, v11

    .line 1244
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/alibaba/dingtalk/oabase/OAInterface;->l(Ljava/lang/String;)I

    move-result v12

    .line 1245
    .local v12, "openStatus":I
    const-string/jumbo v18, "ddStatus"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1247
    .end local v11    # "miniAppIdV2":Ljava/lang/String;
    .end local v12    # "openStatus":I
    :cond_13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1248
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1249
    .restart local v11    # "miniAppIdV2":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1250
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1252
    const-string/jumbo v18, "ddStatus"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1255
    :cond_14
    move-object/from16 v16, v11

    .line 1256
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/alibaba/dingtalk/oabase/OAInterface;->l(Ljava/lang/String;)I

    move-result v12

    .line 1257
    .restart local v12    # "openStatus":I
    const-string/jumbo v18, "ddStatus"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1264
    .end local v3    # "agentId":Ljava/lang/String;
    .end local v4    # "corpId":Ljava/lang/String;
    .end local v8    # "fallbackUrl":Ljava/lang/String;
    .end local v10    # "microAppId":Ljava/lang/String;
    .end local v11    # "miniAppIdV2":Ljava/lang/String;
    .end local v12    # "openStatus":I
    :pswitch_1
    :try_start_0
    const-string/jumbo v18, "miniAppId"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    goto/16 :goto_2

    .line 1265
    :catch_0
    move-exception v6

    .line 1266
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 10356
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_15
    if-nez p2, :cond_1c

    .line 10357
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v22, v18

    .line 11095
    :goto_8
    if-eqz p1, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 11096
    :cond_16
    const-string/jumbo v18, "false"

    .line 10361
    :cond_17
    :goto_9
    const-string/jumbo v19, "ddMode"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 10362
    const-string/jumbo v19, "mainTask"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v19

    .line 10363
    const-string/jumbo v21, "page"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 10365
    const-string/jumbo v23, "2018082961119919"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 10366
    const/16 v18, 0x1

    .line 10367
    const-string/jumbo v20, "false"

    .line 10368
    const-string/jumbo v19, "push"

    .line 10371
    :goto_a
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_18

    if-eqz v18, :cond_18

    .line 10372
    invoke-static/range {v21 .. v21}, Lhom;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 10375
    :cond_18
    const-string/jumbo v23, "page"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10376
    const-string/jumbo v21, "query"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10377
    const-string/jumbo v21, "keepAlive"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10378
    const-string/jumbo v20, "ddMode"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10379
    const-string/jumbo v19, "appId"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10380
    const-string/jumbo v19, "mainTask"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10383
    const-string/jumbo v18, "closeAllActivityAnimation"

    const/16 v19, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10386
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v18

    sget v19, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_19

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v18

    sget v19, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :cond_19
    const-string/jumbo v18, "debug"

    .line 10387
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 10388
    const-string/jumbo v18, "isTinyApp"

    const-string/jumbo v19, "YES"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10389
    const-string/jumbo v18, "url"

    const-string/jumbo v19, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10390
    const-string/jumbo v18, "enableDSL"

    const-string/jumbo v19, "enableDSL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10391
    const-string/jumbo v18, "enableTabBar"

    const-string/jumbo v19, "enableTabBar"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10392
    const-string/jumbo v18, "launchParamsTag"

    const-string/jumbo v19, "launchParamsTag"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10393
    const-string/jumbo v18, "page"

    const-string/jumbo v19, "page"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10394
    const-string/jumbo v18, "debug"

    const-string/jumbo v19, "debug"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10395
    const-string/jumbo v18, "appConfigJson"

    const-string/jumbo v19, "appConfigJson"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10396
    const-string/jumbo v18, "tabBarJson"

    const-string/jumbo v19, "tabBarJson"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 11099
    :cond_1a
    const-string/jumbo v18, "keepAlive"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 11100
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v19

    sget v20, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    .line 11104
    const-string/jumbo v19, "CLOUD_SETTING_4_3_7_MINIAPP_KEEPALIVE_ENABLE"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_17

    const-string/jumbo v18, "false"

    goto/16 :goto_9

    :cond_1b
    move/from16 v24, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v18

    move/from16 v18, v24

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v22, p2

    goto/16 :goto_8

    .line 1191
    nop

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

.method public static declared-synchronized a()Lhlt;
    .locals 2

    .prologue
    .line 176
    const-class v1, Lhlt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhlt;->a:Lhlt;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lhlt;

    invoke-direct {v0}, Lhlt;-><init>()V

    sput-object v0, Lhlt;->a:Lhlt;

    .line 180
    :cond_0
    sget-object v0, Lhlt;->a:Lhlt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "agentId"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1484
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return-object v1

    .line 1489
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1493
    :cond_2
    const-string/jumbo v1, "dingtalk://dingtalkclient/action/open_micro_app"

    .line 1495
    .local v1, "microAppSchemeUrl":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1496
    .local v2, "microSchemeUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1497
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1498
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v5, "corpId"

    invoke-virtual {v0, v5, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1500
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1501
    const-string/jumbo v5, "appId"

    invoke-virtual {v0, v5, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1503
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1504
    const-string/jumbo v5, "agentId"

    invoke-virtual {v0, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1510
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, "corpId="

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1511
    .local v3, "query":Ljava/lang/String;
    const-string/jumbo v5, "query"

    invoke-virtual {v0, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1512
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1507
    .end local v3    # "query":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "agentId"

    invoke-virtual {v0, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1514
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "microSchemeUri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 1515
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "originUrl"    # Ljava/lang/String;
    .param p3, "miniAppBundle"    # Landroid/os/Bundle;
    .param p4, "miniAppId"    # Ljava/lang/String;
    .param p5, "callback"    # Lhlt$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 889
    :try_start_0
    invoke-static {p1}, Lhrf;->b(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :goto_0
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v7

    new-instance v0, Lhlt$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lhlt$4;-><init>(Lhlt;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v7, v0, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 903
    return-void

    .line 890
    :catch_0
    move-exception v6

    .line 891
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 892
    const-string/jumbo v0, "MiniappRuntime"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "finishAndRestartMiniApp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "finish activity fail="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lhlt;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V
    .locals 8
    .param p0, "x0"    # Lhlt;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lhlt$a;

    .prologue
    .line 150
    .line 11744
    if-eqz p3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11745
    :cond_0
    if-eqz p5, :cond_1

    .line 11746
    const/16 v0, 0x194

    invoke-virtual {p0, v0, p2}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v0

    invoke-interface {p5, v0}, Lhlt$a;->a(Lhlt$b;)V

    .line 11748
    :cond_1
    const-string/jumbo v0, "MiniappRuntime"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "doOpenMiniApp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "miniAppBundle null or miniappid null"

    aput-object v3, v1, v2

    .line 12082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11876
    :goto_0
    return-void

    .line 11753
    :cond_2
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhlq;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 11755
    const/4 v2, 0x0

    .line 11756
    const/4 v1, 0x0

    .line 11758
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 11759
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmu;

    .line 11760
    if-eqz v0, :cond_3

    .line 13049
    iget-object v4, v0, Lhmu;->d:Ljava/lang/String;

    .line 11762
    invoke-static {p4, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11763
    const/4 v1, 0x1

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 11773
    :goto_1
    const-string/jumbo v2, "MiniappRuntime"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "open"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "isTaskAlive="

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 13082
    const-string/jumbo v4, "mini_task"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11775
    if-eqz v0, :cond_11

    .line 11776
    const-string/jumbo v0, "miniapp_move_session_disable"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 14049
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 14050
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSessions()Ljava/util/Stack;

    move-result-object v3

    .line 14051
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    .line 14052
    const/4 v2, 0x0

    .line 14053
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipc;

    .line 14054
    if-eqz v0, :cond_4

    .line 14055
    invoke-interface {v0}, Lipc;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "appId"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14056
    invoke-static {p4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 14062
    :goto_2
    if-eqz v0, :cond_5

    .line 14063
    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 14064
    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11781
    :cond_5
    if-eqz v1, :cond_10

    .line 15049
    iget-object v0, v1, Lhmu;->d:Ljava/lang/String;

    .line 11781
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 11782
    const/4 v2, 0x0

    .line 15065
    iget-object v0, v1, Lhmu;->f:Landroid/os/Bundle;

    .line 11783
    if-eqz v0, :cond_6

    if-eqz p3, :cond_6

    .line 16065
    iget-object v0, v1, Lhmu;->f:Landroid/os/Bundle;

    .line 11785
    const-string/jumbo v3, "query"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11786
    const-string/jumbo v3, "query"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11787
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 11788
    const/4 v2, 0x1

    .line 11793
    :cond_6
    if-nez v2, :cond_7

    const-string/jumbo v0, "miniapp_enable_no_keepalive_restart"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11794
    if-eqz p3, :cond_7

    .line 11795
    const-string/jumbo v0, "keepAlive"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11796
    const-string/jumbo v3, "false"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11797
    const/4 v2, 0x1

    .line 11802
    :cond_7
    const/4 v0, 0x0

    .line 11804
    if-nez v2, :cond_13

    if-eqz p3, :cond_13

    .line 11805
    const-string/jumbo v3, "page"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11806
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 11808
    const-string/jumbo v3, "DISABLE_ENTER_PAGE_UPDATE_TASK_V439"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 11809
    const/4 v0, 0x1

    move v7, v0

    move v0, v2

    move v2, v7

    .line 11817
    :goto_3
    if-nez v0, :cond_8

    .line 17065
    iget-object v3, v1, Lhmu;->f:Landroid/os/Bundle;

    .line 11817
    if-eqz v3, :cond_8

    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v3, "hybrid_enable_check_alive_status"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 18065
    iget-object v0, v1, Lhmu;->f:Landroid/os/Bundle;

    .line 11818
    const-string/jumbo v3, "keepAlive"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11819
    const-string/jumbo v3, "false"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 11822
    :cond_8
    const-string/jumbo v3, "MiniappRuntime"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "open"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "isShouldRestart="

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 18082
    const-string/jumbo v5, "mini_task"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19033
    iget-object v1, v1, Lhmu;->b:Landroid/app/Activity;

    .line 11826
    if-eqz v0, :cond_a

    .line 11827
    const-string/jumbo v0, "mini_app_launch_path"

    const/16 v2, 0x7d2

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 11828
    invoke-direct/range {v0 .. v5}, Lhlt;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V

    goto/16 :goto_0

    .line 11810
    :cond_9
    const-string/jumbo v3, "miniapp_enable_page_restart"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 11811
    const/4 v2, 0x1

    move v7, v0

    move v0, v2

    move v2, v7

    goto :goto_3

    .line 11832
    :cond_a
    if-eqz v2, :cond_c

    .line 11833
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSessions()Ljava/util/Stack;

    move-result-object v0

    .line 11834
    :goto_4
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 11835
    const/4 v2, 0x0

    .line 11836
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipc;

    .line 11837
    if-eqz v0, :cond_b

    .line 11838
    invoke-interface {v0}, Lipc;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "appId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11839
    invoke-static {p4, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 11845
    :goto_5
    if-eqz v0, :cond_c

    .line 11846
    invoke-interface {v0}, Lipc;->getTopPage()Liop;

    move-result-object v0

    .line 11847
    if-eqz v0, :cond_c

    invoke-interface {v0}, Liop;->getContentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 11848
    invoke-interface {v0}, Liop;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11855
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_e

    .line 11856
    invoke-static {v1, p1, p3}, Lhrf;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    .line 11861
    :goto_6
    const-string/jumbo v2, "MiniappRuntime"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "open"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "isMoveTaskToFrontSuccess="

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 19082
    const-string/jumbo v4, "mini_task"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11863
    if-nez v0, :cond_f

    .line 11864
    const-string/jumbo v0, "mini_app_launch_path"

    const/16 v2, 0x7d3

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 11865
    invoke-direct/range {v0 .. v5}, Lhlt;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V

    goto/16 :goto_0

    .line 11833
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 11858
    :cond_e
    invoke-static {v1}, Lhrf;->a(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_6

    .line 11867
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "navi_to_open_mini_app"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 11868
    const/16 v2, 0x7d1

    invoke-static {p4, v2, v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappLaunchType(Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 11875
    :cond_10
    const-string/jumbo v0, "mini_app_launch_path"

    const/16 v1, 0x7d4

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11876
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lhlt;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V

    goto/16 :goto_0

    .line 11880
    :cond_11
    const-string/jumbo v0, "mini_app_launch_path"

    const/16 v1, 0x7d0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11881
    invoke-virtual {p0, p2, p3, p4, p5}, Lhlt;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V

    goto/16 :goto_0

    :cond_12
    move-object v0, v2

    goto/16 :goto_5

    :cond_13
    move v7, v0

    move v0, v2

    move v2, v7

    goto/16 :goto_3

    :cond_14
    move-object v0, v2

    goto/16 :goto_2

    :cond_15
    move v0, v1

    move-object v1, v2

    goto/16 :goto_1
.end method

.method static synthetic a(Lhlt;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZLhlt$a;)V
    .locals 0
    .param p0, "x0"    # Lhlt;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lhlt$a;

    .prologue
    .line 150
    invoke-direct/range {p0 .. p5}, Lhlt;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZLhlt$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZLhlt$a;)V
    .locals 10
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "miniAppBundle"    # Landroid/os/Bundle;
    .param p3, "miniAppId"    # Ljava/lang/String;
    .param p4, "isOpenApp4MiniApp"    # Z
    .param p5, "callback"    # Lhlt$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 964
    const-string/jumbo v5, "doStartMiniApp"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "miniAppId="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "isOpenApp4MiniApp="

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 965
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "miniAppBundle="

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p2, v6, v7

    .line 4082
    const-string/jumbo v7, "mini_task"

    invoke-static {v7, v5, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 968
    if-eqz p5, :cond_1

    .line 969
    const-string/jumbo v5, "ddFallbackUrl"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 970
    .local v2, "fallbackUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 971
    move-object v2, p1

    .line 973
    :cond_0
    const/16 v5, 0x194

    invoke-virtual {p0, v5, v2}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v5

    invoke-interface {p5, v5}, Lhlt$a;->a(Lhlt$b;)V

    .line 1010
    .end local v2    # "fallbackUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 978
    :cond_2
    if-eqz p4, :cond_7

    .line 979
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v5, "navi_to_open_mini_app"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 980
    .local v0, "costTime":J
    const-string/jumbo v5, "mini_app_launch_path"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 981
    .local v4, "type":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 982
    const/4 v4, 0x2

    .line 984
    :cond_3
    invoke-static {p3, v4, v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappLaunchType(Ljava/lang/String;IJ)V

    .line 5071
    const/4 v5, 0x0

    .line 5072
    if-eqz p2, :cond_a

    .line 5073
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v6, v7, :cond_5

    const-string/jumbo v6, "debug"

    .line 5074
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 5076
    new-instance v6, Linz;

    invoke-direct {v6}, Linz;-><init>()V

    .line 6043
    iput-object p2, v6, Linz;->b:Landroid/os/Bundle;

    .line 5079
    invoke-static {}, Lhlt;->c()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v7

    .line 5080
    if-eqz v7, :cond_4

    .line 5081
    const/4 v5, 0x0

    invoke-virtual {v7, v5, v6}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Linn;Linz;)V

    .line 5082
    const/4 v5, 0x1

    :cond_4
    move v3, v5

    .line 987
    .local v3, "handleMiniAppUrl":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 988
    if-eqz p5, :cond_1

    .line 989
    const/16 v5, 0xc8

    invoke-virtual {p0, v5, p1}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v5

    invoke-interface {p5, v5}, Lhlt$a;->a(Lhlt$b;)V

    goto :goto_0

    .line 5085
    .end local v3    # "handleMiniAppUrl":Z
    :cond_5
    const-string/jumbo v5, "appId"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6424
    const-string/jumbo v6, "URGENT"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v7, Lhlt$2;

    invoke-direct {v7, p0, p2, v5}, Lhlt$2;-><init>(Lhlt;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 5087
    const/4 v5, 0x1

    move v3, v5

    goto :goto_1

    .line 992
    .restart local v3    # "handleMiniAppUrl":Z
    :cond_6
    const-string/jumbo v5, "MiniappRuntime"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "doStartMiniApp"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "handleMiniAppUrl=false"

    aput-object v8, v6, v7

    .line 7082
    const-string/jumbo v7, "mini_task"

    invoke-static {v7, v5, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 995
    .end local v0    # "costTime":J
    .end local v3    # "handleMiniAppUrl":Z
    .end local v4    # "type":I
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v5, "navi_to_open_mini_app"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 996
    .restart local v0    # "costTime":J
    const-string/jumbo v5, "mini_app_launch_path"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 997
    .restart local v4    # "type":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 998
    const/4 v4, 0x3

    .line 1000
    :cond_8
    invoke-static {p3, v4, v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappLaunchType(Ljava/lang/String;IJ)V

    .line 1002
    if-eqz p5, :cond_1

    .line 1003
    const-string/jumbo v5, "ddFallbackUrl"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1004
    .restart local v2    # "fallbackUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1005
    move-object v2, p1

    .line 1007
    :cond_9
    const/16 v5, 0x195

    invoke-virtual {p0, v5, v2}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v5

    invoke-interface {p5, v5}, Lhlt$a;->a(Lhlt$b;)V

    goto/16 :goto_0

    .end local v2    # "fallbackUrl":Ljava/lang/String;
    :cond_a
    move v3, v5

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "miniAppId"    # Ljava/lang/String;

    .prologue
    .line 1408
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dingtalk://dingtalkclient/action/open_mini_app?miniAppId="

    .line 1409
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/alipay/mobile/h5container/service/H5Service;
    .locals 1

    .prologue
    .line 1529
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1114
    const/4 v5, 0x0

    .line 1134
    :goto_0
    return-object v5

    .line 1117
    :cond_0
    const/4 v4, 0x0

    .line 1118
    .local v4, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1119
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "locale"

    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string/jumbo v5, "ddOriginUrl"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1123
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1124
    .local v3, "scheme":Ljava/lang/String;
    const-string/jumbo v5, "http"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "https"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1125
    :cond_1
    const-string/jumbo v5, "dd_version"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1126
    .local v1, "ddVersion":Ljava/lang/String;
    const-string/jumbo v5, "ddVersion"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-static {v4}, Lhlt;->a(Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1134
    .end local v1    # "ddVersion":Ljava/lang/String;
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-direct {p0, v4, v0}, Lhlt;->a(Landroid/net/Uri;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0

    .line 1130
    :catch_0
    move-exception v2

    .line 1131
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(ILjava/lang/String;)Lhlt$b;
    .locals 1
    .param p1, "openStatus"    # I
    .param p2, "fallbackUrl"    # Ljava/lang/String;

    .prologue
    .line 1522
    new-instance v0, Lhlt$b;

    invoke-direct {v0, p0}, Lhlt$b;-><init>(Lhlt;)V

    .line 1523
    .local v0, "openMiniResult":Lhlt$b;
    iput p1, v0, Lhlt$b;->a:I

    .line 1524
    iput-object p2, v0, Lhlt$b;->b:Ljava/lang/String;

    .line 1525
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "ddMode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1422
    const/4 v3, 0x0

    .line 1453
    :cond_0
    :goto_0
    return-object v3

    .line 1425
    :cond_1
    invoke-static {p1}, Lhlt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1426
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1428
    :try_start_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1429
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1430
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1431
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1432
    const-string/jumbo v4, "query"

    invoke-virtual {v0, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1435
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1436
    const-string/jumbo v4, "page"

    invoke-virtual {v0, v4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1439
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1440
    const-string/jumbo v4, "ddMode"

    invoke-virtual {v0, v4, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1443
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1444
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1448
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1449
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V
    .locals 10
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "miniAppBundle"    # Landroid/os/Bundle;
    .param p3, "miniAppId"    # Ljava/lang/String;
    .param p4, "callback"    # Lhlt$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 914
    if-nez p2, :cond_1

    .line 915
    if-eqz p4, :cond_0

    .line 916
    const/16 v0, 0x194

    invoke-virtual {p0, v0, p1}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v0

    invoke-interface {p4, v0}, Lhlt$a;->a(Lhlt$b;)V

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    const-string/jumbo v0, "ddAppType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 922
    .local v7, "miniAppType":Ljava/lang/String;
    const-string/jumbo v0, "org"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    const-string/jumbo v0, "ddStatus"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 924
    .local v8, "status":I
    packed-switch v8, :pswitch_data_0

    .line 947
    :goto_1
    const-string/jumbo v0, "MiniappRuntime"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "startMiniApp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "status= "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 926
    :pswitch_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lhlt;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZLhlt$a;)V

    goto :goto_1

    .line 929
    :pswitch_1
    const-string/jumbo v0, "ddCorpId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 930
    .local v6, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v9

    new-instance v0, Lhlt$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lhlt$5;-><init>(Lhlt;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V

    invoke-virtual {v9, v6, p3, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->isOpenApp4MiniApp(Ljava/lang/String;Ljava/lang/String;Lgvk;)V

    goto :goto_1

    .line 944
    .end local v6    # "corpId":Ljava/lang/String;
    :pswitch_2
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lhlt;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZLhlt$a;)V

    goto :goto_1

    .line 949
    .end local v8    # "status":I
    :cond_2
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lhlt;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZLhlt$a;)V

    goto :goto_0

    .line 924
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 16
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 437
    :try_start_0
    invoke-static {}, Lhlt;->c()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v3

    .line 438
    .local v3, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-nez v3, :cond_1

    .line 483
    .end local v3    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_0
    :goto_0
    return-void

    .line 441
    .restart local v3    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_1
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopSession()Lipc;

    move-result-object v10

    .line 442
    .local v10, "topSession":Lipc;
    if-eqz v10, :cond_0

    .line 445
    const/4 v9, 0x0

    .line 447
    .local v9, "topPage":Liop;
    invoke-interface {v10}, Lipc;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 448
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessions()Ljava/util/Stack;

    move-result-object v7

    .line 449
    .local v7, "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_2

    .line 450
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v11, "hybrid_new_dispatch_event_fix_share"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 453
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v6

    .line 454
    .local v6, "sessionStackSize":I
    const/4 v5, 0x2

    .line 455
    .local v5, "i":I
    :goto_1
    sub-int v11, v6, v5

    if-ltz v11, :cond_2

    .line 456
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v7, v11}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lipc;

    .line 457
    .local v4, "h5Session":Lipc;
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lipc;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 458
    invoke-interface {v4}, Lipc;->getTopPage()Liop;

    move-result-object v9

    .line 473
    .end local v4    # "h5Session":Lipc;
    .end local v5    # "i":I
    .end local v6    # "sessionStackSize":I
    .end local v7    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :cond_2
    :goto_2
    if-eqz v9, :cond_0

    .line 474
    invoke-interface {v9}, Liop;->getBridge()Linx;

    move-result-object v2

    .line 475
    .local v2, "h5Bridge":Linx;
    if-eqz v2, :cond_0

    .line 476
    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1, v11}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    .end local v2    # "h5Bridge":Linx;
    .end local v3    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v9    # "topPage":Liop;
    .end local v10    # "topSession":Lipc;
    :catch_0
    move-exception v8

    .line 480
    .local v8, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 481
    const-string/jumbo v11, "MiniappRuntime"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "dispatch err: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 461
    .end local v8    # "throwable":Ljava/lang/Throwable;
    .restart local v3    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .restart local v4    # "h5Session":Lipc;
    .restart local v5    # "i":I
    .restart local v6    # "sessionStackSize":I
    .restart local v7    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    .restart local v9    # "topPage":Liop;
    .restart local v10    # "topSession":Lipc;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 462
    goto :goto_1

    .line 464
    .end local v4    # "h5Session":Lipc;
    .end local v5    # "i":I
    .end local v6    # "sessionStackSize":I
    :cond_4
    :try_start_1
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    invoke-virtual {v7, v11}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lipc;

    .line 465
    .restart local v4    # "h5Session":Lipc;
    if-eqz v4, :cond_2

    .line 466
    invoke-interface {v4}, Lipc;->getTopPage()Liop;

    move-result-object v9

    goto :goto_2

    .line 471
    .end local v4    # "h5Session":Lipc;
    .end local v7    # "sessions":Ljava/util/Stack;, "Ljava/util/Stack<Lipc;>;"
    :cond_5
    invoke-interface {v10}, Lipc;->getTopPage()Liop;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "agentId"    # Ljava/lang/String;
    .param p4, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1458
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 1479
    .end local p1    # "originUrl":Ljava/lang/String;
    .local v1, "originUrl":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1463
    .end local v1    # "originUrl":Ljava/lang/String;
    .restart local p1    # "originUrl":Ljava/lang/String;
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, p1

    .line 1464
    .end local p1    # "originUrl":Ljava/lang/String;
    .restart local v1    # "originUrl":Ljava/lang/String;
    goto :goto_0

    .line 1468
    .end local v1    # "originUrl":Ljava/lang/String;
    .restart local p1    # "originUrl":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1469
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {p2, p3, p4}, Lhlt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1470
    .local v0, "microAppScheme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1471
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "micro_app_scheme"

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local v0    # "microAppScheme":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    move-object v1, p1

    .line 1479
    .end local p1    # "originUrl":Ljava/lang/String;
    .restart local v1    # "originUrl":Ljava/lang/String;
    goto :goto_0

    .line 1474
    .end local v1    # "originUrl":Ljava/lang/String;
    .restart local p1    # "originUrl":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1475
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 407
    :try_start_0
    invoke-static {}, Lhlt;->c()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    .line 408
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v2, :cond_0

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;>;"
    const-string/jumbo v0, ""

    .line 412
    .local v0, "bundleName":Ljava/lang/String;
    new-instance v4, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-class v5, Lhlw;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "video"

    invoke-direct {v4, v0, v5, v6}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v4, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    const-class v5, Lhlx;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "dd-web-view"

    invoke-direct {v4, v0, v5, v6}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->addEmbedViewConfig(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v0    # "bundleName":Ljava/lang/String;
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;>;"
    .end local v2    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_0
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v3

    .line 419
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
