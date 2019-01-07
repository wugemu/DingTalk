.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "SignUpWithPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 785
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    const-string/jumbo v1, "com.workapp.select.area"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 789
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "code"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->h(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 790
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const-string/jumbo v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->i(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 791
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->m(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1, v6}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Z)V

    .line 793
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->r(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/view/View;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    sget v4, Lezg$l;->login_title_select_area:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->m(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 794
    :cond_2
    const-string/jumbo v1, "internal_action_privacy_agreement"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 796
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const-string/jumbo v2, "privacy_broadcast_agreement"

    invoke-static {v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 797
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "SignUpWithPwdActivity"

    aput-object v2, v1, v5

    const-string/jumbo v2, " action_privacy_agreement"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    const-string/jumbo v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "tag":Ljava/lang/String;
    const-string/jumbo v1, "SignUpWithPwdActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 801
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "SignUpWithPwdActivity"

    aput-object v2, v1, v5

    const-string/jumbo v2, " not from here"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 805
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->s(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfrb;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->t(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lfrb;->a(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 809
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "SignUpWithPwdActivity"

    aput-object v2, v1, v5

    const-string/jumbo v2, " called in one second"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 813
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const-string/jumbo v2, "privacy_start_login"

    invoke-static {v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 814
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "SignUpWithPwdActivity"

    aput-object v2, v1, v5

    const-string/jumbo v2, " start login"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->s(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->u(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 819
    .end local v0    # "tag":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "action_user_alipay_login_entry"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1, v6}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->c(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Z)Z

    .line 821
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$9;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1, v5}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Z)V

    goto/16 :goto_0
.end method
