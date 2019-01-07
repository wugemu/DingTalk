.class final Lbae$3;
.super Ljava/lang/Object;
.source "EditEventActivityPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbae;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbae;


# direct methods
.method constructor <init>(Lbae;)V
    .locals 0
    .param p1, "this$0"    # Lbae;

    .prologue
    .line 537
    iput-object p1, p0, Lbae$3;->a:Lbae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 537
    .line 2540
    sget v0, Laxp$i;->dt_modify_event_success_toast:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2541
    iget-object v0, p0, Lbae$3;->a:Lbae;

    iget-object v0, v0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->H_()V

    .line 2542
    iget-object v0, p0, Lbae$3;->a:Lbae;

    iget-object v0, v0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 537
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 551
    iget-object v0, p0, Lbae$3;->a:Lbae;

    iget-object v0, v0, Lbae;->a:Lbac$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbac$b;->i(Z)V

    .line 552
    iget-object v0, p0, Lbae$3;->a:Lbae;

    iget-object v0, v0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->H_()V

    .line 553
    if-eqz p1, :cond_0

    const-string/jumbo v0, "431020"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lbae$3;->a:Lbae;

    .line 1600
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, v0, Lbae;->a:Lbac$b;

    invoke-interface {v2}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1601
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1602
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_ignore_and_send:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbae$4;

    invoke-direct {v3, v0}, Lbae$4;-><init>(Lbae;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1608
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->cancel:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbae$5;

    invoke-direct {v3, v0}, Lbae$5;-><init>(Lbae;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1613
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 563
    :goto_0
    return-void

    .line 556
    :cond_0
    const-string/jumbo v0, "431075"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    sget v0, Laxp$i;->dt_ding_meeting_room_occupied:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 559
    :cond_1
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 547
    return-void
.end method
