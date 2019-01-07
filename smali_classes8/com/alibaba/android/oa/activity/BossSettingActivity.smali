.class public Lcom/alibaba/android/oa/activity/BossSettingActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "BossSettingActivity.java"


# instance fields
.field a:Landroid/widget/ToggleButton;

.field b:Landroid/view/View;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Landroid/widget/TextView;

.field f:J

.field g:Z

.field h:Z

.field i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Ledz$f;->setting_boss:I

    if-ne v0, v1, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "cal_boss_set_clicked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "cal_boss_set_clicked"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->f:J

    invoke-virtual {v0, p0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;J)V

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Ledz$f;->btn_toggle_cal_push:I

    if-ne v0, v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->showLoadingDialog()V

    .line 166
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->i:Z

    if-eqz v0, :cond_3

    .line 167
    invoke-static {}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getInstance()Lcom/alibaba/android/oa/rpc/CalendarService;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->f:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/oa/activity/BossSettingActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity$2;-><init>(Lcom/alibaba/android/oa/activity/BossSettingActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/oa/rpc/CalendarService;->cancelSubscribeOrgEmpMessagePush(JLcma;)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-static {}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getInstance()Lcom/alibaba/android/oa/rpc/CalendarService;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->f:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/oa/activity/BossSettingActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity$3;-><init>(Lcom/alibaba/android/oa/activity/BossSettingActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/oa/rpc/CalendarService;->subscribeOrgEmpMessagePush(JLcma;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->f:J

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_boss"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->g:Z

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_master_admin"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->h:Z

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_subscribe"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->i:Z

    .line 56
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->g:Z

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->finish()V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    sget v0, Ledz$g;->activity_boss_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->setContentView(I)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Ledz$h;->title_activity_settings:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1113
    :cond_2
    sget v0, Ledz$f;->btn_cal_push:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->b:Landroid/view/View;

    .line 1114
    sget v0, Ledz$f;->setting_boss:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->d:Landroid/view/View;

    .line 1115
    sget v0, Ledz$f;->setting_boss_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->e:Landroid/widget/TextView;

    .line 1119
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->h:Z

    if-eqz v0, :cond_4

    .line 1121
    sget v0, Ledz$f;->setting_boss:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Ledz$f;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->c:Landroid/widget/TextView;

    .line 1122
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "cal_boss_set_clicked"

    invoke-static {v0, v1, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1123
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ledz$e;->ding_remind_ret_dot:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1124
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1125
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1127
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1130
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->g:Z

    if-eqz v0, :cond_0

    .line 1131
    sget v0, Ledz$f;->btn_toggle_cal_push:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->a:Landroid/widget/ToggleButton;

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->a:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->i:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1137
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->g:Z

    if-eqz v0, :cond_0

    .line 1138
    sget v0, Ledz$f;->btn_toggle_cal_push:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/BossSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->a:Landroid/widget/ToggleButton;

    .line 1139
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->a:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->i:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1142
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1143
    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1144
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.android.rimet.biz.calendar.BOSSSETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "is_boss"

    iget-boolean v2, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    const-string/jumbo v1, "is_master_admin"

    iget-boolean v2, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    const-string/jumbo v1, "is_subscribe"

    iget-boolean v2, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 223
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 224
    return-void
.end method

.method protected onResume()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 73
    invoke-static {}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getInstance()Lcom/alibaba/android/oa/rpc/CalendarService;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/oa/activity/BossSettingActivity;->f:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/oa/activity/BossSettingActivity$1;-><init>(Lcom/alibaba/android/oa/activity/BossSettingActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/oa/rpc/CalendarService;->getOrgEmpManagerCalSetting(JLcma;)V

    .line 107
    return-void
.end method
