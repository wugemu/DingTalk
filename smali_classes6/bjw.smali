.class public Lbjw;
.super Ljava/lang/Object;
.source "DingNotificationCenter.java"


# static fields
.field private static volatile b:Lbjw;


# instance fields
.field public a:Z

.field private c:Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbjw;->a:Z

    .line 50
    return-void
.end method

.method public static a()Lbjw;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lbjw;->b:Lbjw;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Lbjw;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lbjw;->b:Lbjw;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lbjw;

    invoke-direct {v0}, Lbjw;-><init>()V

    sput-object v0, Lbjw;->b:Lbjw;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Lbjw;->b:Lbjw;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbjw;)Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;
    .locals 1
    .param p0, "x0"    # Lbjw;

    .prologue
    .line 34
    iget-object v0, p0, Lbjw;->c:Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    return-object v0
.end method

.method static synthetic a(Lbjw;Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;)Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;
    .locals 0
    .param p0, "x0"    # Lbjw;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    .prologue
    .line 34
    iput-object p1, p0, Lbjw;->c:Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    return-object p1
.end method

.method static synthetic a(Lbjw;Lcom/alibaba/android/ding/base/objects/CommentObject;)Ljava/lang/String;
    .locals 7
    .param p0, "x0"    # Lbjw;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/CommentObject;

    .prologue
    const/16 v6, 0x32

    const/4 v5, 0x0

    .line 34
    .line 1440
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 1442
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 1444
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Laxp$i;->ding_comment_notification_tip:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1445
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/CommentContent;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    sget-object v3, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    if-ne v0, v3, :cond_2

    .line 1446
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1448
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    check-cast v0, Layz;

    .line 1449
    if-eqz v1, :cond_1

    .line 1450
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1452
    :cond_1
    iget-object v3, v0, Layz;->a:Ljava/lang/String;

    iget-object v0, v0, Layz;->g:Ljava/util/Map;

    invoke-static {v3, v0}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1453
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1462
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/CommentContent;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    sget-object v3, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Audio:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    if-ne v0, v3, :cond_4

    .line 1464
    if-eqz v1, :cond_3

    .line 1465
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1467
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxp$i;->ding_comment_notification_audio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1469
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1470
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_5

    .line 1471
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const/4 v0, 0x1

    const-string/jumbo v2, "..."

    aput-object v2, v1, v0

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_5
    return-object v0

    .line 1456
    :cond_6
    if-eqz v1, :cond_7

    .line 1457
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1459
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v3, Laxp$i;->dt_ding_new_attachment_comment_notification:I

    invoke-virtual {v0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;
    .locals 14
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/16 v13, 0x32

    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 392
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v5

    .line 393
    .local v5, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-nez v5, :cond_1

    const-string/jumbo v4, ""

    .line 396
    .local v4, "nick":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v8

    if-nez v8, :cond_2

    .line 397
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Laxp$i;->ding_notification_unknown:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 436
    :cond_0
    :goto_1
    return-object v1

    .line 395
    .end local v4    # "nick":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-static {v8, v9, v6}, Lbka;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 399
    .restart local v4    # "nick":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 400
    .local v1, "dingContent":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getContentType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    move-result-object v8

    sget-object v9, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    if-ne v8, v9, :cond_4

    move v2, v6

    .line 401
    .local v2, "isAudioDing":Z
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getContentType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    move-result-object v8

    sget-object v9, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    if-ne v8, v9, :cond_5

    move v3, v6

    .line 403
    .local v3, "isTextDing":Z
    :goto_3
    if-eqz v3, :cond_b

    .line 404
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .line 405
    .local v0, "contentText":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    .line 406
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Laxp$i;->ding_notification_unknown:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .end local v0    # "contentText":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    .end local v2    # "isAudioDing":Z
    .end local v3    # "isTextDing":Z
    :cond_4
    move v2, v7

    .line 400
    goto :goto_2

    .restart local v2    # "isAudioDing":Z
    :cond_5
    move v3, v7

    .line 401
    goto :goto_3

    .line 408
    .restart local v0    # "contentText":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    .restart local v3    # "isTextDing":Z
    :cond_6
    invoke-static {p0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 410
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laxp$i;->ding_notification_meeting_text:I

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .end local v0    # "contentText":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    :cond_7
    :goto_4
    if-nez v1, :cond_e

    .line 431
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Laxp$i;->ding_notification_unknown:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 411
    .restart local v0    # "contentText":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    :cond_8
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 413
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 414
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ai()Z

    move-result v8

    if-eqz v8, :cond_9

    sget v8, Laxp$i;->dt_ding_readonly_ding_from_at_text_at:I

    :goto_5
    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 413
    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 414
    :cond_9
    sget v8, Laxp$i;->ding_notification_task_text:I

    goto :goto_5

    .line 415
    :cond_a
    invoke-static {p0}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 417
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laxp$i;->ding_notification_text:I

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 419
    .end local v0    # "contentText":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    :cond_b
    if-eqz v2, :cond_7

    .line 420
    invoke-static {p0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 422
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 423
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ai()Z

    move-result v8

    if-eqz v8, :cond_c

    sget v8, Laxp$i;->dt_ding_readonly_ding_from_at_audio:I

    :goto_6
    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v7

    .line 422
    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 423
    :cond_c
    sget v8, Laxp$i;->dt_ding_notification_task_audio:I

    goto :goto_6

    .line 424
    :cond_d
    invoke-static {p0}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 426
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laxp$i;->ding_notification_audio:I

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 433
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v13, :cond_0

    .line 434
    new-array v8, v12, [Ljava/lang/String;

    invoke-virtual {v1, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const-string/jumbo v7, "..."

    aput-object v7, v8, v6

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lbjw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lbjw;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 34
    invoke-virtual/range {p0 .. p5}, Lbjw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static a(I)Z
    .locals 2
    .param p0, "pushType"    # I

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "isShowed":Z
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 385
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportMIUIPush(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportHuaweiPush(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    :cond_0
    const/4 v0, 0x1

    .line 388
    :cond_1
    return v0
.end method

.method static synthetic a(Lbjw;I)Z
    .locals 1
    .param p0, "x0"    # Lbjw;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-static {p1}, Lbjw;->a(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "dingId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "onlyBackground"    # Z
    .param p5, "isSilent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lbjw;->c:Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    if-eqz p4, :cond_2

    iget-boolean v0, p0, Lbjw;->a:Z

    if-nez v0, :cond_0

    .line 100
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v0, Lbjw$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbjw$3;-><init>(Lbjw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
