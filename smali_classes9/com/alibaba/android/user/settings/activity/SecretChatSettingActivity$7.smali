.class final Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "SecretChatSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 328
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "secret_icon_update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->f(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V

    .line 339
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 332
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "secret_icon_secure_update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "lock_pwd_content"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "burn_chat_lock_content"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;->e(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;)V

    goto :goto_0
.end method
