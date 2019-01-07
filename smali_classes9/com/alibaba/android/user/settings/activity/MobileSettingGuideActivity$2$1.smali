.class final Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2$1;
.super Ljava/lang/Object;
.source "MobileSettingGuideActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2$1;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2$1;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->a(Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    const-string/jumbo v0, "phone_number"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2$1;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->a(Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v0, "phone_state_code"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2$1;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->a(Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v0, "intent_key_is_change_mobile_number"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    :cond_0
    return-object p1
.end method
