.class final Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$2;
.super Ljava/lang/Object;
.source "CMailConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 569
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 570
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .line 1606
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    iget-object v2, v1, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1607
    :goto_0
    if-eqz v0, :cond_1

    .line 1908
    const-string/jumbo v0, "mail_logout_click_almail"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 1616
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->showLoadingDialog()V

    .line 1617
    invoke-static {}, Lro;->a()Lro;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;

    invoke-direct {v4, v1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v2, v3, v0}, Lro;->a(Ljava/lang/String;Lcma;)V

    .line 571
    return-void

    .line 1606
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1912
    :cond_1
    const-string/jumbo v0, "mail_logout_click_nonalimei"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 1612
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    iget-object v2, v1, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lpq;->logout(Ljava/lang/String;Lxv;)V

    goto :goto_1
.end method
