.class final Ljjx$1;
.super Landroid/content/BroadcastReceiver;
.source "PushInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljjx;


# direct methods
.method constructor <init>(Ljjx;)V
    .locals 0
    .param p1, "this$0"    # Ljjx;

    .prologue
    .line 151
    iput-object p1, p0, Ljjx$1;->a:Ljjx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-object v3, p0, Ljjx$1;->a:Ljjx;

    invoke-static {v3}, Ljjx;->a(Ljjx;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcms;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljjx$1;->a:Ljjx;

    invoke-static {v3}, Ljjx;->b(Ljjx;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p0, Ljjx$1;->a:Ljjx;

    invoke-static {v3}, Ljjx;->a(Ljjx;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcms;->k(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    const-string/jumbo v3, "LIFECYCLE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 157
    .local v2, "mLifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    invoke-interface {v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->getForegroundTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v3, Lbtp$g;->dt_lv_live_no_wifi:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 161
    sget v3, Lbtp$g;->sure:I

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 162
    iget-object v3, p0, Ljjx$1;->a:Ljjx;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    invoke-static {v3, v4}, Ljjx;->a(Ljjx;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 164
    :try_start_0
    iget-object v3, p0, Ljjx$1;->a:Ljjx;

    invoke-static {v3}, Ljjx;->c(Ljjx;)Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v2    # "mLifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .restart local v2    # "mLifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "show network dialog failed"

    .line 1013
    const-string/jumbo v4, "live"

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v2    # "mLifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_1
    :try_start_1
    iget-object v3, p0, Ljjx$1;->a:Ljjx;

    invoke-static {v3}, Ljjx;->c(Ljjx;)Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, p0, Ljjx$1;->a:Ljjx;

    invoke-static {v3}, Ljjx;->c(Ljjx;)Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 175
    :catch_1
    move-exception v3

    const-string/jumbo v3, "dismiss network dialog failed"

    .line 2013
    const-string/jumbo v4, "live"

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v3, p0, Ljjx$1;->a:Ljjx;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljjx;->a(Ljjx;Z)Z

    goto :goto_0
.end method
