.class public final Lbjv;
.super Ljava/lang/Object;
.source "DingNavUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1137
    const/4 v2, 0x7

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "dingtalk://dingtalkclient/action/open_mini_app?miniAppId="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "2018111662191713"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "&ddMode=push"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "&keepAlive=false"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "&mainTask=true"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "&page="

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "page/create/index"

    const-string/jumbo v5, "UTF-8"

    .line 1143
    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1137
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1144
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "[DingNavUtil]nav2ECreateTask failed:"

    aput-object v3, v2, v6

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;III)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "index"    # I
    .param p2, "totalUnreadCount"    # I
    .param p3, "totalCommentRemindCount"    # I

    .prologue
    .line 742
    if-nez p0, :cond_0

    .line 755
    :goto_0
    return-void

    .line 745
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/notify_center"

    new-instance v2, Lbjv$10;

    invoke-direct {v2, p1, p2, p3}, Lbjv$10;-><init>(III)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;IIZLjava/util/ArrayList;Ljava/lang/String;J)V
    .locals 10
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "remindModeIndex"    # I
    .param p2, "remindType"    # I
    .param p3, "showRemindType"    # Z
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "timeStamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "IIZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 946
    .local p4, "remindTypeResIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 962
    :goto_0
    return-void

    .line 950
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v9, "https://qr.dingtalk.com/ding/ding_event_select_remind"

    new-instance v1, Lbjv$17;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    move-wide/from16 v6, p6

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lbjv$17;-><init>(IIZLjava/lang/String;JLjava/util/ArrayList;)V

    invoke-interface {v0, v9, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;J)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uid"    # J

    .prologue
    .line 550
    if-nez p0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 556
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "senderId"    # J
    .param p3, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 560
    if-nez p0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 563
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 564
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 565
    .local v1, "bundleExtras":Landroid/os/Bundle;
    const-string/jumbo v2, "ding_sender_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 566
    const-string/jumbo v2, "webview_extras"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 567
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;J)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "repeatFrequency"    # Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    .param p2, "timeStamp"    # J

    .prologue
    .line 1004
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string/jumbo v8, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v8}, Lbjv;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;JJJLjava/lang/String;)V

    .line 1005
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;JJJLjava/lang/String;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "repeatFrequency"    # Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    .param p2, "timeStamp"    # J
    .param p4, "startTime"    # J
    .param p6, "deadlineDate"    # J
    .param p8, "from"    # Ljava/lang/String;

    .prologue
    .line 1009
    if-nez p0, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 1012
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v9

    const-string/jumbo v10, "https://qr.dingtalk.com/ding/ding_select_repeat_frequency"

    new-instance v0, Lbjv$20;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lbjv$20;-><init>(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;JJJLjava/lang/String;)V

    invoke-interface {v9, v10, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "selectUserParams"    # Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    if-nez p0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    if-eqz p1, :cond_3

    .line 1232
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1236
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isFromSpaceFileUnread()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1240
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getBizType()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    .line 1244
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getUserIdentityObjectUids()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1245
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getUserIdentityObjectUids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1249
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isCanSendToAll()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1250
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isHasRecentDing()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 261
    :goto_1
    if-eqz v0, :cond_5

    .line 1269
    if-eqz p0, :cond_0

    .line 1272
    if-nez p1, :cond_4

    .line 1273
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "[nav2DingRecentUserPageV2] params is null"

    aput-object v1, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1250
    goto :goto_1

    .line 1276
    :cond_4
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/recent_v2"

    new-instance v2, Lbjv$24;

    invoke-direct {v2, p1}, Lbjv$24;-><init>(Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 264
    :cond_5
    invoke-static {p0, p1}, Lbjv;->b(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dingId"    # Ljava/lang/String;

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/meeting_sender_check_in"

    new-instance v2, Lbjv$1;

    invoke-direct {v2, p1}, Lbjv$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/util/ArrayList;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "actionFlag"    # Ljava/lang/String;
    .param p3, "chooseLimitCount"    # I
    .param p4, "chooseLimitTip"    # Ljava/lang/String;
    .param p5, "direct2Group"    # Z
    .param p6, "chooseMode"    # I
    .param p8, "contactChooseCallback"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p7, "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 349
    if-nez p0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    .line 353
    .local v2, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 354
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    invoke-virtual {v0, p6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 355
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 356
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 357
    invoke-virtual {v0, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 358
    invoke-virtual {v0, p4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 359
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 360
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 361
    invoke-virtual {v0, p7}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 362
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->d(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 363
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->h(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 368
    if-eqz p8, :cond_1

    .line 369
    invoke-virtual {v0, p8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 372
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 373
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "intent_key_contact_choose_request"

    .line 2053
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 373
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 374
    invoke-virtual {v2, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "datas"    # [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p2, "current"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p3, "showOriginBtn"    # Z
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 585
    if-nez p0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 588
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .param p2, "flags"    # I

    .prologue
    .line 790
    if-nez p0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 793
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isMeeting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2895
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Landroid/os/Bundle;)V

    goto :goto_0

    .line 798
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 799
    .local v0, "newBundle":Landroid/os/Bundle;
    if-eqz p1, :cond_2

    .line 800
    const-string/jumbo v1, "intent_key_create_ding_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 802
    :cond_2
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    .line 3140
    const-string/jumbo v2, "https://qr.dingtalk.com/ding/create_v2"

    .line 802
    new-instance v3, Lbjv$13;

    invoke-direct {v3, v0, p2}, Lbjv$13;-><init>(Landroid/os/Bundle;I)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dingCreateInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 899
    .line 4906
    if-eqz p0, :cond_0

    .line 4909
    if-nez p1, :cond_1

    .line 4910
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "[DingNavUtil]to create page, dingCreateInfo null"

    aput-object v1, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 4915
    :cond_0
    :goto_0
    return-void

    .line 4913
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isMeeting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4914
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "[DingNavUtil]to create page, not meeting"

    aput-object v1, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 4917
    :cond_2
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/ding_create_event"

    new-instance v2, Lbjv$16;

    invoke-direct {v2, p2, p1, v3}, Lbjv$16;-><init>(Landroid/os/Bundle;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 144
    if-nez p0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dingId"    # Ljava/lang/String;
    .param p2, "bizType"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "clearTop"    # Z

    .prologue
    .line 465
    if-nez p0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    invoke-static {}, Lbjq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "nav2DingDetailPage, ding id is null:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_2
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 2136
    const-string/jumbo v1, "https://qr.dingtalk.com/page/ding"

    .line 474
    new-instance v2, Lbjv$2;

    invoke-direct {v2, p1, p2, p3, p4}, Lbjv$2;-><init>(Ljava/lang/String;ILandroid/os/Bundle;Z)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dingId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "clearTop"    # Z

    .prologue
    const/4 v4, 0x1

    .line 429
    if-nez p0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    invoke-static {}, Lbjq;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "nav2DingDetailPage, ding id is null:"

    aput-object v3, v1, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_2
    new-instance v0, Lbjv$28;

    invoke-direct {v0, p0, p1, p2, v4}, Lbjv$28;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 461
    .local v0, "callback":Lcma;, "Lcma<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lbbp;->c(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;J)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "startTime"    # J

    .prologue
    .line 867
    if-nez p0, :cond_0

    .line 874
    :goto_0
    return-void

    .line 870
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 871
    .local v0, "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 872
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 3922
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 4895
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dingSelectUserParams"    # Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .prologue
    .line 288
    if-nez p0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 291
    :cond_0
    if-nez p1, :cond_1

    .line 292
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[nav2DingSelectUserPageV2] params is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/selected_users_v2"

    new-instance v2, Lbjv$25;

    invoke-direct {v2, p1}, Lbjv$25;-><init>(Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 592
    if-nez p0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 595
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 596
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "completed_back_to_target_action"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string/jumbo v2, "album_single"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 598
    const-string/jumbo v2, "album_choose_num"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    const-string/jumbo v2, "album_need_preview"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 600
    const-string/jumbo v2, "album_need_crop"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 601
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    .line 602
    .local v1, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 606
    if-nez p0, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0
.end method
