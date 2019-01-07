.class final Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SendMsmVerifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SendMsmVerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

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
    const/4 v4, 0x0

    .line 105
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string/jumbo v0, "action_key_upstream_sms_arrive"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->a(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;Z)Z

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->a(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, "upstream sms arrived and remove delayShowErrorRunnable"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Lcom/alibaba/android/user/login/verify/VerifyContract$a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 119
    const-string/jumbo v0, "user"

    const-string/jumbo v1, "SendMsmVerifyActivity"

    const-string/jumbo v2, "upstream sms arrive but mVerifyPresenter is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->c(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->d(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$l;->dt_register_up_sms_checking:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Lcom/alibaba/android/user/login/verify/VerifyContract$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->e(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->yourPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->e(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->code:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$2;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->f(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/login/verify/VerifyContract$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;Z)V

    goto :goto_0
.end method
