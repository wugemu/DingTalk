.class public Lcom/alibaba/android/user/settings/activity/PrivateActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "PrivateActivity.java"


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation


# instance fields
.field private a:Landroid/widget/ToggleButton;

.field private b:Landroid/widget/ToggleButton;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ToggleButton;

.field private e:Landroid/widget/ToggleButton;

.field private f:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/PrivateActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/PrivateActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->b:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private a(I)V
    .locals 6
    .param p1, "authOrg"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 163
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "dt_org"

    const-string/jumbo v2, "show_auth_org"

    .line 165
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    new-instance v5, Lcom/alibaba/android/user/settings/activity/PrivateActivity$2;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/android/user/settings/activity/PrivateActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/PrivateActivity;I)V

    .line 164
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    .line 181
    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "isShowPermissionRequest"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 278
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->c:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 282
    :cond_0
    if-eqz p1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->c:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_recommend_contact_toggle_tip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 284
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lezg$l;->dt_common_set_now:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 285
    .local v0, "more":Landroid/text/SpannableString;
    new-instance v1, Lcom/alibaba/android/user/settings/activity/PrivateActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/PrivateActivity$6;-><init>(Lcom/alibaba/android/user/settings/activity/PrivateActivity;)V

    const/4 v2, 0x0

    .line 290
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 285
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 291
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 294
    .end local v0    # "more":Landroid/text/SpannableString;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->c:Landroid/widget/TextView;

    sget v2, Lezg$l;->sub_txt_recommend_friend:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public static b()V
    .locals 0
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.READ_CONTACTS"
        }
    .end annotation

    .prologue
    .line 269
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->btn_toggle_see_auth:I

    if-ne v0, v1, :cond_2

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0, v3}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->a(I)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-direct {p0, v2}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->a(I)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->btn_toggle_recommend:I

    if-ne v0, v1, :cond_4

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->b:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    invoke-static {}, Lflv;->a()Lflv;

    move-result-object v0

    .line 2071
    invoke-virtual {v0, v3, v2}, Lflv;->a(ZZ)V

    .line 193
    invoke-static {v3}, Lflw;->a(Z)V

    .line 194
    const-string/jumbo v0, "match_contact"

    const-string/jumbo v1, "set switch true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-static {p0}, Lfwf;->a(Lcom/alibaba/android/user/settings/activity/PrivateActivity;)V

    .line 198
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_hide_contact_match_guide"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 201
    :cond_3
    invoke-static {}, Lflw;->c()V

    .line 202
    const-string/jumbo v0, "match_contact"

    const-string/jumbo v1, "set switch false"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->rl_black_list:I

    if-ne v0, v1, :cond_5

    .line 206
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/settings/black_list.html"

    new-instance v2, Lcom/alibaba/android/user/settings/activity/PrivateActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/PrivateActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/PrivateActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 213
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->rl_friend_share_mobile:I

    if-ne v0, v1, :cond_6

    .line 214
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/settings/friend_share_list.html"

    new-instance v2, Lcom/alibaba/android/user/settings/activity/PrivateActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/PrivateActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/PrivateActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 221
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->btn_toggle_birth_blessing:I

    if-ne v0, v1, :cond_8

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 2244
    const-string/jumbo v0, "0"

    .line 2245
    if-eqz v1, :cond_7

    .line 2246
    const-string/jumbo v0, "1"

    .line 2248
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(ZLcma;)V

    .line 2249
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_function"

    const-string/jumbo v3, "open_happy_birthday"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    goto/16 :goto_0

    .line 223
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->btn_toggle_shield_unknown_contact:I

    if-ne v0, v1, :cond_a

    .line 224
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 3239
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "user_settings"

    const-string/jumbo v3, "shield_unknown_contact_msg"

    if-eqz v0, :cond_9

    const-string/jumbo v0, "1"

    :goto_1
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "0"

    goto :goto_1

    .line 225
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->btn_toggle_join_team_settings:I

    if-ne v0, v1, :cond_c

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 3254
    const-string/jumbo v3, "0"

    .line 3255
    if-eqz v0, :cond_b

    .line 3256
    const-string/jumbo v3, "1"

    .line 3258
    :cond_b
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "dt_user"

    const-string/jumbo v2, "join_team_setting"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 227
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->rl_cirle:I

    if-ne v0, v1, :cond_0

    .line 228
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/settings/circle.html"

    new-instance v2, Lcom/alibaba/android/user/settings/activity/PrivateActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/PrivateActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/PrivateActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget v5, Lezg$j;->activity_settings_private:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->setContentView(I)V

    .line 90
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v6, Lezg$l;->setting_privacy:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    sget v5, Lezg$h;->btn_toggle_see_auth:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->a:Landroid/widget/ToggleButton;

    .line 93
    const-string/jumbo v5, "pref_key_auth_org"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    .line 94
    .local v3, "orgShow":I
    if-ne v3, v7, :cond_0

    .line 95
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 100
    :goto_0
    sget v5, Lezg$h;->btn_toggle_recommend:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->b:Landroid/widget/ToggleButton;

    .line 101
    sget v5, Lezg$h;->recommend_contact_tip:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->c:Landroid/widget/TextView;

    .line 1136
    new-instance v6, Lcom/alibaba/android/user/settings/activity/PrivateActivity$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/settings/activity/PrivateActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/PrivateActivity;)V

    .line 1156
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1157
    const-string/jumbo v5, "EVENTBUTLER"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v9, Lcma;

    invoke-interface {v5, v6, v9, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 1159
    :goto_1
    invoke-static {}, Lfaz;->a()Lezy;

    move-result-object v6

    invoke-interface {v6, v5}, Lezy;->b(Lcma;)V

    .line 104
    sget v5, Lezg$h;->btn_toggle_join_team_settings:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->d:Landroid/widget/ToggleButton;

    .line 105
    const-class v5, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v6, "dt_user"

    const-string/jumbo v9, "join_team_setting"

    invoke-interface {v5, v6, v9}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v2

    .line 106
    .local v2, "joinTeamCloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 107
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->d:Landroid/widget/ToggleButton;

    const-string/jumbo v6, "1"

    invoke-interface {v2}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 112
    :goto_2
    sget v5, Lezg$h;->btn_toggle_birth_blessing:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->e:Landroid/widget/ToggleButton;

    .line 113
    const-string/jumbo v5, "0"

    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v6

    const-string/jumbo v9, "dt_function"

    const-string/jumbo v10, "open_happy_birthday"

    invoke-virtual {v6, v9, v10}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v7

    .line 115
    .local v0, "isChecked":Z
    :goto_3
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 117
    sget v5, Lezg$h;->btn_toggle_shield_unknown_contact:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->f:Landroid/widget/ToggleButton;

    .line 118
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v5

    const-string/jumbo v6, "user_settings"

    const-string/jumbo v9, "shield_unknown_contact_msg"

    invoke-virtual {v5, v6, v9}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 120
    .local v1, "isShield":Z
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 122
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    sget v5, Lezg$h;->rl_cirle:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :goto_4
    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "android.permission.READ_CONTACTS"

    aput-object v6, v5, v8

    invoke-static {p0, v5}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 129
    invoke-direct {p0, v8}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->a(Z)V

    .line 133
    :goto_5
    return-void

    .line 97
    .end local v0    # "isChecked":Z
    .end local v1    # "isShield":Z
    .end local v2    # "joinTeamCloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 109
    .restart local v2    # "joinTeamCloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2

    :cond_2
    move v0, v8

    .line 113
    goto :goto_3

    .line 125
    .restart local v0    # "isChecked":Z
    .restart local v1    # "isShield":Z
    .restart local v4    # "value":Ljava/lang/String;
    :cond_3
    sget v5, Lezg$h;->rl_cirle:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 131
    :cond_4
    invoke-direct {p0, v7}, Lcom/alibaba/android/user/settings/activity/PrivateActivity;->a(Z)V

    goto :goto_5

    .end local v0    # "isChecked":Z
    .end local v1    # "isShield":Z
    .end local v2    # "joinTeamCloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    move-object v5, v6

    goto/16 :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 264
    invoke-static {p0, p1, p3}, Lfwf;->a(Lcom/alibaba/android/user/settings/activity/PrivateActivity;I[I)V

    .line 265
    return-void
.end method
