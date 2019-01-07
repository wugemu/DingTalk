.class final Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;
.super Ljava/lang/Object;
.source "SecurityCenterActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lfqn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 484
    check-cast p1, Lfqn;

    .line 1488
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;Z)Z

    .line 1493
    if-eqz p1, :cond_0

    .line 1494
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->k(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lfqn;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v2, v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;I)I

    .line 1495
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->d(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)I

    move-result v0

    if-lez v0, :cond_2

    .line 1496
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->f(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    sget v3, Lezg$l;->dt_user_security_header_advice_danger:I

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->d(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1497
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->g(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lezg$l;->dt_user_security_header_action_danger:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1498
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->e(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1499
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    sget v2, Lezg$h;->security_center_iv_tip:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v2, Lezg$g;->icon_security_center_danger:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1507
    :goto_1
    const-class v0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "getAdvice suc:%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->d(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1494
    goto :goto_0

    .line 1501
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->f(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lezg$l;->dt_user_security_header_advice_safety:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1502
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->g(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lezg$l;->dt_user_security_header_action_safety:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1503
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->e(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1504
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    sget v2, Lezg$h;->security_center_iv_tip:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v2, Lezg$g;->icon_security_center_safety:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 518
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;Z)Z

    .line 519
    const-class v0, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getAdvice fail:%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 514
    return-void
.end method
