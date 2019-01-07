.class public Lexd;
.super Lexb;
.source "CallApmtConfRecordPresenter.java"


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private q:Lcjo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lexd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexd;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lexa$b;)V
    .locals 4
    .param p1, "view"    # Lexa$b;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lexb;-><init>(Lexa$b;)V

    .line 64
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lexd$1;

    invoke-direct {v1, p0}, Lexd$1;-><init>(Lexd;)V

    const-class v2, Lcjo$a;

    iget-object v3, p0, Lexd;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjo$a;

    iput-object v0, p0, Lexd;->q:Lcjo$a;

    .line 110
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v1, p0, Lexd;->q:Lcjo$a;

    invoke-virtual {v0, v1}, Leyn;->a(Lcjo$a;)V

    .line 111
    return-void
.end method

.method static synthetic a(Lexd;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lexd;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    .line 1492
    iget-object v0, p0, Lexd;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    invoke-static {}, Lewx;->a()Z

    move-result v1

    .line 1497
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v0, p0, Lexd;->b:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1499
    if-eqz v1, :cond_1

    .line 1501
    sget v0, Leuj$l;->dt_conference_create_audio_conf:I

    .line 1506
    :goto_0
    invoke-virtual {v2, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1507
    new-instance v3, Lexd$7;

    invoke-direct {v3, p0, v2, p1, v1}, Lexd$7;-><init>(Lexd;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Ljava/util/List;Z)V

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1519
    sget v0, Leuj$l;->login_cancel:I

    new-instance v1, Lexd$8;

    invoke-direct {v1, p0, v2}, Lexd$8;-><init>(Lexd;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1526
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1527
    if-eqz v0, :cond_0

    .line 1528
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 1530
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_apmtconf_no_privilege_alert"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 50
    :cond_0
    return-void

    .line 1504
    :cond_1
    sget v0, Leuj$l;->dt_conference_create_video_conf:I

    goto :goto_0
.end method

.method static synthetic a(Lexd;Ljava/util/List;Z)V
    .locals 5
    .param p0, "x0"    # Lexd;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 50
    .line 1539
    iget-object v0, p0, Lexd;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1558
    :goto_0
    return-void

    .line 1542
    :cond_0
    if-eqz p1, :cond_3

    .line 1543
    if-eqz p2, :cond_1

    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1544
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1545
    const-string/jumbo v1, "conf_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1546
    iget-object v1, p0, Lexd;->b:Landroid/app/Activity;

    invoke-static {v1, p1, v0}, Lewb;->b(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1548
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1549
    const-string/jumbo v1, "isFromService"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1550
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "conf_caller"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    const-string/jumbo v1, "conf_video_to_user_type"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1552
    const-string/jumbo v1, "conf_video_auto"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1553
    const-string/jumbo v1, "conf_video_3g_remind_flag"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1554
    if-eqz p2, :cond_2

    .line 1555
    const-string/jumbo v1, "conf_video_camera_status"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1557
    :cond_2
    iget-object v1, p0, Lexd;->b:Landroid/app/Activity;

    invoke-static {v1, p1, v0}, Lewb;->c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1560
    :cond_3
    iget-object v0, p0, Lexd;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lexd;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 422
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lexd;->p:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Create the conf now "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;-><init>()V

    .line 428
    .local v0, "createModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->callerId:Ljava/lang/Long;

    .line 429
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->callerNick:Ljava/lang/String;

    .line 430
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->calleeIds:Ljava/util/List;

    .line 431
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 432
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v2, :cond_2

    .line 435
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 438
    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->calleeIds:Ljava/util/List;

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 441
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->startTime:Ljava/lang/Long;

    .line 442
    const-wide/16 v4, 0x708

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->duration:Ljava/lang/Long;

    .line 444
    iget-object v3, p0, Lexd;->b:Landroid/app/Activity;

    sget v4, Leuj$l;->conf_txt_conference_theme_input_hint:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "theme":Ljava/lang/String;
    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->title:Ljava/lang/String;

    .line 446
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->orgId:Ljava/lang/Long;

    .line 449
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->enableDing:Ljava/lang/Boolean;

    .line 451
    invoke-static {}, Leye;->a()Leye;

    move-result-object v4

    const-string/jumbo v3, "EVENTBUTLER"

    .line 452
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lexd$6;

    invoke-direct {v5, p0, p1}, Lexd$6;-><init>(Lexd;Ljava/util/List;)V

    const-class v6, Leyo$c;

    iget-object v7, p0, Lexd;->b:Landroid/app/Activity;

    invoke-interface {v3, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leyo$c;

    .line 451
    invoke-virtual {v4, v0, v3}, Leye;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;Leyo$c;)V

    goto/16 :goto_0
.end method

.method public final b(Z)V
    .locals 7
    .param p1, "isRefresh"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 115
    const/4 v2, 0x0

    invoke-static {v2}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    sget v2, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 188
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v2, p0, Lexd;->d:Ljava/util/List;

    if-nez v2, :cond_2

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lexd;->d:Ljava/util/List;

    .line 125
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lexd;->l:Z

    .line 126
    iget-object v2, p0, Lexd;->a:Lexa$b;

    invoke-interface {v2}, Lexa$b;->b()V

    .line 128
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lexd;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Loading running records from schedule page, size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lexd;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;-><init>()V

    .line 130
    .local v1, "pullModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->userId:Ljava/lang/Long;

    .line 131
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->type:Ljava/lang/Integer;

    .line 132
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->count:Ljava/lang/Integer;

    .line 133
    iget-object v2, p0, Lexd;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 134
    iget-object v2, p0, Lexd;->d:Ljava/util/List;

    iget-object v3, p0, Lexd;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 135
    .local v0, "lastRecord":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    iget-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->recentTs:Ljava/lang/Long;

    .line 139
    .end local v0    # "lastRecord":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    :goto_2
    invoke-static {}, Leye;->a()Leye;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    .line 140
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lexd$2;

    invoke-direct {v4, p0}, Lexd$2;-><init>(Lexd;)V

    const-class v5, Leyo$e;

    iget-object v6, p0, Lexd;->b:Landroid/app/Activity;

    invoke-interface {v2, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leyo$e;

    .line 139
    invoke-virtual {v3, v1, v2}, Leye;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;Leyo$e;)V

    goto/16 :goto_0

    .line 121
    .end local v1    # "pullModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    :cond_2
    if-eqz p1, :cond_1

    .line 122
    iget-object v2, p0, Lexd;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    .line 137
    .restart local v1    # "pullModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    :cond_3
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->recentTs:Ljava/lang/Long;

    goto :goto_2
.end method

.method public final c(Z)V
    .locals 7
    .param p1, "isRefresh"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 192
    const/4 v2, 0x0

    invoke-static {v2}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    sget v2, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 264
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v2, p0, Lexd;->e:Ljava/util/List;

    if-nez v2, :cond_2

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lexd;->e:Ljava/util/List;

    .line 201
    :cond_1
    :goto_1
    iput-boolean v6, p0, Lexd;->m:Z

    .line 202
    iget-object v2, p0, Lexd;->a:Lexa$b;

    invoke-interface {v2}, Lexa$b;->b()V

    .line 204
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lexd;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Loading order records from schedule page, size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lexd;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;-><init>()V

    .line 206
    .local v1, "pullModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->userId:Ljava/lang/Long;

    .line 207
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->type:Ljava/lang/Integer;

    .line 208
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->count:Ljava/lang/Integer;

    .line 209
    iget-object v2, p0, Lexd;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 210
    iget-object v2, p0, Lexd;->e:Ljava/util/List;

    iget-object v3, p0, Lexd;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 211
    .local v0, "lastRecord":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    iget-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->recentTs:Ljava/lang/Long;

    .line 215
    .end local v0    # "lastRecord":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    :goto_2
    invoke-static {}, Leye;->a()Leye;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    .line 216
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lexd$3;

    invoke-direct {v4, p0}, Lexd$3;-><init>(Lexd;)V

    const-class v5, Leyo$e;

    iget-object v6, p0, Lexd;->b:Landroid/app/Activity;

    invoke-interface {v2, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leyo$e;

    .line 215
    invoke-virtual {v3, v1, v2}, Leye;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;Leyo$e;)V

    goto/16 :goto_0

    .line 198
    .end local v1    # "pullModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    :cond_2
    if-eqz p1, :cond_1

    .line 199
    iget-object v2, p0, Lexd;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    .line 213
    .restart local v1    # "pullModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    :cond_3
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->recentTs:Ljava/lang/Long;

    goto :goto_2
.end method

.method public final d(Z)V
    .locals 7
    .param p1, "isRefresh"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 268
    const/4 v2, 0x0

    invoke-static {v2}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    sget v2, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 341
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v2, p0, Lexd;->g:Ljava/util/List;

    if-nez v2, :cond_2

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lexd;->g:Ljava/util/List;

    .line 277
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lexd;->o:Z

    .line 278
    iget-object v2, p0, Lexd;->a:Lexa$b;

    invoke-interface {v2}, Lexa$b;->b()V

    .line 280
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lexd;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Loading ended records from schedule page, size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lexd;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;-><init>()V

    .line 282
    .local v1, "pullModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->userId:Ljava/lang/Long;

    .line 283
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->type:Ljava/lang/Integer;

    .line 284
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->count:Ljava/lang/Integer;

    .line 285
    iget-object v2, p0, Lexd;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 286
    iget-object v2, p0, Lexd;->g:Ljava/util/List;

    iget-object v3, p0, Lexd;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 287
    .local v0, "lastRecord":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    iget-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->recentTs:Ljava/lang/Long;

    .line 291
    .end local v0    # "lastRecord":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    :goto_2
    invoke-static {}, Leye;->a()Leye;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    .line 292
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lexd$4;

    invoke-direct {v4, p0}, Lexd$4;-><init>(Lexd;)V

    const-class v5, Leyo$e;

    iget-object v6, p0, Lexd;->b:Landroid/app/Activity;

    invoke-interface {v2, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leyo$e;

    .line 291
    invoke-virtual {v3, v1, v2}, Leye;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;Leyo$e;)V

    goto/16 :goto_0

    .line 274
    .end local v1    # "pullModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    :cond_2
    if-eqz p1, :cond_1

    .line 275
    iget-object v2, p0, Lexd;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    .line 289
    .restart local v1    # "pullModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    :cond_3
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->recentTs:Ljava/lang/Long;

    goto :goto_2
.end method

.method public final e(Z)V
    .locals 7
    .param p1, "isRefresh"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 345
    const/4 v2, 0x0

    invoke-static {v2}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 346
    sget v2, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 418
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v2, p0, Lexd;->f:Ljava/util/List;

    if-nez v2, :cond_2

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lexd;->f:Ljava/util/List;

    .line 354
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lexd;->n:Z

    .line 355
    iget-object v2, p0, Lexd;->a:Lexa$b;

    invoke-interface {v2}, Lexa$b;->b()V

    .line 357
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lexd;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Loading canceled records from schedule page, size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lexd;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;-><init>()V

    .line 359
    .local v1, "pullModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->userId:Ljava/lang/Long;

    .line 360
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->type:Ljava/lang/Integer;

    .line 361
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->count:Ljava/lang/Integer;

    .line 362
    iget-object v2, p0, Lexd;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 363
    iget-object v2, p0, Lexd;->f:Ljava/util/List;

    iget-object v3, p0, Lexd;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 364
    .local v0, "lastRecord":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    iget-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->recentTs:Ljava/lang/Long;

    .line 368
    .end local v0    # "lastRecord":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    :goto_2
    invoke-static {}, Leye;->a()Leye;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    .line 369
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lexd$5;

    invoke-direct {v4, p0}, Lexd$5;-><init>(Lexd;)V

    const-class v5, Leyo$e;

    iget-object v6, p0, Lexd;->b:Landroid/app/Activity;

    invoke-interface {v2, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leyo$e;

    .line 368
    invoke-virtual {v3, v1, v2}, Leye;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;Leyo$e;)V

    goto/16 :goto_0

    .line 351
    .end local v1    # "pullModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    :cond_2
    if-eqz p1, :cond_1

    .line 352
    iget-object v2, p0, Lexd;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    .line 366
    .restart local v1    # "pullModel":Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;
    :cond_3
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;->recentTs:Ljava/lang/Long;

    goto :goto_2
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 576
    iget-object v0, p0, Lexd;->q:Lcjo$a;

    if-eqz v0, :cond_0

    .line 577
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v1, p0, Lexd;->q:Lcjo$a;

    invoke-virtual {v0, v1}, Leyn;->b(Lcjo$a;)V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lexd;->q:Lcjo$a;

    .line 580
    :cond_0
    return-void
.end method
