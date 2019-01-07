.class public Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "TimeZoneSettingActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 92
    .local v6, "vid":I
    sget v0, Lezg$h;->setting_timezone_list:I

    if-ne v6, v0, :cond_1

    .line 93
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/settings/timezone_list.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    sget v0, Lezg$h;->action_auto_timezone_adjustment:I

    if-ne v6, v0, :cond_0

    .line 96
    invoke-static {}, Lfwx;->a()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "timeZoneId":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->b:Landroid/widget/TextView;

    invoke-static {v3}, Lfwx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->showLoadingDialog()V

    .line 1104
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "user_settings"

    const-string/jumbo v2, "timezone_id"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    new-instance v5, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$2;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;)V

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget v0, Lezg$j;->activity_timezone_home:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->setContentView(I)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_setting_timezone:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    sget v0, Lezg$h;->setting_timezone_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->b:Landroid/widget/TextView;

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 51
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;->showLoadingDialog()V

    .line 54
    invoke-static {}, Lfan;->a()Lezr;

    move-result-object v1

    const-string/jumbo v0, "timezone_etag"

    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 55
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/TimeZoneSettingActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 54
    invoke-interface {v1, v2, v0}, Lezr;->a(Ljava/lang/String;Lcma;)V

    .line 88
    return-void
.end method
