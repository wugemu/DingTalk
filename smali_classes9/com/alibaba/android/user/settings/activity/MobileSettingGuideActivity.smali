.class public Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "MobileSettingGuideActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->btn_change_mobile:I

    if-ne v0, v1, :cond_0

    .line 73
    new-instance v0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;)V

    sget v1, Lezg$l;->settings_verify_old_password:I

    .line 99
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lezg$l;->settings_old_password_for_enter:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x21

    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v3, Lezg$j;->activity_mobile_setting_guide:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->setContentView(I)V

    .line 43
    sget v3, Lezg$l;->change_phone_guide_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->setTitle(I)V

    .line 45
    sget v3, Lezg$h;->tv_your_phone:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->a:Landroid/widget/TextView;

    .line 46
    sget v3, Lezg$h;->tv_change_phone_tip:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->c:Landroid/widget/TextView;

    .line 47
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 49
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->c:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :goto_0
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lezg$l;->your_phone:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    .local v2, "phoneTip":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    sget v4, Lezg$l;->your_phone:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 57
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->text_color_dark:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sget v4, Lezg$l;->your_phone:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 58
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v1, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;)V

    .line 66
    .local v1, "firstLoadReceiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.workapp.change_mobile_success"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    invoke-interface {v3, v1, p0, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 69
    return-void

    .line 52
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "firstLoadReceiver":Landroid/content/BroadcastReceiver;
    .end local v2    # "phoneTip":Landroid/text/SpannableString;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
