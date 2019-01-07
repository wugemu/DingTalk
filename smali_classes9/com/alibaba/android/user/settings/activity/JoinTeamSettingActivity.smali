.class public Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "JoinTeamSettingActivity.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->a:Ljava/lang/String;

    .line 68
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "dt_user"

    const-string/jumbo v2, "join_team_setting"

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->a:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    .line 69
    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    sget v0, Lezg$h;->all_allow_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 71
    sget v0, Lezg$h;->need_check_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 72
    :cond_2
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget v0, Lezg$h;->all_allow_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 74
    sget v0, Lezg$h;->need_check_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->all_allow:I

    if-ne v0, v1, :cond_2

    .line 83
    const-string/jumbo v0, "0"

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->need_check:I

    if-ne v0, v1, :cond_0

    .line 85
    const-string/jumbo v0, "1"

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget v0, Lezg$j;->activity_settings_join_team:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->setContentView(I)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_contact_privacy_joinTeam:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1048
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "dt_user"

    const-string/jumbo v2, "join_team_setting"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 1049
    const-string/jumbo v1, "0"

    iput-object v1, p0, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->a:Ljava/lang/String;

    .line 1050
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1051
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->a:Ljava/lang/String;

    .line 1056
    :cond_0
    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    sget v0, Lezg$h;->all_allow_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    .line 1058
    :cond_2
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    sget v0, Lezg$h;->need_check_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/JoinTeamSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
