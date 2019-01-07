.class public Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "CommonSettingActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private c:Landroid/widget/ToggleButton;

.field private d:Landroid/widget/ToggleButton;

.field private e:Landroid/widget/ToggleButton;

.field private f:Landroid/widget/ToggleButton;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ToggleButton;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 392
    iput-boolean v0, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->j:Z

    .line 393
    iput-boolean v0, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->c:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->f:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->d:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->e:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->i:Landroid/widget/ToggleButton;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 285
    .local v0, "vid":I
    sget v1, Lezg$h;->setting_locale:I

    if-ne v0, v1, :cond_1

    .line 286
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/settings/locale.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    sget v1, Lezg$h;->setting_font:I

    if-ne v0, v1, :cond_2

    .line 288
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/font_setting.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_2
    sget v1, Lezg$h;->setting_calendar:I

    if-ne v0, v1, :cond_3

    .line 290
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(Landroid/app/Activity;)V

    .line 291
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->P:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_0

    .line 292
    :cond_3
    sget v1, Lezg$h;->setting_secret_chat:I

    if-ne v0, v1, :cond_4

    .line 293
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/secret_chat_setting.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_4
    sget v1, Lezg$h;->setting_one_key_turbo:I

    if-ne v0, v1, :cond_5

    .line 295
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 296
    :cond_5
    sget v1, Lezg$h;->settings_develop:I

    if-ne v0, v1, :cond_6

    .line 297
    invoke-static {}, Lfwe;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/settings/developer_options.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_6
    sget v1, Lezg$h;->setting_timezone:I

    if-ne v0, v1, :cond_7

    .line 301
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/timezone_setting.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    :cond_7
    sget v1, Lezg$h;->setting_diagnostics:I

    if-ne v0, v1, :cond_0

    .line 303
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/diagnostics_settings.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sget v10, Lezg$j;->activity_common_setting:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->setContentView(I)V

    .line 98
    sget v10, Lezg$h;->setting_locale:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->a:Landroid/widget/TextView;

    .line 1271
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1272
    const-string/jumbo v11, "pref_locale"

    const-string/jumbo v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1274
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 1275
    sget v11, Lezg$c;->locale_map:I

    invoke-static {v11}, Lcpt;->a(I)Ljava/util/LinkedHashMap;

    move-result-object v11

    .line 1276
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1280
    :goto_0
    iget-object v11, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v11, Lezg$l;->setting_common:I

    invoke-virtual {v10, v11}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 102
    const/4 v10, 0x0

    sget v11, Lezg$l;->clearing:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static {p0, v10, v11, v12, v13}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 129
    sget v10, Lezg$h;->setting_timezone:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->h:Landroid/view/View;

    .line 130
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    const-string/jumbo v11, "general_timezone_open"

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v5

    .line 131
    .local v5, "timeZoneOpen":Z
    if-eqz v5, :cond_0

    .line 132
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->h:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_0
    sget v10, Lezg$h;->setting_one_line_mode:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    check-cast v10, Landroid/widget/ToggleButton;

    iput-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->c:Landroid/widget/ToggleButton;

    .line 135
    const-string/jumbo v10, "im_input_one_line_mode"

    invoke-static {p0, v10}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 136
    .local v1, "isOneLine":Z
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v10, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 137
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->c:Landroid/widget/ToggleButton;

    new-instance v11, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$1;

    invoke-direct {v11, p0}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->c:Landroid/widget/ToggleButton;

    sget v11, Lezg$l;->setting_one_line_mode:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    sget v10, Lezg$h;->setting_landscape:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    iput-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->f:Landroid/widget/ToggleButton;

    .line 149
    sget v10, Lezg$h;->setting_landscape:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {}, Lcpa;->a()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->f:Landroid/widget/ToggleButton;

    invoke-static {p0}, Lcpa;->a(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 151
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->f:Landroid/widget/ToggleButton;

    new-instance v11, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$2;

    invoke-direct {v11, p0}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    sget v10, Lezg$h;->setting_full_screen_voice:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    check-cast v10, Landroid/widget/ToggleButton;

    iput-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->d:Landroid/widget/ToggleButton;

    .line 163
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v10

    const-string/jumbo v11, "user_settings"

    const-string/jumbo v12, "full_screen_voice"

    invoke-virtual {v10, v11, v12}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "fullScreenVoice":Ljava/lang/String;
    const-string/jumbo v10, "1"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 165
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->d:Landroid/widget/ToggleButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 169
    :goto_2
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->d:Landroid/widget/ToggleButton;

    new-instance v11, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$3;

    invoke-direct {v11, p0}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->d:Landroid/widget/ToggleButton;

    sget v11, Lezg$l;->setting_one_line_mode:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 186
    sget v10, Lezg$h;->setting_skip_splash:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    check-cast v10, Landroid/widget/ToggleButton;

    iput-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->e:Landroid/widget/ToggleButton;

    .line 187
    const-string/jumbo v10, "show_splash"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 188
    .local v4, "showSplash":Z
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v10, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 189
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->e:Landroid/widget/ToggleButton;

    new-instance v11, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$4;

    invoke-direct {v11, p0}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->e:Landroid/widget/ToggleButton;

    sget v11, Lezg$l;->skip_splash:I

    invoke-virtual {p0, v11}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 197
    sget v10, Lezg$h;->setting_use_default_theme:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 198
    .local v8, "useDefaultThemeContainer":Landroid/view/View;
    sget v10, Lezg$h;->setting_use_default_theme_tip:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 199
    .local v9, "useDefaultThemeContainerTip":Landroid/view/View;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->j()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 200
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 201
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 202
    sget v10, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    .line 203
    .local v7, "useDefaultThemeButton":Landroid/widget/ToggleButton;
    const-string/jumbo v10, "pref_key_use_default_theme"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v6

    .line 204
    .local v6, "useDefaultTheme":Z
    invoke-virtual {v7, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 205
    new-instance v10, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$5;

    invoke-direct {v10, p0, v7}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;Landroid/widget/ToggleButton;)V

    invoke-virtual {v7, v10}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    .end local v6    # "useDefaultTheme":Z
    .end local v7    # "useDefaultThemeButton":Landroid/widget/ToggleButton;
    :goto_3
    sget v10, Lezg$h;->setting_full_screen_voice_tip:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 217
    .local v2, "linkText":Landroid/widget/TextView;
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 218
    new-instance v3, Landroid/text/SpannableString;

    sget v10, Lezg$l;->guide_more:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 219
    .local v3, "more":Landroid/text/SpannableString;
    new-instance v10, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$6;

    invoke-direct {v10, p0}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$6;-><init>(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)V

    const/4 v11, 0x0

    .line 224
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v12

    const/16 v13, 0x21

    .line 219
    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 225
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 226
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 229
    .end local v3    # "more":Landroid/text/SpannableString;
    :cond_1
    sget v10, Lezg$h;->settings_develop:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {}, Lfwe;->a()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 230
    sget v10, Lezg$h;->setting_diagnostics:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2256
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    const-string/jumbo v12, "search_show_diagnostics_setting"

    invoke-virtual {v10, v12}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2257
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v10

    const-string/jumbo v12, "f_search_show_diagnostics_setting"

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    .line 230
    :goto_5
    if-eqz v10, :cond_8

    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 232
    sget v10, Lezg$h;->setting_calendar:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->g:Landroid/widget/TextView;

    .line 233
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v10

    sget-object v11, Lble;->P:Ljava/lang/String;

    new-instance v12, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$7;

    invoke-direct {v12, p0}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$7;-><init>(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)V

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 244
    sget v10, Lezg$h;->setting_screen_shot_feedback:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    check-cast v10, Landroid/widget/ToggleButton;

    iput-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->i:Landroid/widget/ToggleButton;

    .line 245
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->i:Landroid/widget/ToggleButton;

    invoke-static {}, Lfnz;->a()Lfnz;

    invoke-static {}, Lfnz;->c()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 246
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->i:Landroid/widget/ToggleButton;

    new-instance v11, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$8;

    invoke-direct {v11, p0}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$8;-><init>(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    return-void

    .line 1278
    .end local v0    # "fullScreenVoice":Ljava/lang/String;
    .end local v1    # "isOneLine":Z
    .end local v2    # "linkText":Landroid/widget/TextView;
    .end local v4    # "showSplash":Z
    .end local v5    # "timeZoneOpen":Z
    .end local v8    # "useDefaultThemeContainer":Landroid/view/View;
    .end local v9    # "useDefaultThemeContainerTip":Landroid/view/View;
    :cond_2
    sget v10, Lezg$l;->locale_auto:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 149
    .restart local v1    # "isOneLine":Z
    .restart local v5    # "timeZoneOpen":Z
    :cond_3
    const/16 v10, 0x8

    goto/16 :goto_1

    .line 167
    .restart local v0    # "fullScreenVoice":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->d:Landroid/widget/ToggleButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 212
    .restart local v4    # "showSplash":Z
    .restart local v8    # "useDefaultThemeContainer":Landroid/view/View;
    .restart local v9    # "useDefaultThemeContainerTip":Landroid/view/View;
    :cond_5
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 213
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 229
    .restart local v2    # "linkText":Landroid/widget/TextView;
    :cond_6
    const/16 v10, 0x8

    goto/16 :goto_4

    .line 2257
    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .line 230
    :cond_8
    const/16 v10, 0x8

    goto :goto_6
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 262
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 263
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 264
    return-void
.end method
