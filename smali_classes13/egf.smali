.class public final Legf;
.super Ljava/lang/Object;
.source "EnterPriseNavigatorMananger.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    const-string/jumbo v1, "$"

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Legf;->a:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "$CORPID$"

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Legf;->b:Ljava/lang/String;

    .line 64
    const-string/jumbo v1, "$CORPID$"

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Legf;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void

    .line 65
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 66
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    return-void
.end method

.method public static a(Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->corpId:Ljava/lang/String;

    invoke-static {v0, v1}, Legf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 95
    const/4 v2, 0x0

    .line 99
    :goto_0
    return-object v2

    .line 97
    :cond_0
    invoke-static {}, Leeh;->b()Leeg;

    move-result-object v2

    invoke-interface {v2}, Leeg;->a()Z

    move-result v0

    .line 98
    .local v0, "enabled":Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->rawHomepage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->rawHomepage:Ljava/lang/String;

    .line 99
    .local v1, "rawUrl":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {v1, v2}, Legf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 98
    .end local v1    # "rawUrl":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->homepage:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "rawUrl"    # Ljava/lang/String;
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Leeh;->b()Leeg;

    move-result-object v3

    invoke-interface {v3}, Leeg;->a()Z

    move-result v1

    .line 122
    .local v1, "enabled":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, p0

    .line 139
    :goto_0
    return-object v2

    .line 126
    :cond_1
    move-object v2, p0

    .line 129
    .local v2, "richUrl":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_oa_replace_corpid_enable_encode_twice"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    sget-object v3, Legf;->c:Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 133
    :cond_2
    sget-object v3, Legf;->b:Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string/jumbo v3, "\\$CORPID\\$"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;J)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "senderId"    # J

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-static {}, Leel;->f()Leek;

    move-result-object v8

    .line 207
    .local v8, "oaDatasource":Leek;
    if-eqz v8, :cond_3

    .line 208
    invoke-interface {v8}, Leek;->a()Ljava/util/List;

    move-result-object v10

    .line 209
    .local v10, "orgMicroAPPModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    const-string/jumbo v1, ""

    .line 210
    .local v1, "homePage":Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 213
    .local v9, "orgMicroAPPModel":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    iget-object v7, v9, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    .line 214
    .local v7, "microAPPs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v7, :cond_0

    .line 215
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 216
    .local v6, "microAPP":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    iget-wide v4, v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->senderUid:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 217
    invoke-static {v6}, Legf;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v1

    .end local v6    # "microAPP":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v7    # "microAPPs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v9    # "orgMicroAPPModel":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 224
    invoke-static/range {v0 .. v5}, Legf;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V

    .line 226
    .end local v1    # "homePage":Ljava/lang/String;
    .end local v10    # "orgMicroAPPModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    :cond_3
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;)V
    .locals 7
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "toUrl"    # Ljava/lang/String;
    .param p2, "reWriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Legf;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 436
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 437
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 439
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0xc0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 440
    .local v0, "activityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 441
    const-string/jumbo v5, "NAVIGATOR"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v5, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v5

    invoke-interface {v5, p1, v6, p2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0

    .line 443
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 444
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string/jumbo v5, "title"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string/jumbo v5, "from_work_stat"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V
    .locals 7
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "toUrl"    # Ljava/lang/String;
    .param p2, "reWriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .param p5, "corpid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Legf;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 384
    :cond_0
    invoke-static {}, Legi;->a()Legi;

    invoke-static {p5}, Legi;->a(Ljava/lang/String;)Legi;

    move-result-object v1

    sget-object v2, Legi;->c:Ljava/lang/String;

    sget-object v3, Legi;->d:Ljava/lang/String;

    invoke-virtual {v1, p4, p1, v2, v3}, Legi;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_1
    :goto_0
    return-void

    .line 389
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "csconfig_enable_open_miniapp"

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 391
    .local v0, "enableOpenMiniApp":Z
    if-eqz p4, :cond_4

    iget-object v1, p4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppIdV2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->miniAppId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 392
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-wide v2, p4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    .line 393
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->wrapperMicroMiniAppUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1401
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Legf;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1405
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1406
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1407
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1408
    const v1, 0x10008000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1409
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1410
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1411
    const/16 v3, 0xc0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1412
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1413
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1414
    invoke-static {}, Legi;->a()Legi;

    invoke-static {p5}, Legi;->a(Ljava/lang/String;)Legi;

    move-result-object v1

    sget-object v2, Legi;->c:Ljava/lang/String;

    sget-object v3, Legi;->d:Ljava/lang/String;

    invoke-virtual {v1, p4, p1, v2, v3}, Legi;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_5
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    sget-object v2, Legi;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v6}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->motuCommitStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1420
    :cond_6
    invoke-static {}, Legi;->a()Legi;

    invoke-static {p5}, Legi;->a(Ljava/lang/String;)Legi;

    move-result-object v1

    sget-object v2, Legi;->c:Ljava/lang/String;

    sget-object v3, Legi;->d:Ljava/lang/String;

    invoke-virtual {v1, p4, p1, v2, v3}, Legi;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1423
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 356
    invoke-static {p1}, Legf;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1365
    sget v2, Ledz$h;->version_low:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Ledz$h;->sure:I

    new-instance v4, Legf$2;

    invoke-direct {v4, p0}, Legf$2;-><init>(Landroid/app/Activity;)V

    .line 1366
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Ledz$h;->cancel:I

    new-instance v4, Legf$1;

    invoke-direct {v4}, Legf$1;-><init>()V

    .line 1372
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1378
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 358
    const/4 v0, 0x0

    .line 360
    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6
    .param p0, "rawUrl"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 71
    invoke-static {}, Leeh;->b()Leeg;

    move-result-object v3

    invoke-interface {v3}, Leeg;->a()Z

    move-result v0

    .line 72
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 84
    :cond_1
    :goto_0
    return v1

    .line 76
    :cond_2
    const-string/jumbo v3, "\\$"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-gt v3, v5, :cond_1

    .line 81
    sget-object v3, Legf;->a:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-gt v3, v5, :cond_1

    move v1, v2

    .line 84
    goto :goto_0
.end method
