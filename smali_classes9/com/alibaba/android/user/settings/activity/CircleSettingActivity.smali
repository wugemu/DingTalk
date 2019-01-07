.class public Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "CircleSettingActivity.java"


# instance fields
.field private a:Landroid/widget/ToggleButton;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "alertsValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 72
    const-string/jumbo v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->a(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "dt_function"

    const-string/jumbo v2, "circle_update_alerts_setting"

    invoke-virtual {v0, v1, v2}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "alertsValue":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 95
    :cond_0
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "dt_function"

    const-string/jumbo v2, "circle_update_alerts_setting"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    .line 96
    invoke-static {v3, v5, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/Callback;

    move-object v3, p1

    .line 95
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->btn_toggle_enable_circle:I

    if-ne v0, v1, :cond_3

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 1117
    if-eqz v0, :cond_1

    const-string/jumbo v3, "1"

    .line 1118
    :goto_0
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "dt_function"

    const-string/jumbo v2, "circle_entry_enable"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    new-instance v5, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity$2;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    .line 1119
    invoke-static {v5, v6, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/Callback;

    .line 1118
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_0
    :goto_1
    return-void

    .line 1117
    :cond_1
    const-string/jumbo v3, "0"

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->rl_circle_update_alerts_disable:I

    if-ne v0, v1, :cond_4

    .line 147
    const-string/jumbo v0, "2"

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->rl_circle_update_alerts_enable:I

    if-ne v0, v1, :cond_5

    .line 149
    const-string/jumbo v0, "1"

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->rl_circle_update_alerts_disable_during_working_hours:I

    if-ne v0, v1, :cond_0

    .line 151
    const-string/jumbo v0, "3"

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v2, Lezg$j;->activity_settings_circle:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->setContentView(I)V

    .line 49
    sget v2, Lezg$h;->ll_circle_update_alerts:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->b:Landroid/view/View;

    .line 50
    sget v2, Lezg$h;->btn_toggle_enable_circle:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->a:Landroid/widget/ToggleButton;

    .line 51
    sget v2, Lezg$h;->iv_circle_update_alerts_enable:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->c:Landroid/view/View;

    .line 52
    sget v2, Lezg$h;->iv_circle_update_alerts_disable_during_working_hours:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->d:Landroid/view/View;

    .line 53
    sget v2, Lezg$h;->iv_circle_update_alerts_disable:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->e:Landroid/view/View;

    .line 56
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "dt_function"

    const-string/jumbo v4, "circle_entry_enable"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "circleEnableValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->a:Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 60
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->b:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :goto_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "dt_function"

    const-string/jumbo v4, "circle_update_alerts_setting"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "alertsValue":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->a(Ljava/lang/String;)V

    .line 68
    return-void

    .line 62
    .end local v0    # "alertsValue":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 63
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/CircleSettingActivity;->b:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
