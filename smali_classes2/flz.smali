.class public final Lflz;
.super Ljava/lang/Object;
.source "UserNavigator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ac()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const-string/jumbo v0, "https://qr.dingtalk.com/user/profile.html"

    .line 401
    .local v0, "targetPageSchema":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 398
    .end local v0    # "targetPageSchema":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "https://qr.dingtalk.com/user/old_profile.html"

    .restart local v0    # "targetPageSchema":Ljava/lang/String;
    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 408
    if-nez p0, :cond_0

    .line 409
    const-string/jumbo v0, "UserNavigator"

    const-string/jumbo v1, "nav2NameCardEditPage, activity == null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    const-string/jumbo v1, "contact"

    const-string/jumbo v2, "bizcard_edit_by_e_enable"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    const-string/jumbo v0, ""

    const-string/jumbo v1, "pages/cardmanage/cardmanage"

    const-string/jumbo v2, "2018112662280156"

    invoke-static {p0, v0, v1, v2}, Lflz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_1
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/edit_namecard.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;JI)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orgId"    # J
    .param p3, "tag"    # I

    .prologue
    .line 169
    if-nez p0, :cond_0

    .line 170
    const-string/jumbo v0, "UserNavigator"

    const-string/jumbo v1, "nav2OrgDisbandNoticePage, activity == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org/disband_notice.html"

    new-instance v2, Lflz$9;

    invoke-direct {v2, p1, p2, p3}, Lflz$9;-><init>(JI)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 183
    sget v0, Lezg$a;->slide_in_up:I

    sget v1, Lezg$a;->slide_out_down:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "friendUid"    # J
    .param p3, "source"    # I
    .param p4, "sourceTitle"    # Ljava/lang/String;
    .param p5, "searchKey"    # Ljava/lang/String;

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    const-string/jumbo v0, "UserNavigator"

    const-string/jumbo v1, "nav2SendFriendRequestPage, activity == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v7, "https://qr.dingtalk.com/page/sendfriendrequest"

    new-instance v1, Lflz$8;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lflz$8;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orgId"    # J
    .param p3, "orgName"    # Ljava/lang/String;
    .param p4, "industryCode"    # Ljava/lang/String;
    .param p5, "isPersonalUser"    # Z
    .param p6, "jumpUrl"    # Ljava/lang/String;
    .param p7, "minMemberCount"    # I

    .prologue
    .line 212
    if-nez p0, :cond_0

    .line 213
    const-string/jumbo v0, "UserNavigator"

    const-string/jumbo v1, "nav2AddMembersUnderCreateOrgV4, activity == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v9, "https://qr.dingtalk.com/org/create_org_v4_add_members.html"

    new-instance v1, Lflz$11;

    move-wide v2, p1

    move-object v4, p3

    move/from16 v5, p5

    move-object v6, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lflz$11;-><init>(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v9, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "forbiddenAddFriend"    # Z

    .prologue
    const/4 v4, 0x0

    .line 337
    if-nez p0, :cond_0

    .line 338
    const-string/jumbo v2, "UserNavigator"

    const-string/jumbo v3, "nav2UserProfilePage, activity == null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :goto_0
    return-void

    .line 342
    :cond_0
    if-nez p1, :cond_1

    .line 343
    const-string/jumbo v2, "UserNavigator"

    const-string/jumbo v3, "nav2UserProfilePage, userProfileObject == null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 347
    :cond_1
    iget v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 348
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v2, p0, v4, v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;J)V

    goto :goto_0

    .line 351
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 352
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "uid="

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "profile_one_user_enter"

    invoke-interface {v2, v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 355
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "targetSchema":Ljava/lang/String;
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    new-instance v3, Lflz$3;

    invoke-direct {v3, p1, p2}, Lflz$3;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V

    invoke-interface {v2, v1, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ZLjava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "isLocalContact"    # Z
    .param p3, "localName"    # Ljava/lang/String;

    .prologue
    .line 114
    if-nez p0, :cond_0

    .line 115
    const-string/jumbo v0, "UserNavigator"

    const-string/jumbo v1, "nav2SetAliasPage, activity == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/set_alias.html"

    new-instance v2, Lflz$7;

    invoke-direct {v2, p1, p2, p3}, Lflz$7;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ZLjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/user/model/SWPersonObject;Z)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "swPersonObject"    # Lcom/alibaba/android/user/model/SWPersonObject;
    .param p2, "isNewVersion"    # Z

    .prologue
    .line 373
    if-nez p0, :cond_0

    .line 374
    const-string/jumbo v0, "UserNavigator"

    const-string/jumbo v1, "nav2MyInfoPage, activity == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :goto_0
    return-void

    .line 378
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 379
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/my_profile.html"

    new-instance v2, Lflz$4;

    invoke-direct {v2, p1, p2}, Lflz$4;-><init>(Lcom/alibaba/android/user/model/SWPersonObject;Z)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 256
    if-nez p0, :cond_0

    .line 257
    const-string/jumbo v0, "UserNavigator"

    const-string/jumbo v1, "nav2SelectOrgIndustryPage, activity == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/no_login_webview.html"

    new-instance v2, Lflz$2;

    invoke-direct {v2, p1, p2}, Lflz$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "thirdPartyUserId"    # Ljava/lang/String;
    .param p4, "phone"    # Ljava/lang/String;
    .param p5, "areaCode"    # Ljava/lang/String;
    .param p6, "target"    # Ljava/lang/String;

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const-string/jumbo v0, "UserNavigator"

    const-string/jumbo v1, "navToVerifyPage, activity == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v7

    const-string/jumbo v8, "https://qr.dingtalk.com/login_verify.html"

    new-instance v0, Lflz$1;

    move-object v1, p5

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object v5, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lflz$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .prologue
    .line 290
    if-nez p0, :cond_0

    .line 291
    const-string/jumbo v4, "UserNavigator"

    const-string/jumbo v5, "openZProjectEAppWithInMainTask, context == null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :goto_0
    return-void

    .line 294
    :cond_0
    move-object v3, p1

    .line 296
    .local v3, "encodeQuery":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 297
    const-string/jumbo v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 303
    :cond_1
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 305
    .local v1, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v4, "dingtalk://dingtalkclient/action/open_mini_app?miniAppId="

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 306
    invoke-virtual {v4, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&page="

    .line 307
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 308
    invoke-virtual {v4, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&mainTask=true&keepAlive=false"

    .line 309
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&ddMode="

    .line 310
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "push"

    .line 311
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&query="

    .line 312
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 313
    invoke-virtual {v4, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 315
    const-string/jumbo v4, "url"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 299
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_0
    move-exception v2

    .line 300
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
