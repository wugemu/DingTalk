.class public Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "AccountSafeActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private b:Ljava/lang/String;

.field private c:Lfws;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lfri$b;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->l:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Lfri$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->h:Lfri$b;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;Lfws;)Lfws;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;
    .param p1, "x1"    # Lfws;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->c:Lfws;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 158
    sget v5, Lezg$h;->setting_unregister:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 160
    .local v4, "unregisterView":Landroid/view/View;
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v5

    const-string/jumbo v6, "f_account_unregister_show_always"

    .line 3083
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v5

    .line 160
    if-eqz v5, :cond_0

    .line 162
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :goto_0
    return-void

    .line 166
    :cond_0
    const-wide/16 v0, -0x1

    .line 167
    .local v0, "expireTime":J
    const-string/jumbo v5, "unregister_enable_expire_time"

    invoke-static {v5}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "expireTimeStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 170
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 176
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    .line 177
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 171
    :catch_0
    move-exception v3

    .line 172
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 179
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 8
    .param p1, "isSet"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$g;->icon_device_safe:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 273
    .local v2, "tempIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v3, v4, 0x6

    .line 274
    .local v3, "width":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v0, v4, 0x6

    .line 275
    .local v0, "height":I
    if-eqz p1, :cond_0

    .line 276
    sget v4, Lezg$l;->icon_settinground_fill:I

    sget v5, Lezg$e;->text_color_green:I

    invoke-static {v4, v5, v3, v0}, Lfxp;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 278
    .local v1, "leftIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v7, v7, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->d:Landroid/widget/TextView;

    sget v5, Lezg$l;->dt_login_facebox_settings_yes:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 288
    :goto_0
    return-void

    .line 282
    .end local v1    # "leftIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget v4, Lezg$l;->icon_settinground_fill:I

    sget v5, Lezg$e;->text_color_red:I

    invoke-static {v4, v5, v3, v0}, Lfxp;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 284
    .restart local v1    # "leftIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v7, v7, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 285
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->d:Landroid/widget/TextView;

    sget v5, Lezg$l;->dt_login_facebox_settings_no:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 258
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->c:Lfws;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->c:Lfws;

    iget-boolean v1, v1, Lfws;->a:Z

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$g;->icon_device_safe:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 260
    .local v0, "leftIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 261
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->j:Landroid/widget/TextView;

    sget v2, Lezg$l;->personal_device_safe_on:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 269
    :goto_0
    return-void

    .line 264
    .end local v0    # "leftIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$g;->icon_device_unsafe:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 265
    .restart local v0    # "leftIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 266
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 267
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->j:Landroid/widget/TextView;

    sget v2, Lezg$l;->personal_device_safe_off:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Lfws;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->c:Lfws;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->b()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->b:Ljava/lang/String;

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
    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 347
    .local v0, "vid":I
    sget v1, Lezg$h;->setting_pwd_bind_rl:I

    if-ne v0, v1, :cond_1

    .line 348
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;-><init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)V

    const-class v3, Lcma;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    sget v2, Lezg$l;->settings_verify_password_before_change:I

    .line 375
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lezg$l;->settings_old_password:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-static {p0, v1, v2, v3}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    sget v1, Lezg$h;->setting_mobile:I

    if-ne v0, v1, :cond_2

    .line 377
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/settings/mobile_guide.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_2
    sget v1, Lezg$h;->setting_device_rl:I

    if-ne v0, v1, :cond_3

    .line 379
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/user/device_setting.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_3
    sget v1, Lezg$h;->setting_pwd_lock:I

    if-ne v0, v1, :cond_4

    .line 381
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/lock_pwd_settings.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_4
    sget v1, Lezg$h;->setting_unregister:I

    if-ne v0, v1, :cond_0

    .line 383
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$7;-><init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)V

    const-class v3, Lcma;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    sget v2, Lezg$l;->unregister_pwd_confirm_title:I

    .line 405
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 383
    invoke-static {p0, v1, v2, v3}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget v0, Lezg$j;->activity_account_safe:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->setContentView(I)V

    .line 89
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1106
    sget v0, Lezg$h;->setting_mobile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 1107
    sget v0, Lezg$h;->user_safe_switch_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->j:Landroid/widget/TextView;

    .line 1108
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a()V

    .line 1109
    new-instance v0, Lfrk;

    invoke-direct {v0, p0}, Lfrk;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->h:Lfri$b;

    .line 1110
    sget v0, Lezg$h;->rl_setting_facebox:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->e:Landroid/view/View;

    .line 1111
    sget v0, Lezg$h;->face_login_divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->f:Landroid/view/View;

    .line 1112
    sget v0, Lezg$h;->face_login_title_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->g:Landroid/view/View;

    .line 1113
    sget v0, Lezg$h;->login_facebox_switch_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->d:Landroid/widget/TextView;

    .line 1114
    invoke-static {}, Lfls;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->h:Lfri$b;

    invoke-interface {v0}, Lfri$b;->h()Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_5

    move v0, v1

    .line 1186
    :goto_0
    invoke-static {}, Lfls;->a()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    .line 1187
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->e:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$2;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1198
    invoke-direct {p0, v2}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a(Z)V

    .line 1200
    if-nez v2, :cond_2

    .line 1201
    new-instance v0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)V

    .line 1226
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->h:Lfri$b;

    invoke-interface {v1, v0}, Lfri$b;->a(Lcma;)V

    .line 1119
    :cond_2
    invoke-static {}, Lfls;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->h:Lfri$b;

    invoke-interface {v0}, Lfri$b;->e()V

    .line 1122
    invoke-static {}, Lfls;->e()V

    .line 2132
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->i:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4

    .line 2133
    new-instance v0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->i:Landroid/content/BroadcastReceiver;

    .line 2152
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_user_facebox_login_set"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->personal_device_safe:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 93
    return-void

    :cond_5
    move v0, v2

    .line 1185
    goto :goto_0

    .line 1125
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 97
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->i:Landroid/content/BroadcastReceiver;

    .line 103
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 292
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 293
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-nez v1, :cond_0

    .line 294
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    .line 3306
    .local v0, "mobile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3307
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHintViewVisibility(I)V

    .line 3308
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(Ljava/lang/String;)V

    .line 4232
    .end local v0    # "mobile":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lfwr;->a()Lfwr;

    move-result-object v1

    invoke-virtual {v1}, Lfwr;->b()Lfws;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->c:Lfws;

    .line 4234
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->c:Lfws;

    if-nez v1, :cond_2

    .line 4235
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v2

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)V

    const-class v4, Lcma;

    invoke-interface {v1, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, v1}, Lfwu;->a(Lcma;)V

    .line 4254
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->b()V

    .line 4315
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)V

    invoke-interface {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->a(Lcom/alibaba/wukong/Callback;)V

    .line 303
    return-void
.end method
