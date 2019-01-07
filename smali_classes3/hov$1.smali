.class final Lhov$1;
.super Ljava/lang/Object;
.source "RuntimeNavigator2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lhov$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lhov$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lhov$1;->c:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iput-object p4, p0, Lhov$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lhov$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lhov$1;->f:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 145
    new-instance v1, Lhox;

    invoke-direct {v1}, Lhox;-><init>()V

    iget-object v4, p0, Lhov$1;->a:Landroid/content/Context;

    iget-object v0, p0, Lhov$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lhov$1;->c:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iget-object v3, p0, Lhov$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lhov$1;->e:Ljava/lang/String;

    iget-object v6, p0, Lhov$1;->f:Landroid/os/Bundle;

    invoke-static {v0, v2, v3, v5, v6}, Lhov;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    move-result-object v2

    new-instance v5, Lhov$1$1;

    invoke-direct {v5, p0}, Lhov$1$1;-><init>(Lhov$1;)V

    .line 1071
    iget-object v3, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->miniAppId:Ljava/lang/String;

    .line 1072
    iget-object v0, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAppType:Ljava/lang/String;

    .line 1074
    const-string/jumbo v6, "org"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1075
    iget-object v0, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddCorpId:Ljava/lang/String;

    .line 1076
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 1077
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v8

    .line 1079
    if-eqz v8, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1081
    :cond_0
    const/16 v0, 0x192

    const-string/jumbo v1, "https://tms.dingtalk.com/markets/dingtalk/no-permission-miniapp?wh_ttid=phone&errortype=noOrg"

    invoke-static {v0, v1}, Lhox;->a(ILjava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;

    move-result-object v0

    invoke-interface {v5, v0}, Lhot;->a(Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;)V

    .line 1084
    :try_start_0
    const-string/jumbo v0, "AlipayHandleUrlImpl"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "AlipayHandleUrlImpl handleUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "org is wrong"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "orgId = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 1085
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "orgIdList = "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {v8}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    :goto_0
    return-void

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1092
    :cond_1
    iget-object v6, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAppId:Ljava/lang/String;

    .line 1093
    iget-object v7, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAgentId:Ljava/lang/String;

    .line 1095
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v8

    invoke-virtual {v8, v0, v6, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1097
    const-string/jumbo v1, "https://tms.dingtalk.com/markets/dingtalk/no-permission-miniapp?wh_ttid=phone&errortype=noApp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1098
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1099
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1100
    const-string/jumbo v2, "agentId"

    invoke-virtual {v1, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1102
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1103
    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1105
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1106
    const-string/jumbo v2, "corpId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1108
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1109
    const/16 v2, 0x191

    invoke-static {v2, v1}, Lhox;->a(ILjava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;

    move-result-object v1

    invoke-interface {v5, v1}, Lhot;->a(Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;)V

    .line 1111
    const-string/jumbo v1, "AlipayHandleUrlImpl"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "AlipayHandleUrlImpl handleUrl"

    aput-object v3, v2, v10

    const-string/jumbo v3, "app not bind"

    aput-object v3, v2, v11

    const-string/jumbo v3, "corpId = "

    aput-object v3, v2, v12

    aput-object v0, v2, v13

    const-string/jumbo v0, "appId = "

    aput-object v0, v2, v14

    const/4 v0, 0x5

    aput-object v6, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v3, "agentId = "

    aput-object v3, v2, v0

    const/4 v0, 0x7

    aput-object v7, v2, v0

    .line 3082
    const-string/jumbo v0, "mini_task"

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1116
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1118
    iget-object v0, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddFallbackUrl:Ljava/lang/String;

    .line 1119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    if-eqz v1, :cond_6

    .line 1120
    iget-object v0, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->originUrl:Ljava/lang/String;

    .line 1122
    :cond_6
    const/16 v1, 0x195

    invoke-static {v1, v0}, Lhox;->a(ILjava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;

    move-result-object v0

    invoke-interface {v5, v0}, Lhot;->a(Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;)V

    .line 1124
    const-string/jumbo v0, "AlipayHandleUrlImpl"

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v2, "AlipayHandleUrlImpl handleUrl"

    aput-object v2, v1, v10

    const-string/jumbo v2, "miniappId is null"

    aput-object v2, v1, v11

    .line 4082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1130
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1131
    iget-object v0, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    if-eqz v0, :cond_8

    .line 1132
    const/16 v0, 0x194

    iget-object v1, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->commonParseUrlResult:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;->originUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lhox;->a(ILjava/lang/String;)Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;

    move-result-object v0

    invoke-interface {v5, v0}, Lhot;->a(Lcom/alibaba/lightapp/runtime/nav/model/HandleUrlResult;)V

    .line 1134
    :cond_8
    const-string/jumbo v0, "AlipayHandleUrlImpl"

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v2, "handleMiniAppUrl"

    aput-object v2, v1, v10

    const-string/jumbo v2, "miniAppId == null"

    aput-object v2, v1, v11

    .line 5082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1138
    :cond_9
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v6

    new-instance v0, Lhox$1;

    invoke-direct/range {v0 .. v5}, Lhox$1;-><init>(Lhox;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Landroid/content/Context;Lhot;)V

    invoke-virtual {v6, v0}, Lcaa;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
