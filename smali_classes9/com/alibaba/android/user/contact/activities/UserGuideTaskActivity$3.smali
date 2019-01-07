.class final Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "UserGuideTaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$3;->a:Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "action_im_top_close_new_task_dialog"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    const-string/jumbo v2, "url"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$3;->a:Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$3;->a:Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->finish()V

    .line 113
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    return-void

    .restart local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
