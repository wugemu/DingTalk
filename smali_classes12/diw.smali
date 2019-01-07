.class public final Ldiw;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLcma;)V
    .locals 2
    .param p0, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Ldiw$9;

    invoke-direct {v1, p2, p0, p1}, Ldiw$9;-><init>(Lcma;J)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 324
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V
    .locals 22
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 335
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const-string/jumbo v4, "calendarId"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 343
    const-string/jumbo v4, "calendarId"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1109
    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 344
    .local v6, "calendarId":J
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    .line 348
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v8, Lctk$g;->dialog_message_later_remind:I

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 349
    .local v10, "dialogView":Landroid/view/View;
    sget v4, Lctk$f;->tv_title:I

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1404
    .local v12, "tvTitle":Landroid/widget/TextView;
    const-wide/16 v8, 0x0

    .line 1405
    const-string/jumbo v4, "schedule_remind_time"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1406
    const-string/jumbo v4, "schedule_remind_time"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2109
    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1409
    :cond_2
    invoke-static {}, Lcms;->u()J

    move-result-wide v14

    invoke-static {v14, v15, v8, v9}, Lcog;->c(JJ)I

    move-result v4

    .line 1410
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1411
    invoke-static {}, Lcms;->u()J

    move-result-wide v14

    sub-long v14, v8, v14

    .line 1412
    const-wide/32 v16, 0x36ee80

    cmp-long v16, v14, v16

    if-gez v16, :cond_4

    .line 1413
    const-wide/32 v8, 0xea60

    div-long v8, v14, v8

    .line 1414
    const-wide/16 v16, 0x0

    cmp-long v4, v8, v16

    if-nez v4, :cond_3

    .line 1415
    sget v4, Lctk$i;->dt_im_remind_later_actionsheet_title_minute:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget v16, Lctk$i;->dt_ding_second_AT:I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-wide/16 v20, 0x3e8

    div-long v14, v14, v20

    .line 1416
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v17, v18

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v9

    .line 1415
    invoke-virtual {v13, v4, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 351
    .local v11, "title":Ljava/lang/String;
    :goto_1
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .local v5, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v4, Lctk$f;->tv_modify:I

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v8, Ldiw$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v8, v5, v0, v1, v2}, Ldiw$10;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    sget v4, Lctk$f;->tv_cancel:I

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v4, Ldiw$11;

    move-object/from16 v8, p2

    move-object/from16 v9, p0

    invoke-direct/range {v4 .. v9}, Ldiw$11;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;JLcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    invoke-virtual {v13, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    invoke-virtual {v5, v10}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 1418
    .end local v5    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v11    # "title":Ljava/lang/String;
    :cond_3
    sget v4, Lctk$i;->dt_im_remind_later_actionsheet_title_minute:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v15

    invoke-virtual {v13, v4, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1419
    :cond_4
    const-wide/32 v16, 0xa4cb80

    cmp-long v16, v14, v16

    if-gez v16, :cond_7

    .line 1421
    const-wide/32 v8, 0xea60

    div-long v8, v14, v8

    long-to-int v4, v8

    .line 1422
    div-int/lit8 v8, v4, 0x3c

    .line 1423
    rem-int/lit8 v4, v4, 0x3c

    .line 1424
    if-nez v8, :cond_5

    if-lez v4, :cond_5

    .line 1425
    sget v8, Lctk$i;->dt_im_remind_later_actionsheet_title_minute:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v14

    invoke-virtual {v13, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1426
    :cond_5
    if-lez v8, :cond_6

    if-nez v4, :cond_6

    .line 1427
    sget v4, Lctk$i;->dt_im_remind_later_actionsheet_title_hour:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v14

    invoke-virtual {v13, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1429
    :cond_6
    sget v9, Lctk$i;->dt_im_remind_later_actionsheet_title_hour_minute:I

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v15

    const/4 v8, 0x1

    .line 1430
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v8

    .line 1429
    invoke-virtual {v13, v9, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1431
    :cond_7
    if-nez v4, :cond_8

    .line 1432
    sget v4, Lctk$i;->dt_im_remind_later_actionsheet_title_today:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8, v9}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v15

    invoke-virtual {v13, v4, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1433
    :cond_8
    const/4 v14, 0x1

    if-ne v4, v14, :cond_9

    .line 1434
    sget v4, Lctk$i;->dt_im_remind_later_actionsheet_title_tomorrow:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8, v9}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v15

    invoke-virtual {v13, v4, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1435
    :cond_9
    const/4 v14, 0x2

    if-ne v4, v14, :cond_a

    .line 1436
    sget v4, Lctk$i;->dt_im_remind_later_actionsheet_title_acquired:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8, v9}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v15

    invoke-virtual {v13, v4, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1438
    :cond_a
    sget v4, Lctk$i;->dt_im_remind_later_actionsheet_title_year:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8, v9}, Lcog;->t(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v15

    invoke-virtual {v13, v4, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;J)V
    .locals 7
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "x3"    # J

    .prologue
    .line 42
    .line 3219
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JZ)V

    .line 3220
    const-string/jumbo v0, "chat_later_edit_click"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JZ)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "startTimeMillis"    # J
    .param p5, "isModify"    # Z

    .prologue
    .line 224
    invoke-static/range {p1 .. p4}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->fromMessage(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;J)Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    move-result-object v2

    .line 225
    .local v2, "scheduleCreateModel":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
    if-nez v2, :cond_0

    .line 251
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v10

    new-instance v1, Ldiw$7;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Ldiw$7;-><init>(Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JZ)V

    const-class v0, Lcma;

    invoke-static {v1, v0, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v10, v11, v0}, Ldiw;->a(JLcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "remindView"    # Lpl/droidsonroids/gif/GifImageView;

    .prologue
    const/16 v6, 0x8

    .line 451
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->privateTag()J

    move-result-wide v2

    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->d:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 456
    const-wide/16 v0, 0x0

    .line 457
    .local v0, "preRemindTime":J
    const-string/jumbo v2, "schedule_remind_time"

    invoke-interface {p1, v2}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 458
    const-string/jumbo v2, "schedule_remind_time"

    invoke-interface {p1, v2}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 461
    :cond_2
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 462
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    .line 463
    sget v2, Lctk$e;->im_ding_remind:I

    invoke-virtual {p2, v2}, Lpl/droidsonroids/gif/GifImageView;->setImageResource(I)V

    .line 464
    new-instance v2, Ldiw$3;

    invoke-direct {v2, p0, p1}, Ldiw$3;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {p2, v2}, Lpl/droidsonroids/gif/GifImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 476
    :cond_3
    invoke-virtual {p2, v6}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    goto :goto_0

    .line 480
    .end local v0    # "preRemindTime":J
    :cond_4
    invoke-virtual {p2, v6}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    goto :goto_0
.end method
