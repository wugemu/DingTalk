.class public final Ldjm;
.super Ljava/lang/Object;
.source "DingUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IILjava/util/List;J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .locals 5
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "bizType"    # I
    .param p3, "remindType"    # I
    .param p5, "seed"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/Message;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo;"
        }
    .end annotation

    .prologue
    .line 282
    .local p4, "atUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 283
    .local v0, "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v1

    const/4 v2, 0x2

    .line 284
    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v1

    const-string/jumbo v2, "im"

    .line 285
    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->i(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 287
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->h(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 289
    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 291
    :cond_0
    if-eqz p1, :cond_1

    .line 292
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 293
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 295
    :cond_1
    invoke-virtual {v0, p3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 296
    invoke-virtual {v0, p5, p6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->g(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 2922
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 298
    return-object v1
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;ILjava/util/List;J)V
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # J

    .prologue
    .line 49
    invoke-static/range {p0 .. p6}, Ldjm;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;ILjava/util/List;J)V

    return-void
.end method

.method static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZLjava/util/List;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "which"    # I
    .param p4, "ignorePrevent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/Message;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p5, "receiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 517
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 4277
    :cond_0
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    invoke-static/range {v1 .. v7}, Ldjm;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IILjava/util/List;J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-result-object v8

    .line 520
    .local v8, "dingCreateInfo":Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v6

    new-instance v0, Ldjm$11;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Ldjm$11;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;ILjava/util/List;)V

    const-class v1, Lcma;

    .line 523
    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 520
    invoke-virtual {v6, p0, v8, p4, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;ZLcma;)V

    .line 559
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Ljava/util/List;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p3, "receiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-static {p1}, Lddq;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    .line 445
    .local v1, "isSingleChat":Z
    if-eqz v1, :cond_2

    .line 446
    const-string/jumbo v2, "chat_single_unread_click"

    invoke-static {v2}, Lcps;->a(Ljava/lang/String;)V

    .line 450
    :goto_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4068
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-static {p1}, Libb;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    .line 451
    if-eqz v2, :cond_3

    .line 452
    sget v2, Lctk$i;->dt_message_to_ding_title_no_phone:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 453
    sget v2, Lctk$b;->message_to_ding_remind_type_no_phone:I

    new-instance v3, Ldjm$8;

    invoke-direct {v3, p0, p1, p2, p3}, Ldjm$8;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 471
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ldjm$10;

    invoke-direct {v3, v1}, Ldjm$10;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 448
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_2
    const-string/jumbo v2, "chat_unread_user_ding"

    invoke-static {v2}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 462
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_3
    sget v2, Lctk$i;->dt_message_to_ding_title:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 463
    sget v2, Lctk$b;->message_to_ding_remind_type:I

    new-instance v3, Ldjm$9;

    invoke-direct {v3, p0, p1, p2, p3}, Ldjm$9;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Z)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "doSuicide"    # Z

    .prologue
    .line 304
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 309
    .local v0, "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    invoke-static {p1}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v1

    .line 310
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->h(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    move-result-object v1

    .line 311
    invoke-virtual {v1, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 313
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    .line 3922
    iget-object v3, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 313
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Ldjm$6;

    invoke-direct {v4, p3, p0}, Ldjm$6;-><init>(ZLandroid/app/Activity;)V

    const-class v5, Lcma;

    .line 314
    invoke-interface {v1, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 313
    invoke-virtual {v2, p0, v3, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "remindTimeMinute"    # Ljava/lang/String;

    .prologue
    .line 669
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 670
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lctk$i;->dt_message_to_ding_not_remind_title_AT:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 671
    sget v1, Lctk$i;->dt_common_i_know:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 672
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 673
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;JZZ)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "messageId"    # J
    .param p4, "isSendDing"    # Z
    .param p5, "doSuicide"    # Z

    .prologue
    .line 353
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    .line 358
    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Ldjm$7;

    const/4 v6, 0x1

    move-wide v2, p2

    move v4, p4

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Ldjm$7;-><init>(JZLandroid/app/Activity;Z)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v2, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Ldjm;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;J)V

    .line 133
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "bizType"    # I
    .param p4, "doSuicide"    # Z

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Ldjm;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZJ)V

    .line 156
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZJ)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "bizType"    # I
    .param p4, "doSuicide"    # Z
    .param p5, "seed"    # J

    .prologue
    .line 165
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v2, p0

    .line 166
    check-cast v2, Landroid/app/Activity;

    .line 167
    .local v2, "activity":Landroid/app/Activity;
    invoke-static {p2}, Ldkc;->A(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    new-instance v1, Ldjm$5;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide/from16 v6, p5

    move v8, p4

    invoke-direct/range {v1 .. v8}, Ldjm$5;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IJZ)V

    const-class v0, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->getMembers(Lcom/alibaba/wukong/Callback;)V

    .line 210
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 1242
    .restart local v2    # "activity":Landroid/app/Activity;
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    if-eqz p2, :cond_3

    .line 1244
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v0

    .line 1245
    if-eqz v0, :cond_3

    .line 1246
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1247
    if-eqz v0, :cond_2

    .line 1248
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .local v7, "atUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    move-object v3, p0

    .line 204
    check-cast v3, Landroid/app/Activity;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide/from16 v8, p5

    invoke-static/range {v3 .. v9}, Ldjm;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;ILjava/util/List;J)V

    .line 205
    if-eqz p4, :cond_0

    .line 206
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "seed"    # J

    .prologue
    .line 136
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, p3

    invoke-static/range {v1 .. v7}, Ldjm;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZJ)V

    .line 137
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "doSuicide"    # Z

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Ldjm;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZ)V

    .line 122
    return-void
.end method

.method private static b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;ILjava/util/List;J)V
    .locals 9
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "bizType"    # I
    .param p5, "seed"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/Message;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p4, "atUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-wide v6, p5

    .line 2237
    invoke-static/range {v1 .. v7}, Ldjm;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IILjava/util/List;J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-result-object v0

    .line 2238
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    .line 227
    return-void
.end method

.method static synthetic b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZLjava/util/List;)V
    .locals 9
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/util/List;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 49
    const/4 v4, 0x0

    .line 4486
    invoke-static {p1}, Lddq;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    .line 4487
    invoke-static/range {v0 .. v5}, Ldjm;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZLjava/util/List;)V

    .line 4489
    if-eqz v6, :cond_3

    .line 4490
    if-nez p3, :cond_1

    .line 4491
    const-string/jumbo v0, "chat_single_unread_ding_call"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 4502
    :cond_0
    :goto_0
    return-void

    .line 4492
    :cond_1
    if-ne p3, v7, :cond_2

    .line 4493
    const-string/jumbo v0, "chat_single_unread_ding_sms"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4494
    :cond_2
    if-ne p3, v8, :cond_0

    .line 4495
    const-string/jumbo v0, "chat_single_unread_ding_app"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4499
    :cond_3
    if-nez p3, :cond_4

    .line 4500
    const-string/jumbo v0, "chat_group_unread_ding_call"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4501
    :cond_4
    if-ne p3, v7, :cond_5

    .line 4502
    const-string/jumbo v0, "chat_group_unread_ding_sms"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4503
    :cond_5
    if-ne p3, v8, :cond_0

    .line 4504
    const-string/jumbo v0, "chat_group_unread_ding_app"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 147
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Ldjm;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;IZ)V

    .line 148
    return-void
.end method
