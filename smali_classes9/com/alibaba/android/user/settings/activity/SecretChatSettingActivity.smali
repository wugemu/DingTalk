.class public Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SecretChatSettingActivity.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ToggleButton;

.field private d:Landroid/widget/ToggleButton;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/BroadcastReceiver;

.field private final j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lezg$l;->dt_user_secret_icon_level_primary:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lezg$l;->dt_user_secret_icon_level_middle:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lezg$l;->dt_user_secret_icon_level_high:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->j:[I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->c:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Z)V
    .locals 7
    .param p1, "isEnabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->dt_setting_secret_chat_password_desc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->uidic_global_color_6_6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->f:Landroid/widget/TextView;

    .line 3265
    new-instance v1, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V

    .line 3271
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->dt_setting_secret_chat_password_disable_desc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3272
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->dt_setting_secret_chat_password_disable_link:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3273
    new-instance v4, Landroid/text/SpannableString;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3274
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 3275
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 3276
    new-instance v5, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$6;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$6;-><init>(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x21

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 181
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->change_pwd_hint_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->h:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2200
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 2201
    if-eqz v4, :cond_1

    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v7, :cond_1

    .line 2202
    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2203
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v8, :cond_0

    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-eqz v8, :cond_0

    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->allStaffSecurityPasscode:Z

    if-eqz v8, :cond_0

    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 2207
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2208
    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3195
    .local v3, "orgsWithScreenLock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-static {p0}, Lcms;->q(Landroid/content/Context;)Z

    move-result v2

    .line 140
    .local v2, "hasSystemScreenLock":Z
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->g:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-static {v4, v7, v8, v9}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    move v1, v5

    .line 145
    .local v1, "hasLockPwd":Z
    :goto_1
    if-nez v2, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    if-eqz v1, :cond_4

    .line 146
    invoke-direct {p0, v5}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->a(Z)V

    .line 148
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->h:Ljava/lang/String;

    const-string/jumbo v5, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :goto_2
    return-void

    .end local v1    # "hasLockPwd":Z
    :cond_2
    move v1, v6

    .line 140
    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 143
    .restart local v1    # "hasLockPwd":Z
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d:Landroid/widget/ToggleButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 153
    :catch_1
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    if-nez v1, :cond_5

    .line 158
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 159
    invoke-direct {p0, v6}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->a(Z)V

    goto :goto_2

    .line 161
    :cond_5
    invoke-direct {p0, v5}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->a(Z)V

    .line 163
    :try_start_3
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->h:Ljava/lang/String;

    const-string/jumbo v5, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 164
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 168
    :catch_2
    move-exception v0

    .line 169
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_4
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d:Landroid/widget/ToggleButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    .prologue
    .line 45
    .line 4216
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4217
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->b()V

    .line 4223
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 308
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "dt_secret_chat"

    const-string/jumbo v4, "secret_chat_icon"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "secretChatIcon":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 311
    const/4 v1, 0x1

    .line 315
    .local v1, "secretIconText":I
    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 317
    :cond_0
    const/4 v1, 0x1

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 320
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->j:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 322
    :cond_2
    return-void

    .line 313
    .end local v1    # "secretIconText":I
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "secretIconText":I
    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->c()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 189
    .local v0, "vid":I
    sget v1, Lezg$h;->setting_secret_chat_icon:I

    if-ne v0, v1, :cond_0

    .line 190
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/secret_chat_icon_setting.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lezg$j;->activity_secret_chat_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->setContentView(I)V

    .line 65
    sget v0, Lezg$h;->setting_secret_chat_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->b:Landroid/widget/TextView;

    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->c()V

    .line 68
    sget v0, Lezg$h;->setting_hide_secret_chat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->c:Landroid/widget/ToggleButton;

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->c:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->c:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v0, Lezg$h;->setting_open_secure_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->f:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->f:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 80
    sget v0, Lezg$h;->setting_open_secure:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->d:Landroid/widget/ToggleButton;

    .line 81
    sget v0, Lezg$h;->setting_open_secure:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->e:Landroid/widget/TextView;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->a(Z)V

    .line 1088
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->a(Lcom/alibaba/wukong/Callback;)V

    .line 1110
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->c(Lcom/alibaba/wukong/Callback;)V

    .line 1325
    new-instance v0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$7;-><init>(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->i:Landroid/content/BroadcastReceiver;

    .line 1341
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1342
    const-string/jumbo v1, "secret_icon_update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1343
    const-string/jumbo v1, "secret_icon_secure_update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1344
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 355
    .line 3348
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3349
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 356
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 357
    return-void
.end method
