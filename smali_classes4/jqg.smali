.class public final Ljqg;
.super Ljava/lang/Object;
.source "AppCodeInitializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .locals 15
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 28
    const-string/jumbo v10, "orgUrl"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 29
    .local v7, "orgUrl":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    .line 30
    :cond_0
    const-string/jumbo v10, "debugMode"

    invoke-virtual {p0, v10, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Ljqy;->b(Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_1
    move v6, v12

    .line 31
    .local v6, "isDebug":Z
    :goto_0
    if-eqz v6, :cond_5

    .line 33
    const-string/jumbo v4, "debug_app"

    .line 35
    .local v4, "appId":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "||0||debug\u6d4b\u8bd5\u5305|img/663173d68ff9210d4d2232a5e2ddc1d3.png"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "appCodeSource":Ljava/lang/String;
    new-instance v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-direct {v2, v3}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    sget-object v10, Lcom/taobao/windmill/bundle/container/core/RunMode;->DEBUG:Lcom/taobao/windmill/bundle/container/core/RunMode;

    iput-object v10, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->runMode:Lcom/taobao/windmill/bundle/container/core/RunMode;

    .line 39
    iput-object v3, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    .line 83
    .end local v3    # "appCodeSource":Ljava/lang/String;
    .end local v4    # "appId":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->isValid()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 84
    iput-object v7, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->orgUrl:Ljava/lang/String;

    .line 85
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 86
    .local v9, "uri":Landroid/net/Uri;
    invoke-static {v9}, Ljqg;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->query:Ljava/lang/String;

    .line 3141
    const-string/jumbo v10, "_wml_path"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    iput-object v10, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->startPath:Ljava/lang/String;

    .line 89
    if-eqz v6, :cond_2

    .line 3145
    const-string/jumbo v10, "_wml_frame_type"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "frameType":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 92
    invoke-virtual {v2, v5}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->setFrameTempType(Ljava/lang/String;)V

    .end local v5    # "frameType":Ljava/lang/String;
    :cond_2
    move-object v11, v2

    .line 97
    .end local v2    # "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_3
    return-object v11

    .end local v6    # "isDebug":Z
    :cond_4
    move v6, v13

    .line 30
    goto :goto_0

    .line 1101
    .restart local v6    # "isDebug":Z
    :cond_5
    if-eqz p0, :cond_a

    .line 1102
    const-string/jumbo v10, "appCode"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1103
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 1104
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    const-string/jumbo v14, "_wml_code"

    invoke-virtual {v10, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_6
    move-object v1, v10

    .line 44
    .local v1, "appCode":Ljava/lang/String;
    :goto_2
    const/4 v8, 0x0

    .line 45
    .local v8, "originalStr":Ljava/lang/String;
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v10

    .line 1125
    iget-object v10, v10, Ljpo;->c:Ljpo$a;

    iget-object v0, v10, Ljpo$a;->b:Ljpx;

    .line 46
    .local v0, "adapter":Ljpx;
    if-eqz v0, :cond_7

    .line 47
    invoke-interface {v0, v1}, Ljpx;->decryptAppCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 50
    :cond_7
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 51
    invoke-static {}, Ljqy;->b()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 53
    move-object v8, v1

    .line 66
    :cond_8
    new-instance v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-direct {v2, v8}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v2    # "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    iput-object v1, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    .line 68
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getStatus()Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    move-result-object v10

    sget-object v14, Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;->ONLINE:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    if-ne v10, v14, :cond_e

    .line 2017
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v10

    .line 2169
    iget-object v10, v10, Ljpo;->c:Ljpo$a;

    iget-object v10, v10, Ljpo$a;->m:Ljpu;

    .line 2019
    if-eqz v10, :cond_c

    .line 2020
    const-string/jumbo v14, "group_windmill_common"

    .line 2021
    invoke-interface {v10, v14}, Ljpu;->getConfigsByGroup(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 2022
    if-eqz v10, :cond_9

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_9
    move v10, v13

    .line 69
    :goto_3
    if-nez v10, :cond_d

    .line 70
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getZCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 71
    sget-object v10, Lcom/taobao/windmill/bundle/container/core/RunMode;->ONLINE_PLUS:Lcom/taobao/windmill/bundle/container/core/RunMode;

    iput-object v10, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->runMode:Lcom/taobao/windmill/bundle/container/core/RunMode;

    goto/16 :goto_1

    .end local v0    # "adapter":Ljpx;
    .end local v1    # "appCode":Ljava/lang/String;
    .end local v2    # "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .end local v8    # "originalStr":Ljava/lang/String;
    :cond_a
    move-object v1, v11

    .line 1108
    goto :goto_2

    .line 2025
    .restart local v0    # "adapter":Ljpx;
    .restart local v1    # "appCode":Ljava/lang/String;
    .restart local v2    # "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .restart local v8    # "originalStr":Ljava/lang/String;
    :cond_b
    const-string/jumbo v14, "skipOnlinePlusMode"

    .line 2026
    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2027
    const-string/jumbo v14, "true"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    move v10, v12

    .line 2028
    goto :goto_3

    :cond_c
    move v10, v13

    .line 2031
    goto :goto_3

    .line 73
    :cond_d
    sget-object v10, Lcom/taobao/windmill/bundle/container/core/RunMode;->ONLINE:Lcom/taobao/windmill/bundle/container/core/RunMode;

    iput-object v10, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->runMode:Lcom/taobao/windmill/bundle/container/core/RunMode;

    goto/16 :goto_1

    .line 75
    :cond_e
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getStatus()Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    move-result-object v10

    sget-object v12, Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;->PREVIEW:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    if-eq v10, v12, :cond_f

    .line 76
    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getStatus()Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    move-result-object v10

    sget-object v12, Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;->CHECKING:Lcom/taobao/windmill/bundle/container/core/AppCodeModel$Status;

    if-ne v10, v12, :cond_10

    .line 77
    :cond_f
    sget-object v10, Lcom/taobao/windmill/bundle/container/core/RunMode;->PREVIEW:Lcom/taobao/windmill/bundle/container/core/RunMode;

    iput-object v10, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->runMode:Lcom/taobao/windmill/bundle/container/core/RunMode;

    goto/16 :goto_1

    .line 79
    :cond_10
    sget-object v10, Lcom/taobao/windmill/bundle/container/core/RunMode;->ONLINE:Lcom/taobao/windmill/bundle/container/core/RunMode;

    iput-object v10, v2, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->runMode:Lcom/taobao/windmill/bundle/container/core/RunMode;

    goto/16 :goto_1
.end method

.method private static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "orgUrl"    # Landroid/net/Uri;

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 115
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 116
    .local v3, "queryBuilder":Landroid/net/Uri$Builder;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 119
    const-string/jumbo v6, "_wml_code"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "_wml_path"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 122
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 126
    const-string/jumbo v6, "{"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "["

    .line 127
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    :cond_1
    :try_start_0
    const-string/jumbo v6, "utf-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 135
    :cond_2
    :goto_1
    invoke-virtual {v3, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, "AppCodeInitializer"

    const-string/jumbo v7, "getQueryFromOrgUrl value encode error"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 137
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
