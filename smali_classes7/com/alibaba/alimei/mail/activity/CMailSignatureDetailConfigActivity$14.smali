.class final Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;
.super Ljava/lang/Object;
.source "CMailSignatureDetailConfigActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->h()V
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 489
    .line 1492
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    const-string/jumbo v0, "CMailSignatureDetail"

    const-string/jumbo v1, "mActivity.isDestroyed()"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    :goto_0
    return-void

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->dismissLoadingDialog()V

    .line 1497
    sget v0, Laxo$i;->dt_mail_signature_open_orgsignature_success:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 1498
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->o(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    .line 1499
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->p(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "signature_guide"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->q(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V

    goto :goto_0

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lacg;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 1503
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->finish()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 513
    const-string/jumbo v0, "CMailSignatureDetail"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    const-string/jumbo v0, "CMailSignatureDetail"

    const-string/jumbo v1, "mActivity.isDestroyed()"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    sget v0, Laxo$i;->dt_mail_signature_save_fail:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 519
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 509
    return-void
.end method
