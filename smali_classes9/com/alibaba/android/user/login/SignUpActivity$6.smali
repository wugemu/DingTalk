.class final Lcom/alibaba/android/user/login/SignUpActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "SignUpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SignUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 303
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const-string/jumbo v3, "com.workapp.select.area"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    const-string/jumbo v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "areaName":Ljava/lang/String;
    const-string/jumbo v3, "code"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "areaCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v3, v1}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v3, v3, Lcom/alibaba/android/user/login/SignUpActivity;->h:Landroid/view/View;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    sget v6, Lezg$l;->login_title_select_area:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/user/login/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    .line 312
    invoke-static {v5}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v5, v5, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    .line 313
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 311
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    .end local v0    # "areaCode":Ljava/lang/String;
    .end local v1    # "areaName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "internal_action_privacy_agreement"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    const-string/jumbo v4, "privacy_broadcast_agreement"

    invoke-static {v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 317
    new-array v3, v9, [Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/android/user/login/SignUpActivity;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, " action_privacy_agreement"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    const-string/jumbo v3, "from"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "tag":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/user/login/SignUpActivity;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 321
    new-array v3, v9, [Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/android/user/login/SignUpActivity;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, " not from here"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 325
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/login/SignUpActivity;->b(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfrb;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/SignUpActivity;->c(Lcom/alibaba/android/user/login/SignUpActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lfrb;->a(J)Z

    move-result v3

    if-nez v3, :cond_4

    .line 329
    new-array v3, v9, [Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/android/user/login/SignUpActivity;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, " called in one second"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 333
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    const-string/jumbo v4, "privacy_start_login"

    invoke-static {v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 334
    new-array v3, v9, [Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/android/user/login/SignUpActivity;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, " start login"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/login/SignUpActivity;->d(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/SignUpActivity;->e(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/login/SignUpActivity;->d(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/login/SignUpActivity$6;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/SignUpActivity;->e(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/android/user/login/SignUpActivity;->b(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
