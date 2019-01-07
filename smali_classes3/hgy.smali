.class public final Lhgy;
.super Ljava/lang/Object;
.source "EntryChooser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "ver1"    # Ljava/lang/String;
    .param p1, "ver2"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0

    .line 326
    :cond_1
    const-string/jumbo v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "verArr1":[Ljava/lang/String;
    const-string/jumbo v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "verArr2":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 330
    .local v1, "idx":I
    array-length v5, v3

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 331
    .local v2, "minLength":I
    const/4 v0, 0x0

    .line 333
    .local v0, "diff":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v3, v1

    .line 334
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v0, v5, v6

    if-nez v0, :cond_2

    aget-object v5, v3, v1

    aget-object v6, v4, v1

    .line 335
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 339
    :cond_2
    if-eqz v0, :cond_3

    .line 340
    :goto_2
    goto :goto_0

    .line 339
    :cond_3
    array-length v5, v3

    array-length v6, v4

    sub-int v0, v5, v6

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide v8, 0x7fffffffffffffffL

    .line 219
    if-eqz p0, :cond_3

    .line 220
    invoke-static {p1}, Lhgy;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 221
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v6, "wxIntent":Landroid/content/Intent;
    const-class v7, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string/jumbo v7, "url"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    if-eqz p2, :cond_1

    .line 226
    const-string/jumbo v7, "micro_app"

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 227
    .local v2, "appId":J
    const-string/jumbo v7, "micro_app"

    invoke-virtual {v6, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 229
    const-string/jumbo v7, "micro_agent"

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 230
    .local v0, "agentId":J
    const-string/jumbo v7, "micro_agent"

    invoke-virtual {v6, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 231
    const-string/jumbo v7, "appId"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "miniAppId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 233
    const-string/jumbo v7, "appId"

    const-string/jumbo v8, "appId"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    :cond_0
    const-string/jumbo v7, "page"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "page":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 237
    const-string/jumbo v7, "page"

    const-string/jumbo v8, "page"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    .end local v0    # "agentId":J
    .end local v2    # "appId":J
    .end local v4    # "miniAppId":Ljava/lang/String;
    .end local v5    # "page":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lhrf;->a(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 242
    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    :cond_2
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 246
    const/4 v7, 0x1

    .line 249
    .end local v6    # "wxIntent":Landroid/content/Intent;
    :goto_0
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 14
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 57
    const/4 v11, 0x0

    .line 116
    :goto_0
    return v11

    .line 1285
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v11

    sget v12, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v11, v12, :cond_2

    .line 1289
    const-class v11, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v11}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v12, "dt_function"

    const-string/jumbo v13, "weexview_enable"

    invoke-interface {v11, v12, v13}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v11

    .line 1290
    if-eqz v11, :cond_2

    .line 1291
    invoke-interface {v11}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 1292
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1293
    invoke-static {v11}, Ligb;->f(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_1

    const/4 v11, 0x1

    .line 60
    :goto_1
    if-nez v11, :cond_3

    .line 61
    const/4 v11, 0x0

    goto :goto_0

    .line 1293
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 1297
    :cond_2
    const/4 v11, 0x1

    goto :goto_1

    .line 1307
    :cond_3
    const-string/jumbo v11, "hybrid_config_enable_x_project_weex_page"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "https://recruiment.dingtalk.com/recruiment/mobile/index"

    .line 1308
    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1309
    const/4 v11, 0x1

    .line 64
    :goto_2
    if-eqz v11, :cond_5

    .line 65
    const/4 v11, 0x0

    goto :goto_0

    .line 1312
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 69
    :cond_5
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 71
    .local v9, "uri":Landroid/net/Uri;
    const-string/jumbo v11, "dd_wx_android_os_ver"

    invoke-virtual {v9, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "osVerStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    if-nez v11, :cond_6

    .line 74
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 75
    .local v6, "osVerInt":I
    if-lez v6, :cond_6

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ge v11, v6, :cond_6

    .line 76
    const/4 v11, 0x0

    goto :goto_0

    .line 78
    .end local v6    # "osVerInt":I
    :catch_0
    move-exception v8

    .line 79
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_6
    const-string/jumbo v11, "dd_wx_android_tpl"

    invoke-virtual {v9, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "androidTplUrl":Ljava/lang/String;
    const-string/jumbo v11, "dd_wx_tpl"

    invoke-virtual {v9, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, "wxTplUrl":Ljava/lang/String;
    const-string/jumbo v11, "_wx_tpl"

    invoke-virtual {v9, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "commonTplUrl":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 92
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 95
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    invoke-static {v11}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "currentVer":Ljava/lang/String;
    const-string/jumbo v11, "dd_wx_ver"

    invoke-virtual {v9, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "minVer":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-static {v3, v5}, Lhgy;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_8

    .line 99
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 102
    :cond_8
    const-string/jumbo v11, "dd_wx_android_ver"

    invoke-virtual {v9, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "androidMinVer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-static {v3, v0}, Lhgy;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_9

    .line 104
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 107
    :cond_9
    invoke-static {}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->init()V

    .line 110
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isSupport()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    goto/16 :goto_0

    .line 112
    .end local v0    # "androidMinVer":Ljava/lang/String;
    .end local v1    # "androidTplUrl":Ljava/lang/String;
    .end local v2    # "commonTplUrl":Ljava/lang/String;
    .end local v3    # "currentVer":Ljava/lang/String;
    .end local v5    # "minVer":Ljava/lang/String;
    .end local v7    # "osVerStr":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "wxTplUrl":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 115
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v3

    .line 127
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 128
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "_wx_devtool"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "devtool":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    invoke-static {}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->init()V

    .line 131
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->startDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v3, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "devtool":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "originalUrl"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string/jumbo v3, ""

    .line 146
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 147
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 148
    .local v5, "uri":Landroid/net/Uri;
    const-string/jumbo v6, "dd_wx_android_tpl"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "androidTplUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 150
    move-object v3, v0

    .line 167
    .end local v0    # "androidTplUrl":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v3

    .line 152
    .restart local v0    # "androidTplUrl":Ljava/lang/String;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v6, "dd_wx_tpl"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "tplUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 154
    move-object v3, v4

    goto :goto_0

    .line 156
    :cond_2
    const-string/jumbo v6, "_wx_tpl"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "commonTplUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 158
    move-object v3, v1

    goto :goto_0

    .line 163
    .end local v0    # "androidTplUrl":Ljava/lang/String;
    .end local v1    # "commonTplUrl":Ljava/lang/String;
    .end local v4    # "tplUrl":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 172
    sget-boolean v4, Lcic;->a:Z

    if-eqz v4, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v3

    .line 177
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 178
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, ".alicdn.com"

    .line 180
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, ".taobao.com"

    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, ".alibaba.com"

    .line 182
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, ".1688.com"

    .line 183
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, ".tmall.com"

    .line 184
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 192
    .end local v0    # "host":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "originalUrl"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p0}, Lhgy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "bundleUrl":Ljava/lang/String;
    move-object v1, v0

    .line 205
    .local v1, "domainUrl":Ljava/lang/String;
    invoke-static {v0}, Lhgy;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    move-object v1, p0

    .line 209
    :cond_0
    return-object v1
.end method
