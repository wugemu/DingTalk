.class public Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "RobotSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lctl$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

.field private c:J

.field private d:Landroid/widget/ToggleButton;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ToggleButton;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private n:Landroid/view/ViewGroup;

.field private o:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

.field private p:Lctl;

.field private q:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private r:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 92
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->q:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 104
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->o:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Landroid/text/Editable;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;
    .param p1, "x1"    # Landroid/text/Editable;

    .prologue
    .line 71
    .line 5389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5390
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botId:J

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5391
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->icon:Ljava/lang/String;

    .line 5454
    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$2;

    invoke-direct {v6, p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Ljava/lang/String;)V

    .line 5478
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->showLoadingDialog()V

    .line 5479
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    .line 5481
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v7, Lcma;

    .line 5482
    invoke-interface {v0, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 5479
    invoke-interface/range {v1 .. v6}, Ldxu;->a(JLjava/lang/String;Ljava/lang/String;Lcma;)V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    .line 4486
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Z)V

    .line 4510
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->showLoadingDialog()V

    .line 4512
    if-eqz p1, :cond_1

    .line 4513
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botId:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 4515
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    .line 4516
    invoke-interface {v0, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4513
    invoke-interface {v2, v4, v5, v0}, Ldxu;->d(JLcma;)V

    .line 4524
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4525
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->i()Ljava/lang/String;

    move-result-object v0

    .line 4526
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4527
    const-string/jumbo v2, "ding_group_id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4529
    :cond_0
    const-string/jumbo v0, "bots_template_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->templateId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4530
    const-string/jumbo v0, "bots_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4531
    const-string/jumbo v2, "enable"

    if-eqz p1, :cond_2

    const-string/jumbo v0, "true"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4533
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "im_bot_setting_enable_switch_click"

    invoke-interface {v0, v2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    return-void

    .line 4518
    :cond_1
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botId:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 4520
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    .line 4521
    invoke-interface {v0, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4518
    invoke-interface {v2, v4, v5, v0}, Ldxu;->c(JLcma;)V

    goto :goto_0

    .line 4531
    :cond_2
    const-string/jumbo v0, "false"

    goto :goto_1
.end method

.method private a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 618
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 619
    const-string/jumbo v4, "cronTimeHour"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 621
    .local v2, "pushTimeHour":Ljava/lang/String;
    const-string/jumbo v4, "cronTimeMinute"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 624
    .local v3, "pushTimeMin":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->i:Landroid/widget/TextView;

    .line 625
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 624
    invoke-static {v5, v6}, Ldkc;->a(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    const-string/jumbo v4, "weatherAlarmEvent"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 635
    .local v0, "alarm":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->l:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 636
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->l:Landroid/widget/ToggleButton;

    const-string/jumbo v5, "1"

    .line 637
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 636
    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 638
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->l:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->q:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 640
    const-string/jumbo v4, "locationId"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 643
    .local v1, "locationId":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->h:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->p:Lctl;

    invoke-virtual {v5, v1}, Lctl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    .end local v0    # "alarm":Ljava/lang/String;
    .end local v1    # "locationId":Ljava/lang/String;
    .end local v2    # "pushTimeHour":Ljava/lang/String;
    .end local v3    # "pushTimeMin":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v2    # "pushTimeHour":Ljava/lang/String;
    .restart local v3    # "pushTimeMin":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .param p1, "started"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->d:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->d:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 268
    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->f:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_robot_status_run:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->f:Landroid/widget/TextView;

    sget v1, Lctk$e;->bg_robot_setting_status_running:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->f:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_robot_status_stop:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->f:Landroid/widget/TextView;

    sget v1, Lctk$e;->bg_robot_setting_status_stopped:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Lctl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->p:Lctl;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .param p1, "pageEvent"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 677
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    :goto_0
    return-void

    .line 680
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 681
    .local v1, "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->i()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "conversationId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 683
    const-string/jumbo v2, "ding_group_id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v2, :cond_2

    .line 686
    const-string/jumbo v2, "bots_template_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->templateId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string/jumbo v2, "bots_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->n:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 127
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->o:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->o:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botId:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mRobotId:J

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->extension:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->o:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->extension:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mExtension:Ljava/util/Map;

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->o:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mIcon:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->o:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mName:Ljava/lang/String;

    .line 136
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->o:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mExtension:Ljava/util/Map;

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 186
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-nez v4, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    sget v4, Lctk$f;->robot_avatar:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 191
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->icon:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget v4, Lctk$f;->robot_name:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    sget v4, Lctk$f;->setting_message_push_toggle:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v7, Lctk$f;->uidic_forms_item_toggle:I

    .line 194
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->d:Landroid/widget/ToggleButton;

    .line 195
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->d:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    sget v4, Lctk$f;->robot_status:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->f:Landroid/widget/TextView;

    .line 198
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->isStarted()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Z)V

    .line 200
    sget v4, Lctk$f;->tv_robot_add_by:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v7, Lctk$i;->icon_robot_creator:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v9, v9, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->creatorNick:Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    sget v4, Lctk$f;->setting_robot_name:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 204
    .local v3, "vSettingRobotName":Landroid/view/View;
    sget v4, Lctk$f;->uidic_forms_item_tip_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->e:Landroid/widget/TextView;

    .line 206
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->e:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 209
    .local v0, "botTemplateModelObject":Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->canNameModify()Z

    move-result v4

    if-nez v4, :cond_2

    .line 210
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    sget v4, Lctk$f;->_uidic_forms_item_arrow:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->conv:Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    if-eqz v4, :cond_3

    .line 215
    sget v4, Lctk$f;->setting_target_conv_group:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 216
    .local v2, "groupView":Landroid/view/View;
    sget v4, Lctk$f;->uidic_forms_item_tip_text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->conv:Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;->name:Ljava/lang/String;

    .line 217
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    sget v4, Lctk$f;->_uidic_forms_item_arrow:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .end local v2    # "groupView":Landroid/view/View;
    :cond_3
    sget v4, Lctk$f;->btn_robot_webhook_copy:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->canIconModify()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 224
    const/4 v1, 0x1

    .line 226
    :cond_4
    sget v4, Lctk$f;->setting_robot_avatar:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v1, :cond_7

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 228
    sget v4, Lctk$f;->ll_setting_webhook:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->j:Landroid/view/View;

    .line 229
    sget v4, Lctk$f;->ll_setting_weather_robot:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->k:Landroid/view/View;

    .line 230
    sget v4, Lctk$f;->tv_webhook:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->g:Landroid/widget/TextView;

    .line 231
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->g:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->url:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->templateId:J

    const-wide/32 v10, 0x13880

    cmp-long v4, v8, v10

    if-nez v4, :cond_8

    .line 234
    sget v4, Lctk$f;->weather_warning_toggle:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v7, Lctk$f;->uidic_forms_item_toggle:I

    .line 235
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->l:Landroid/widget/ToggleButton;

    .line 236
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->l:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->q:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 238
    sget v4, Lctk$f;->region_selector:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v7, Lctk$f;->uidic_forms_item_tip_text:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->h:Landroid/widget/TextView;

    .line 240
    sget v4, Lctk$f;->push_time_selector:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v7, Lctk$f;->uidic_forms_item_tip_text:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->i:Landroid/widget/TextView;

    .line 243
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->j:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->k:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->extension:Ljava/util/Map;

    if-eqz v4, :cond_5

    .line 246
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->extension:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Ljava/util/Map;)V

    .line 249
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->p:Lctl;

    invoke-virtual {v4}, Lctl;->b()V

    .line 254
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->function:I

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->isInOut(I)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->function:I

    .line 255
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->isIncoming(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 256
    sget v4, Lctk$f;->setting_message_push_toggle:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 257
    sget v4, Lctk$f;->setting_webhook_tips:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->mobileGuideURL:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    sget v4, Lctk$f;->setting_webhook_tips:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move v4, v6

    .line 226
    goto/16 :goto_1

    .line 251
    :cond_8
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->j:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->k:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 71
    .line 5537
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    .line 5565
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->showLoadingDialog()V

    .line 5566
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botId:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 5568
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    .line 5569
    invoke-interface {v0, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5566
    invoke-interface {v2, v4, v5, v0}, Ldxu;->e(JLcma;)V

    .line 71
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 71
    .line 6422
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    .line 6446
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->showLoadingDialog()V

    .line 6447
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botId:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 6449
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    .line 6450
    invoke-interface {v0, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 6447
    invoke-interface {v2, v4, v5, v0}, Ldxu;->f(JLcma;)V

    .line 71
    return-void
.end method

.method private g()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_im_robot_updated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_robot_object"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 575
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 576
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 71
    .line 6579
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_im_robot_deleted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6580
    const-string/jumbo v1, "intent_key_robot_object"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6581
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 71
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 667
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    const-string/jumbo v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 669
    .local v0, "conversationSerial":Ljava/io/Serializable;
    instance-of v2, v0, Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    .line 670
    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .end local v0    # "conversationSerial":Ljava/io/Serializable;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 673
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->h()V

    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->showLoadingDialog()V

    .line 587
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;)V
    .locals 4
    .param p1, "updateBotObject"    # Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 603
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->templateId:J

    const-wide/32 v2, 0x13880

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mExtension:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Ljava/util/Map;)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mExtension:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->extension:Ljava/util/Map;

    .line 611
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mIcon:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->icon:Ljava/lang/String;

    .line 614
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->h()V

    .line 615
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 663
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 649
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->o:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mIcon:Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->p:Lctl;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->o:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    invoke-virtual {v0, v1}, Lctl;->a(Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;)V

    .line 651
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "regionKey"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 655
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->o:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mExtension:Ljava/util/Map;

    const-string/jumbo v1, "locationId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->p:Lctl;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->o:Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    invoke-virtual {v0, v1}, Lctl;->a(Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;)V

    .line 658
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->dismissLoadingDialog()V

    .line 592
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 596
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->extension:Ljava/util/Map;

    const-string/jumbo v2, "locationId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 598
    .local v0, "locationId":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->p:Lctl;

    invoke-virtual {v2, v0}, Lctl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 140
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onAttachedToWindow()V

    .line 141
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v0, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->e()V

    .line 144
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->f()V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 3152
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->showLoadingDialog()V

    .line 3153
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    .line 3176
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->c:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 3177
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    .line 3178
    invoke-interface {v0, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3176
    invoke-interface {v2, v4, v5, v0}, Ldxu;->b(JLcma;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->setting_robot_name:I

    if-ne v3, v4, :cond_2

    .line 3342
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 3343
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3344
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3345
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3347
    :cond_0
    sget v4, Lctk$i;->dt_robot_add_recieve_group_placeholder:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 3348
    new-array v4, v9, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    .line 3350
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3351
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3352
    sget v5, Lctk$i;->dt_robot_add_robot_name:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3353
    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3354
    sget v5, Lctk$i;->cancel:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3355
    sget v5, Lctk$i;->sure:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$8;

    invoke-direct {v6, p0, v3}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3362
    invoke-virtual {v4, v9}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3363
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 3364
    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3365
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 3366
    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$9;

    invoke-direct {v5, p0, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 3383
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3384
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->setting_robot_avatar:I

    if-ne v3, v4, :cond_3

    .line 298
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->p:Lctl;

    invoke-virtual {v3}, Lctl;->a()V

    goto :goto_0

    .line 299
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->region_selector:I

    if-ne v3, v4, :cond_4

    .line 300
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "region_data"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->p:Lctl;

    .line 4321
    iget-object v4, v4, Lctl;->c:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 301
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 303
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->t(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 305
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->push_time_selector:I

    if-ne v3, v4, :cond_5

    .line 306
    new-instance v2, Landroid/widget/TimePicker;

    invoke-direct {v2, p0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    .line 307
    .local v2, "timePicker":Landroid/widget/TimePicker;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v3, Lctk$i;->dt_robot_weather_push_time:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 310
    sget v3, Lctk$i;->cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 311
    sget v3, Lctk$i;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$7;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Landroid/widget/TimePicker;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 323
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 324
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v2    # "timePicker":Landroid/widget/TimePicker;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->setting_reset_webhook:I

    if-ne v3, v4, :cond_6

    .line 4397
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4398
    sget v4, Lctk$i;->dt_robot_reset_webhook_tips:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lctk$i;->sure:I

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$10;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    .line 4399
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lctk$i;->cancel:I

    .line 4405
    invoke-virtual {v3, v4, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 326
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->setting_webhook_tips:I

    if-ne v3, v4, :cond_7

    .line 327
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->mobileGuideURL:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 328
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->mobileGuideURL:Ljava/lang/String;

    invoke-virtual {v3, p0, v4, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->setting_remove_robot:I

    if-ne v3, v4, :cond_8

    .line 4409
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4410
    sget v4, Lctk$i;->dt_robot_remove_robot_tips:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lctk$i;->sure:I

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$11;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    .line 4411
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lctk$i;->cancel:I

    .line 4418
    invoke-virtual {v3, v4, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 333
    const-string/jumbo v3, "im_bot_seting_removebtn_click"

    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->btn_robot_webhook_copy:I

    if-ne v3, v4, :cond_1

    .line 335
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->url:Ljava/lang/String;

    sget v4, Lctk$i;->dt_robot_copy_webhook_success:I

    .line 336
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-static {p0, v3, v4}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    sget v0, Lctk$g;->activity_robot_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->setContentView(I)V

    .line 1278
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_robot_object"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 1280
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "botId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->c:J

    .line 1281
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botId:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->c:J

    .line 1284
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1285
    const-string/jumbo v0, "imrobot"

    sget-object v1, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "bot is invalid"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    new-instance v0, Lctl;

    invoke-direct {v0, p0, p0}, Lctl;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lctl$a;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->p:Lctl;

    .line 2182
    sget v0, Lctk$f;->sv_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->n:Landroid/view/ViewGroup;

    .line 123
    :goto_0
    const-string/jumbo v0, "im_bot_setting_page_enter"

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b(Ljava/lang/String;)V

    .line 124
    return-void

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->finish()V

    goto :goto_0
.end method
