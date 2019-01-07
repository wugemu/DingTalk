.class public final Lhou;
.super Ljava/lang/Object;
.source "RuntimeNavigator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x4

    const/4 v1, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 32
    if-nez p1, :cond_1

    .line 33
    const-string/jumbo v0, "RuntimeNavigator"

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "open"

    aput-object v3, v1, v10

    const-string/jumbo v3, "bundle == null"

    aput-object v3, v1, v11

    .line 1082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16498
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 37
    :cond_1
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v0, "RuntimeNavigator"

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "RuntimeNavigator open"

    aput-object v4, v3, v10

    const-string/jumbo v4, "url = "

    aput-object v4, v3, v11

    aput-object v2, v3, v12

    .line 2082
    const-string/jumbo v4, "mini_task"

    invoke-static {v4, v0, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "hybrid_enable_replace_corpid_holder"

    invoke-static {v0, v11}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, "currentCorpId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0, v2, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v7    # "currentCorpId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "miniapp_open_disable"

    invoke-static {v0, v10}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    const-string/jumbo v0, "RuntimeNavigator"

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "open"

    aput-object v3, v1, v10

    const-string/jumbo v3, "CLOUD_SETTING_DISABLE_MINIAPP Hit"

    aput-object v3, v1, v11

    .line 3082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-static {p0, p1}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 58
    :cond_3
    invoke-static {v2}, Lhmn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    const-string/jumbo v0, "RuntimeNavigator"

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "open"

    aput-object v3, v1, v10

    const-string/jumbo v3, "DebugInstruction.handle(url)"

    aput-object v3, v1, v11

    .line 4082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 63
    :cond_4
    invoke-static {p0, v2}, Lcom/alibaba/lightapp/runtime/weex/WMLUrlHandler;->handle(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    const-string/jumbo v0, "RuntimeNavigator"

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "WeexUrlHandler handled:"

    aput-object v3, v1, v10

    aput-object v2, v1, v11

    .line 5082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 68
    :cond_5
    invoke-static {v2}, Lhou;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6055
    if-nez p1, :cond_6

    .line 6056
    const-string/jumbo v0, "RuntimeNavigator2"

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "open"

    aput-object v3, v1, v10

    const-string/jumbo v3, "bundle == null"

    aput-object v3, v1, v11

    .line 7082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6060
    :cond_6
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6061
    const-string/jumbo v3, "RuntimeNavigator2"

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "RuntimeNavigator2 open"

    aput-object v5, v4, v10

    const-string/jumbo v5, "url = "

    aput-object v5, v4, v11

    aput-object v0, v4, v12

    .line 8082
    const-string/jumbo v5, "mini_task"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6062
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6066
    const-string/jumbo v3, "miniapp_open_disable"

    invoke-static {v3, v10}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6067
    const-string/jumbo v0, "RuntimeNavigator2"

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "open"

    aput-object v3, v1, v10

    const-string/jumbo v3, "CLOUD_SETTING_DISABLE_MINIAPP Hit"

    aput-object v3, v1, v11

    .line 9082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6068
    invoke-static {p0, p1}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 6072
    :cond_7
    invoke-static {v0}, Lhmn;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6073
    const-string/jumbo v0, "RuntimeNavigator2"

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "open"

    aput-object v3, v1, v10

    const-string/jumbo v3, "DebugInstruction.handle(url)"

    aput-object v3, v1, v11

    .line 10082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6078
    :cond_8
    invoke-static {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/WMLUrlHandler;->handle(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6079
    const-string/jumbo v1, "RuntimeNavigator2"

    new-array v3, v12, [Ljava/lang/Object;

    const-string/jumbo v4, "WeexUrlHandler handled:"

    aput-object v4, v3, v10

    aput-object v0, v3, v11

    .line 11082
    const-string/jumbo v0, "mini_task"

    invoke-static {v0, v1, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6084
    :cond_9
    new-instance v3, Lhoz;

    invoke-direct {v3}, Lhoz;-><init>()V

    .line 6085
    invoke-static {v0}, Lhoz;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    move-result-object v3

    .line 6086
    if-nez v3, :cond_a

    .line 6087
    invoke-static {p0, p1}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 6088
    const-string/jumbo v3, "RuntimeNavigator2"

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "parseUrl in RuntimeNavigator2"

    aput-object v4, v1, v10

    const-string/jumbo v4, "baseParseUrlResult is null and originUrl= "

    aput-object v4, v1, v11

    aput-object v0, v1, v12

    .line 12082
    const-string/jumbo v0, "mini_task"

    invoke-static {v0, v3, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6092
    :cond_a
    iget-object v4, v3, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->ddVersion:Ljava/lang/String;

    .line 6093
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 6094
    invoke-static {p0}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 6095
    invoke-static {v4, v5}, Lhon;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 6096
    invoke-static {p0, p1}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 6097
    const-string/jumbo v0, "RuntimeNavigator2"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "handleMiniAppUrl"

    aput-object v6, v3, v10

    const-string/jumbo v6, "ddversion is greater than currentVersion, ddVersion= "

    aput-object v6, v3, v11

    aput-object v4, v3, v12

    const-string/jumbo v4, "and currentVersion is: "

    aput-object v4, v3, v1

    aput-object v5, v3, v13

    .line 13082
    const-string/jumbo v1, "mini_task"

    invoke-static {v1, v0, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6103
    :cond_b
    invoke-static {v0}, Lhow;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 6105
    const-string/jumbo v6, "navi_to_open_mini_app"

    invoke-virtual {p1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6108
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 6109
    const/4 v0, 0x0

    .line 6110
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 6111
    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    .line 6112
    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 6113
    const/4 v0, 0x0

    .line 6114
    const-string/jumbo v6, "mini_app_scheme"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 6115
    const-string/jumbo v0, "mini_app_scheme"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6120
    :cond_c
    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6125
    :cond_d
    :goto_2
    if-eqz v0, :cond_12

    .line 6126
    const-string/jumbo v4, "pVersion"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6127
    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Lhon;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 6128
    const-string/jumbo v0, "RuntimeNavigator2"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v5, "handleMiniAppUrl"

    aput-object v5, v1, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "protocolVersion is greater than currentVersion, protocolVersion= "

    aput-object v5, v1, v3

    const/4 v3, 0x2

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "and currentVersion is: "

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "1"

    aput-object v4, v1, v3

    .line 14082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6130
    invoke-static {p0, p1}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6174
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 6175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6176
    const-string/jumbo v1, "RuntimeNavigator2"

    new-array v3, v12, [Ljava/lang/Object;

    const-string/jumbo v4, "parseUrl in RuntimeNavigator2 occurs error: "

    aput-object v4, v3, v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v11

    .line 16082
    const-string/jumbo v0, "mini_task"

    invoke-static {v0, v1, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6177
    invoke-static {p0, p1}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 6116
    .restart local v2    # "url":Ljava/lang/String;
    :cond_e
    :try_start_1
    const-string/jumbo v6, "micro_app_scheme"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 6117
    const-string/jumbo v0, "micro_app_scheme"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 6122
    :cond_f
    const-string/jumbo v5, "dingtalk"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object v0, v4

    .line 6123
    goto :goto_2

    .line 6134
    :cond_10
    const-string/jumbo v5, "packageType"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6135
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6136
    .end local v2    # "url":Ljava/lang/String;
    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_11
    :goto_3
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 6142
    :pswitch_1
    const-string/jumbo v0, "RuntimeNavigator2"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v13

    new-instance v0, Lhov$1;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lhov$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v13, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6136
    :pswitch_2
    const-string/jumbo v1, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v0, v10

    goto :goto_3

    :pswitch_3
    const-string/jumbo v1, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v0, v11

    goto :goto_3

    :pswitch_4
    const-string/jumbo v1, "2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v0, v12

    goto :goto_3

    :pswitch_5
    const-string/jumbo v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v0, v1

    goto :goto_3

    .line 6160
    :pswitch_6
    const-string/jumbo v0, "RuntimeNavigator2"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v13

    new-instance v0, Lhov$2;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lhov$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v13, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6170
    .restart local v2    # "url":Ljava/lang/String;
    :cond_12
    const-string/jumbo v0, "RuntimeNavigator2"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "parse dingtalkuri is null "

    aput-object v4, v1, v3

    .line 15082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6171
    invoke-static {p0, p1}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 73
    :cond_13
    invoke-static {v2}, Lhow;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 75
    .local v8, "navigationStartTime":J
    const-string/jumbo v0, "navi_to_open_mini_app"

    invoke-virtual {p1, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 76
    invoke-static {}, Lhlt;->a()Lhlt;

    move-result-object v1

    new-instance v3, Lhou$1;

    invoke-direct {v3, p1, p0}, Lhou$1;-><init>(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 16493
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 16495
    const/16 v0, 0x193

    invoke-virtual {v1, v0, v2}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v0

    invoke-interface {v3, v0}, Lhlt$a;->a(Lhlt$b;)V

    .line 16497
    const-string/jumbo v0, "MiniappRuntime"

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "handleMiniAppUrl"

    aput-object v3, v1, v10

    const-string/jumbo v3, "url == null"

    aput-object v3, v1, v11

    .line 17082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 16500
    :cond_14
    const-string/jumbo v0, "MiniappRuntime"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Lhlt$3;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lhlt$3;-><init>(Lhlt;Ljava/lang/String;Lhlt$a;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6136
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 137
    :goto_0
    return v8

    .line 100
    :cond_0
    const/4 v3, 0x0

    .line 102
    .local v3, "enableRuntimeNavigator2":Z
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 103
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_4

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "dingtalkUri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "scheme":Ljava/lang/String;
    const-string/jumbo v9, "dingtalk"

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 107
    move-object v0, v7

    .line 114
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    .line 116
    .local v4, "params":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_4

    .line 117
    const-string/jumbo v9, "pVersion"

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "packageType"

    .line 118
    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 120
    const-string/jumbo v9, "source"

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 121
    const-string/jumbo v9, "source"

    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "source":Ljava/lang/String;
    const-string/jumbo v9, "debug"

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "trial"

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 123
    :cond_2
    const/4 v3, 0x1

    .line 127
    .end local v6    # "source":Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_4

    .line 128
    const-string/jumbo v9, "CLOUD_SETTING_DISABLE_CLEAR_WEBVIEW_TASK"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v3, 0x1

    .end local v0    # "dingtalkUri":Landroid/net/Uri;
    .end local v4    # "params":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_2
    move v8, v3

    .line 137
    goto :goto_0

    .line 109
    .restart local v0    # "dingtalkUri":Landroid/net/Uri;
    .restart local v5    # "scheme":Ljava/lang/String;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v9, "mini_app_scheme"

    invoke-virtual {v7, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "dingtalkUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 111
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .end local v1    # "dingtalkUrl":Ljava/lang/String;
    .restart local v4    # "params":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    move v3, v8

    .line 128
    goto :goto_2

    .line 134
    .end local v0    # "dingtalkUri":Landroid/net/Uri;
    .end local v4    # "params":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
