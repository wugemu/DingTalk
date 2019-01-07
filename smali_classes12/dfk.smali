.class public final Ldfk;
.super Ljava/lang/Object;
.source "SvcGrpPresenter.java"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lcom/alibaba/wukong/im/Conversation;

.field final c:J

.field public d:Z

.field public e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;J)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "menuSeed"    # J

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Ldfk;->a:Landroid/app/Activity;

    .line 81
    iput-object p2, p0, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 82
    iput-wide p3, p0, Ldfk;->c:J

    .line 83
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 62
    .line 4322
    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 4323
    check-cast p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 4324
    .end local p0    # "x0":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 62
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 307
    invoke-static {p1}, Ldfm;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 309
    .local v0, "targetUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 312
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcov;)V
    .locals 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcov",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p2, "listener":Lcov;, "Lcov<Ljava/lang/Void;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 2063
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 271
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    .line 272
    .local v4, "msgId":J
    if-nez v0, :cond_2

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "msgId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", conversation = null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldfk;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1315
    :cond_2
    instance-of v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_3

    move-object v1, p0

    .line 1316
    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1317
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 277
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, "cid":Ljava/lang/String;
    const-string/jumbo v1, "svc_grp_problem_feedback"

    invoke-interface {p1, v1}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "actionType":Ljava/lang/String;
    invoke-static {}, Ldfn;->a()Ldfn;

    move-result-object v8

    new-instance v9, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v10

    new-instance v1, Ldfk$2;

    move-object v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v7}, Ldfk$2;-><init>(Landroid/app/Activity;Lcov;JLjava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcma;

    invoke-interface {v10, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 2047
    new-instance v2, Ldfn$3;

    invoke-direct {v2, v8, v1}, Ldfn$3;-><init>(Ldfn;Lcma;)V

    .line 2052
    const-class v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/service/IDLCustomerGroupService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/service/IDLCustomerGroupService;

    .line 2059
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->getMsgId()J

    move-result-wide v10

    .line 2060
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->getCid()Ljava/lang/String;

    move-result-object v3

    .line 2061
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->getActionType()Ljava/lang/String;

    move-result-object v8

    .line 2062
    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2063
    :cond_4
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v3, "invalid params for msgActionRequestObject, msgId, cid or actionType"

    .line 3033
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v3, v8}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2065
    :cond_5
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/MsgActionRequestObject;->toIdl()Ldfq;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/service/IDLCustomerGroupService;->doMsgAction(Ldfq;Liyv;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_1

    .line 390
    const-string/jumbo v0, "SvcGrpPresenter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "SvcGrpPresenter"

    invoke-static {v0, v1, p0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 3364
    invoke-static {}, Ldfm;->a()Z

    move-result v0

    .line 373
    if-eqz v0, :cond_0

    invoke-static {p0}, Ldjl;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 329
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/service_group_answers"

    new-instance v2, Ldfk$3;

    invoke-direct {v2, p1}, Ldfk$3;-><init>(Lcom/alibaba/wukong/im/Message;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
