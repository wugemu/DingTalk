.class public final Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;
.super Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;
.source "BurnChatPwdActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 67
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/lock_pwd_settings.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->finish()V

    .line 69
    return-void
.end method

.method protected final h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "conversation_id"

    iget-object v2, p0, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "to_page"

    const-string/jumbo v2, "to_chat"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v1, "intent_is_burn_chat"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 82
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->finish()V

    .line 83
    return-void

    .line 80
    :cond_0
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/burn_chat_session_list.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->a:Ljava/lang/String;

    .line 27
    sget v0, Lezg$l;->manage_security_passcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->c(Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1043
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1044
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1045
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1046
    new-instance v1, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity$1;-><init>(Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->b:Landroid/content/BroadcastReceiver;

    .line 1053
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final onDestroy()V
    .locals 1

    .prologue
    .line 33
    .line 1060
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BurnChatPwdActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/pwd/activities/ValidatePwdActivity;->onDestroy()V

    .line 35
    return-void
.end method
