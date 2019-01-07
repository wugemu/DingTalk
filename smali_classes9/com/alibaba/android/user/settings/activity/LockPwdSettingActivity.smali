.class public Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "LockPwdSettingActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ToggleButton;

.field private d:Landroid/widget/ToggleButton;

.field private e:Landroid/widget/ToggleButton;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 47
    .line 2184
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2185
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b()V

    .line 2486
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2504
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2544
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2585
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->i:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2594
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->j:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$6;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v12, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1191
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    .line 1193
    if-eqz v5, :cond_1

    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v8, :cond_1

    .line 1194
    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1195
    if-eqz v5, :cond_0

    iget-object v9, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v9, :cond_0

    iget-object v9, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-eqz v9, :cond_0

    iget-object v9, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->allStaffSecurityPasscode:Z

    if-eqz v9, :cond_0

    iget-object v9, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 1199
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1200
    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .local v4, "orgsWithScreenLock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v5, "screenlock"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[lockpwdsetting]num of orgs having screen lock: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-static {p0}, Lcms;->q(Landroid/content/Context;)Z

    move-result v2

    .line 225
    .local v2, "hasSystemScreenLock":Z
    const-string/jumbo v5, "screenlock"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[lockpwdsetting]device locked: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->b()Lchy;

    move-result-object v9

    invoke-virtual {v9}, Lchy;->getCurrentUid()J

    move-result-wide v10

    invoke-static {v5, v8, v10, v11}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    move v1, v6

    .line 233
    .local v1, "hasLockPwd":Z
    :goto_1
    const-string/jumbo v5, "screenlock"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[lockpwdsetting]hasLockPwd: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    if-nez v2, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    if-eqz v1, :cond_5

    .line 235
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v8, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->a:Landroid/widget/TextView;

    .line 1212
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 1213
    sget v5, Lezg$l;->dt_single_org_setting_pwd_tip:I

    new-array v9, v6, [Ljava/lang/Object;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {p0, v5, v9}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 237
    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    new-instance v3, Landroid/text/SpannableString;

    sget v5, Lezg$l;->guide_more:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 239
    .local v3, "more":Landroid/text/SpannableString;
    new-instance v5, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$11;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$11;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V

    .line 244
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    .line 239
    invoke-virtual {v3, v5, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 245
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->a:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 248
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 249
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 250
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 251
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 252
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->i:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->j:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 256
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->m:Ljava/lang/String;

    const-string/jumbo v6, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 257
    const-string/jumbo v5, "screenlock"

    const-string/jumbo v6, "[lockpwdsetting]hasLockBurnChat: false"

    invoke-static {v5, v6}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :goto_3
    :try_start_2
    const-string/jumbo v5, "1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcni;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->l:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 275
    :goto_4
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->l:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 323
    .end local v3    # "more":Landroid/text/SpannableString;
    :goto_5
    return-void

    .end local v1    # "hasLockPwd":Z
    :cond_2
    move v1, v7

    .line 228
    goto/16 :goto_1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 231
    .restart local v1    # "hasLockPwd":Z
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1215
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget v5, Lezg$l;->dt_multi_orgs_setting_pwd_tip:I

    new-array v9, v6, [Ljava/lang/Object;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {p0, v5, v9}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 260
    .restart local v3    # "more":Landroid/text/SpannableString;
    :cond_4
    :try_start_3
    const-string/jumbo v5, "screenlock"

    const-string/jumbo v6, "[lockpwdsetting]hasLockBurnChat: true"

    invoke-static {v5, v6}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 263
    :catch_1
    move-exception v0

    .line 264
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "screenlock"

    const-string/jumbo v6, "[lockpwdsetting]hasLockBurnChat: false"

    invoke-static {v5, v6}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 272
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->l:Ljava/lang/String;

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "more":Landroid/text/SpannableString;
    :cond_5
    if-nez v1, :cond_6

    .line 277
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->i:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->j:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 282
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 283
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 284
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 285
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 286
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_5

    .line 288
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->i:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->j:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 293
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 294
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 295
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 297
    :try_start_4
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->l:Ljava/lang/String;

    const-string/jumbo v6, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 298
    const-string/jumbo v5, "screenlock"

    const-string/jumbo v6, "[lockpwdsetting]hasScreenLock: false"

    invoke-static {v5, v6}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d:Landroid/widget/ToggleButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 310
    :goto_6
    :try_start_5
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->m:Ljava/lang/String;

    const-string/jumbo v6, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 311
    const-string/jumbo v5, "screenlock"

    const-string/jumbo v6, "[lockpwdsetting]hasLockBurnChat: false"

    invoke-static {v5, v6}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_5

    .line 317
    :catch_3
    move-exception v0

    .line 318
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "screenlock"

    const-string/jumbo v6, "[lockpwdsetting]hasLockBurnChat: false"

    invoke-static {v5, v6}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_6
    const-string/jumbo v5, "screenlock"

    const-string/jumbo v6, "[lockpwdsetting]hasScreenLock: true"

    invoke-static {v5, v6}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d:Landroid/widget/ToggleButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    .line 304
    :catch_4
    move-exception v0

    .line 305
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "screenlock"

    const-string/jumbo v6, "[lockpwdsetting]hasScreenLock: false"

    invoke-static {v5, v6}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_7
    const-string/jumbo v5, "screenlock"

    const-string/jumbo v6, "[lockpwdsetting]hasLockBurnChat: true"

    invoke-static {v5, v6}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_5
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->m:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 673
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "secret_icon_secure_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "lock_pwd_content"

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const-string/jumbo v1, "burn_chat_lock_content"

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 677
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    .line 3653
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3654
    sget v1, Lezg$l;->sure:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "x1":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 47
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 47
    .line 2606
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2609
    sget v0, Lezg$l;->settings_old_password:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2610
    sget v0, Lezg$l;->passcode_forget_title_too_mush:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2611
    sget v1, Lezg$l;->passcode_forget_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2612
    iget v3, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->n:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    move-object v1, v0

    .line 2614
    :cond_0
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$7;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2649
    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->n:I

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;

    .prologue
    .line 47
    .line 2658
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->dismissLoadingDialog()V

    .line 2659
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2660
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2661
    sget v1, Lezg$l;->password_wrong:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->login_ok:I

    new-instance v2, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$8;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V

    .line 2662
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 2668
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    .line 327
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 328
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 329
    const-string/jumbo v4, "password"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "pwd":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    .line 333
    .local v2, "lastValue":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcni;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$12;

    invoke-direct {v7, p0, v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$12;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)V

    const-class v8, Lcom/alibaba/wukong/Callback;

    invoke-interface {v4, v7, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v5, v6, v4}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 359
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b()V

    .line 360
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c()V

    .line 483
    .end local v2    # "lastValue":Ljava/lang/String;
    .end local v3    # "pwd":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 334
    .restart local v2    # "lastValue":Ljava/lang/String;
    .restart local v3    # "pwd":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastValue":Ljava/lang/String;
    .end local v3    # "pwd":Ljava/lang/String;
    :cond_1
    if-ne p1, v6, :cond_2

    .line 363
    const-string/jumbo v4, "password"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    .restart local v3    # "pwd":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 365
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    .line 367
    .restart local v2    # "lastValue":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcni;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    :goto_2
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$13;

    invoke-direct {v7, p0, v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$13;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)V

    const-class v8, Lcom/alibaba/wukong/Callback;

    invoke-interface {v4, v7, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v5, v6, v4}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 393
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b()V

    goto :goto_1

    .line 368
    :catch_1
    move-exception v0

    .line 369
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    .line 370
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastValue":Ljava/lang/String;
    .end local v3    # "pwd":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    .line 396
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "first_step_title_res"

    sget v5, Lezg$l;->enter_new_passcode:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v1, v6}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 399
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    .line 400
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->l:Ljava/lang/String;

    .line 402
    .restart local v2    # "lastValue":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v4, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcni;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->l:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 407
    :goto_3
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->l:Ljava/lang/String;

    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$14;

    invoke-direct {v7, p0, v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$14;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)V

    const-class v8, Lcom/alibaba/wukong/Callback;

    invoke-interface {v4, v7, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v5, v6, v4}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 425
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b()V

    goto/16 :goto_1

    .line 403
    :catch_2
    move-exception v0

    .line 404
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->l:Ljava/lang/String;

    .line 405
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastValue":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x5

    if-ne p1, v4, :cond_5

    .line 427
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->m:Ljava/lang/String;

    .line 429
    .restart local v2    # "lastValue":Ljava/lang/String;
    :try_start_3
    const-string/jumbo v4, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcni;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->m:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 434
    :goto_4
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->m:Ljava/lang/String;

    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$15;

    invoke-direct {v7, p0, v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$15;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)V

    const-class v8, Lcom/alibaba/wukong/Callback;

    invoke-interface {v4, v7, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v5, v6, v4}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->c(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 452
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b()V

    .line 453
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c()V

    goto/16 :goto_1

    .line 430
    :catch_3
    move-exception v0

    .line 431
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->m:Ljava/lang/String;

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 454
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastValue":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x6

    if-ne p1, v4, :cond_0

    .line 455
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    .line 457
    .restart local v2    # "lastValue":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v4, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcni;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 462
    :goto_5
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$16;

    invoke-direct {v7, p0, v2}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$16;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;Ljava/lang/String;)V

    const-class v8, Lcom/alibaba/wukong/Callback;

    invoke-interface {v4, v7, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v5, v6, v4}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 480
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b()V

    goto/16 :goto_1

    .line 458
    :catch_4
    move-exception v0

    .line 459
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->k:Ljava/lang/String;

    .line 460
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget v0, Lezg$j;->activity_lock_pwd_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->setContentView(I)V

    .line 78
    const-string/jumbo v0, "pref_view_pwd_setting"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->security_passcode_settings:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1085
    sget v0, Lezg$h;->tv_org_screen_lock_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->a:Landroid/widget/TextView;

    .line 1086
    sget v0, Lezg$h;->tv_has_system_lock_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->b:Landroid/widget/TextView;

    .line 1087
    sget v0, Lezg$h;->setting_lock_pwd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->f:Landroid/view/View;

    .line 1088
    sget v0, Lezg$h;->setting_screen_lock:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->g:Landroid/view/View;

    .line 1089
    sget v0, Lezg$h;->setting_burn_chat_lock:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->h:Landroid/view/View;

    .line 1090
    sget v0, Lezg$h;->setting_lock_pwd_change:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->i:Landroid/view/View;

    .line 1091
    sget v0, Lezg$h;->setting_lock_pwd_forget:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->j:Landroid/view/View;

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->f:Landroid/view/View;

    sget v1, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c:Landroid/widget/ToggleButton;

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->g:Landroid/view/View;

    sget v1, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d:Landroid/widget/ToggleButton;

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->h:Landroid/view/View;

    sget v1, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    sget v0, Lezg$h;->setting_burn_chat_lock_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;->findViewById(I)Landroid/view/View;

    .line 1114
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->a(Lcom/alibaba/wukong/Callback;)V

    .line 1137
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$9;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->b(Lcom/alibaba/wukong/Callback;)V

    .line 1159
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity$10;-><init>(Lcom/alibaba/android/user/settings/activity/LockPwdSettingActivity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->c(Lcom/alibaba/wukong/Callback;)V

    .line 81
    return-void
.end method
