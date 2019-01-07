.class final Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$4;
.super Ljava/lang/Object;
.source "DeveloperOptionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$4;->a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 106
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$4;->a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->c(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "pref_key_settings_developer_options_smartapp_debugging"

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$4;->a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->c(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.android.user.settings.ACTION_SETTINGS_DEVELOPER_MODE_WEBVIEW_DEBUGGABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$4;->a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 112
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
