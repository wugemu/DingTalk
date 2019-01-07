.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;
.super Landroid/content/BroadcastReceiver;
.source "TeleConfRunningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 668
    const-string/jumbo v2, "com.workapp.teleonf.phonecall.ringing"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 670
    invoke-static {}, Lewg;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 672
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 675
    :cond_0
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Broadcast from Phone Ringing"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_1
    :goto_0
    return-void

    .line 676
    :cond_2
    const-string/jumbo v2, "com.workapp.teleonf.hangup"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 677
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Broadcast from hangup"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string/jumbo v2, "calling_operation"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 679
    .local v1, "key":I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_3

    .line 680
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Broadcast from hangup, ringing, hideWaitingWindow"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    goto :goto_0

    .line 682
    :cond_3
    if-nez v1, :cond_1

    .line 683
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Broadcast from hangup, idle, exitActivity"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 686
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 688
    :cond_4
    invoke-static {}, Lewg;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 689
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a()I

    move-result v2

    if-lez v2, :cond_1

    .line 690
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 691
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Leuj$l;->conf_txt_terminate_prompt:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 692
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v3, Leuj$l;->sure:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 700
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v3, Leuj$l;->cancel:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$49;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 706
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method
