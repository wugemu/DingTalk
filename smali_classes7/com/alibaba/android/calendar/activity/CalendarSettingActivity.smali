.class public Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CalendarSettingActivity.java"


# instance fields
.field private A:Landroid/widget/ToggleButton;

.field private B:Z

.field private C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

.field private D:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ToggleButton;

.field private s:Landroid/widget/ToggleButton;

.field private t:Landroid/widget/ToggleButton;

.field private u:Landroid/widget/ToggleButton;

.field private v:Landroid/widget/ToggleButton;

.field private w:Landroid/widget/ToggleButton;

.field private x:Landroid/widget/ToggleButton;

.field private y:Landroid/widget/ToggleButton;

.field private z:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->B:Z

    .line 83
    new-instance v0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$1;-><init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->D:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->r:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 4123
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "calendar_function"

    const-string/jumbo v3, "c_setting_alimei"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    :goto_0
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->s:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 4131
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "calendar_function"

    const-string/jumbo v3, "c_setting_alimei_share"

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    :goto_1
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->t:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 4139
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "calendar_function"

    const-string/jumbo v3, "c_setting_alimei_notice"

    if-eqz v0, :cond_3

    const-string/jumbo v0, "1"

    :goto_2
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->u:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 4147
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "calendar_function"

    const-string/jumbo v3, "c_setting_system"

    if-eqz v0, :cond_4

    const-string/jumbo v0, "1"

    :goto_3
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->v:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 4155
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "calendar_function"

    const-string/jumbo v3, "c_setting_system_notice"

    if-eqz v0, :cond_5

    const-string/jumbo v0, "1"

    :goto_4
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->w:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 4163
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "calendar_function"

    const-string/jumbo v3, "c_setting_attendance"

    if-eqz v0, :cond_6

    const-string/jumbo v0, "1"

    :goto_5
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->x:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 4171
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "calendar_function"

    const-string/jumbo v3, "c_setting_attendance_notice"

    if-eqz v0, :cond_7

    const-string/jumbo v0, "1"

    :goto_6
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->y:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 4179
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "calendar_function"

    const-string/jumbo v3, "c_setting_journal"

    if-eqz v0, :cond_8

    const-string/jumbo v0, "1"

    :goto_7
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->z:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 4187
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "calendar_function"

    const-string/jumbo v3, "c_setting_journal_notice"

    if-eqz v0, :cond_9

    const-string/jumbo v0, "1"

    :goto_8
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 169
    invoke-static {}, Lavq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 4195
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "calendar_function"

    const-string/jumbo v3, "ding_morning_brief"

    if-eqz v0, :cond_a

    const-string/jumbo v0, "1"

    :goto_9
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->t:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 174
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->i()V

    .line 179
    :goto_a
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->v:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 180
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->f()V

    .line 185
    :goto_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b(Z)V

    .line 186
    return-void

    .line 4123
    :cond_1
    const-string/jumbo v0, "0"

    goto/16 :goto_0

    .line 4131
    :cond_2
    const-string/jumbo v0, "0"

    goto/16 :goto_1

    .line 4139
    :cond_3
    const-string/jumbo v0, "0"

    goto/16 :goto_2

    .line 4147
    :cond_4
    const-string/jumbo v0, "0"

    goto/16 :goto_3

    .line 4155
    :cond_5
    const-string/jumbo v0, "0"

    goto/16 :goto_4

    .line 4163
    :cond_6
    const-string/jumbo v0, "0"

    goto/16 :goto_5

    .line 4171
    :cond_7
    const-string/jumbo v0, "0"

    goto/16 :goto_6

    .line 4179
    :cond_8
    const-string/jumbo v0, "0"

    goto/16 :goto_7

    .line 4187
    :cond_9
    const-string/jumbo v0, "0"

    goto :goto_8

    .line 4195
    :cond_a
    const-string/jumbo v0, "0"

    goto :goto_9

    .line 176
    :cond_b
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->j()V

    goto :goto_a

    .line 182
    :cond_c
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->g()V

    goto :goto_b
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    .line 5507
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$4;-><init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 387
    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->l:Landroid/view/View;

    invoke-static {}, Lavq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lavq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->c:Landroid/view/View;

    invoke-static {}, Lavq;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lavq;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->m:Landroid/view/View;

    invoke-static {}, Lavq;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->d:Landroid/view/View;

    invoke-static {}, Lavq;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    return-void

    :cond_0
    move v0, v2

    .line 387
    goto :goto_0

    :cond_1
    move v0, v2

    .line 388
    goto :goto_1

    :cond_2
    move v0, v2

    .line 390
    goto :goto_2

    :cond_3
    move v1, v2

    .line 391
    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->r:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->r:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->e()V

    .line 334
    invoke-static {p0}, Lavh;->a(Landroid/app/Activity;)V

    .line 5132
    const-string/jumbo v0, "ding_calendar_settings_alimail_on"

    invoke-static {v0}, Lavw;->b(Ljava/lang/String;)V

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->r:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->a(Z)V

    .line 345
    return-void

    .line 339
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->f()V

    .line 340
    invoke-static {p0}, Lavh;->a(Landroid/app/Activity;)V

    .line 5136
    const-string/jumbo v0, "ding_calendar_settings_off"

    invoke-static {v0}, Lavw;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3
    .param p1, "saveSp"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->dismiss()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 498
    if-eqz p1, :cond_0

    .line 499
    const-string/jumbo v0, "pref_key_calendar_setting_ali_mail_not_open_tips_3"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 502
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarSettingActivity] hideSettingAliMailNotOpenTips"

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 504
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    const/4 v2, 0x1

    .line 42
    .line 6312
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6314
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6315
    const-string/jumbo v0, "pref_key_calendar_setting_ali_mail_not_open_red_dot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 6317
    invoke-static {}, Lavh;->c()V

    .line 6320
    :cond_0
    invoke-direct {p0, v2}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b(Z)V

    .line 6322
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->B:Z

    if-nez v0, :cond_1

    .line 6323
    invoke-static {p0}, Lavr;->b(Landroid/app/Activity;)V

    :goto_0
    return-void

    .line 6325
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->r:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 6326
    invoke-direct {p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->u:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->w:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->y:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->B:Z

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->e:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->a()V

    .line 133
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 134
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    sget v0, Laow$e;->calendar_activity_ding_calendar_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->setContentView(I)V

    .line 102
    sget v0, Laow$f;->dt_ding_activity_title_calendar_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->setTitle(I)V

    .line 1189
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laow$e;->actbar_textview:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->a:Landroid/view/View;

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1191
    sget v1, Laow$f;->dt_calendar_setting_help:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1192
    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$5;-><init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1198
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcms;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1200
    sget v0, Laow$d;->setting_alimei:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b:Landroid/view/View;

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b:Landroid/view/View;

    sget v1, Laow$d;->v_red_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->e:Landroid/view/View;

    .line 1202
    sget v0, Laow$d;->setting_alimei_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->c:Landroid/view/View;

    .line 1203
    sget v0, Laow$d;->setting_alimei_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->d:Landroid/view/View;

    .line 1204
    sget v0, Laow$d;->setting_system_event_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->f:Landroid/view/View;

    .line 1205
    sget v0, Laow$d;->setting_attendance:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->g:Landroid/view/View;

    .line 1206
    sget v0, Laow$d;->setting_attendance_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->h:Landroid/view/View;

    .line 1207
    sget v0, Laow$d;->setting_journal:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->i:Landroid/view/View;

    .line 1208
    sget v0, Laow$d;->setting_journal_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->j:Landroid/view/View;

    .line 1209
    sget v0, Laow$d;->setting_morning_brief:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->k:Landroid/view/View;

    .line 1211
    sget v0, Laow$d;->line_above_setting_alimei_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->l:Landroid/view/View;

    .line 1212
    sget v0, Laow$d;->line_above_setting_alimei_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->m:Landroid/view/View;

    .line 1213
    sget v0, Laow$d;->line_above_setting_system_event_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->n:Landroid/view/View;

    .line 1214
    sget v0, Laow$d;->line_above_setting_attendance_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->o:Landroid/view/View;

    .line 1215
    sget v0, Laow$d;->line_above_setting_journal_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->p:Landroid/view/View;

    .line 1217
    sget v0, Laow$d;->tv_push_setting_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->q:Landroid/view/View;

    .line 1219
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b:Landroid/view/View;

    sget v1, Laow$d;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->r:Landroid/widget/ToggleButton;

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->c:Landroid/view/View;

    sget v1, Laow$d;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->s:Landroid/widget/ToggleButton;

    .line 1221
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->d:Landroid/view/View;

    sget v1, Laow$d;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->t:Landroid/widget/ToggleButton;

    .line 1222
    sget v0, Laow$d;->setting_system_event:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Laow$d;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->u:Landroid/widget/ToggleButton;

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->f:Landroid/view/View;

    sget v1, Laow$d;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->v:Landroid/widget/ToggleButton;

    .line 1224
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->g:Landroid/view/View;

    sget v1, Laow$d;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->w:Landroid/widget/ToggleButton;

    .line 1225
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->h:Landroid/view/View;

    sget v1, Laow$d;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->x:Landroid/widget/ToggleButton;

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->i:Landroid/view/View;

    sget v1, Laow$d;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->y:Landroid/widget/ToggleButton;

    .line 1227
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->j:Landroid/view/View;

    sget v1, Laow$d;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->z:Landroid/widget/ToggleButton;

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->k:Landroid/view/View;

    sget v1, Laow$d;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->A:Landroid/widget/ToggleButton;

    .line 1233
    invoke-static {}, Lavq;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1234
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$6;-><init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1255
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->r:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$7;-><init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1285
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->u:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$9;-><init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1293
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->w:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$10;-><init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1301
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->y:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$11;-><init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1348
    invoke-static {}, Lavq;->d()Z

    move-result v0

    .line 1349
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarActivity]mailCalendarFeatureOn:"

    aput-object v5, v1, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1350
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1352
    invoke-static {}, Lavi;->b()Z

    move-result v6

    .line 2043
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "calendar_function"

    const-string/jumbo v5, "c_setting_alimei_notice"

    invoke-virtual {v0, v1, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2046
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v4

    .line 1354
    :goto_3
    invoke-static {}, Lavi;->c()Z

    move-result v7

    .line 1355
    invoke-static {}, Lavi;->d()Z

    move-result v8

    .line 1356
    invoke-static {}, Lavi;->e()Z

    move-result v9

    .line 2083
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v5, "calendar_function"

    const-string/jumbo v10, "c_setting_attendance_notice"

    invoke-virtual {v1, v5, v10}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2086
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v1, v4

    .line 1358
    :goto_4
    invoke-static {}, Lavi;->f()Z

    move-result v10

    .line 2103
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v5

    const-string/jumbo v11, "calendar_function"

    const-string/jumbo v12, "c_setting_journal_notice"

    invoke-virtual {v5, v11, v12}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2106
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v5, v4

    .line 2113
    :goto_5
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v11

    const-string/jumbo v12, "calendar_function"

    const-string/jumbo v13, "ding_morning_brief"

    invoke-virtual {v11, v12, v13}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2116
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1362
    :cond_1
    :goto_6
    iget-object v11, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->s:Landroid/widget/ToggleButton;

    invoke-virtual {v11, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1363
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->t:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1365
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->u:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1366
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->n:Landroid/view/View;

    if-eqz v7, :cond_c

    move v0, v3

    :goto_7
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->f:Landroid/view/View;

    if-eqz v7, :cond_d

    move v0, v3

    :goto_8
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1368
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->v:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1370
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->w:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1371
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->o:Landroid/view/View;

    if-eqz v9, :cond_e

    move v0, v3

    :goto_9
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    iget-object v6, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->h:Landroid/view/View;

    if-eqz v9, :cond_f

    move v0, v3

    :goto_a
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->x:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1375
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->y:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v10}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1376
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->p:Landroid/view/View;

    if-eqz v10, :cond_10

    move v0, v3

    :goto_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->j:Landroid/view/View;

    if-eqz v10, :cond_11

    move v0, v3

    :goto_c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1378
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->z:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1380
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->q:Landroid/view/View;

    invoke-static {}, Lavq;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v3

    :goto_d
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->k:Landroid/view/View;

    invoke-static {}, Lavq;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_e
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1382
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2128
    const-string/jumbo v0, "ding_calendar_settings"

    invoke-static {v0}, Lavw;->b(Ljava/lang/String;)V

    .line 2143
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->D:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;)V

    .line 108
    return-void

    :cond_2
    move v1, v2

    .line 1198
    goto/16 :goto_0

    .line 1277
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->r:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$8;-><init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 1350
    goto/16 :goto_2

    .line 2049
    :cond_5
    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    goto/16 :goto_3

    :cond_6
    move v0, v3

    goto/16 :goto_3

    .line 2089
    :cond_7
    const-string/jumbo v5, "0"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v4

    goto/16 :goto_4

    :cond_8
    move v1, v3

    goto/16 :goto_4

    .line 2109
    :cond_9
    const-string/jumbo v11, "0"

    invoke-static {v5, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    move v5, v4

    goto/16 :goto_5

    :cond_a
    move v5, v3

    goto/16 :goto_5

    .line 2119
    :cond_b
    const-string/jumbo v12, "0"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v4, v3

    goto/16 :goto_6

    :cond_c
    move v0, v2

    .line 1366
    goto/16 :goto_7

    :cond_d
    move v0, v2

    .line 1367
    goto/16 :goto_8

    :cond_e
    move v0, v2

    .line 1371
    goto/16 :goto_9

    :cond_f
    move v0, v2

    .line 1372
    goto/16 :goto_a

    :cond_10
    move v0, v2

    .line 1376
    goto/16 :goto_b

    :cond_11
    move v0, v2

    .line 1377
    goto/16 :goto_c

    :cond_12
    move v0, v2

    .line 1380
    goto/16 :goto_d

    :cond_13
    move v3, v2

    .line 1381
    goto/16 :goto_e
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 124
    const/4 v1, 0x1

    sget v2, Laow$f;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 125
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 126
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 127
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 138
    .line 3147
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->D:Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->b(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;)V

    .line 139
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 140
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->a()V

    .line 155
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 112
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 113
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->r:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 115
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->d()Z

    move-result v0

    .line 116
    .local v0, "isMailCalendarEnable":Z
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->r:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 117
    invoke-direct {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->a(Z)V

    .line 2396
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_ding_calendar_share_tips_enable"

    invoke-virtual {v1, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2397
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarDrawerContainer] showSettingAliMailNotOpenTips show tips close."

    aput-object v2, v1, v5

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2421
    :cond_0
    :goto_0
    return-void

    .line 2401
    :cond_1
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2402
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarSettingActivity] showSettingAliMailNotOpenTips dingTab not open. "

    aput-object v2, v1, v5

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 2406
    :cond_2
    invoke-static {}, Lavq;->p()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2407
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarSettingActivity] showSettingAliMailNotOpenTips not alibaba user. "

    aput-object v2, v1, v5

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 2460
    :cond_3
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v2

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$3;-><init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(Lcom/alibaba/wukong/Callback;)V

    .line 2413
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->r:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2414
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarSettingActivity] showSettingAliMailNotOpenTips toggleMail open. "

    aput-object v2, v1, v5

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 2419
    :cond_4
    const-string/jumbo v1, "pref_key_calendar_setting_ali_mail_not_open_tips_3"

    invoke-static {v1, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2420
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarSettingActivity]showSettingAliMailNotOpenTips setting_aliMail_not_open=false."

    aput-object v2, v1, v5

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 2424
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-nez v1, :cond_6

    .line 2425
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;->Up:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;

    sget v3, Laow$f;->dt_ding_setting_open_ali_mail_tip:I

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;I)V

    iput-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 2428
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2432
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    new-instance v2, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$12;

    invoke-direct {v2, p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$12;-><init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    .line 3122
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;

    .line 2439
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->r:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$2;-><init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
