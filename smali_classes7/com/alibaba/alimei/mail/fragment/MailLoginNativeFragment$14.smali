.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;
.super Ljava/lang/Object;
.source "MailLoginNativeFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->s(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    .line 1430
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1425
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1388
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->n(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    if-ne v2, v3, :cond_7

    .line 1389
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1390
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewVisible(I)V

    .line 1400
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 1401
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lafh;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget v2, v2, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 1402
    :cond_4
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;I)V

    .line 1420
    :cond_5
    :goto_1
    return-void

    .line 1392
    :cond_6
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewVisible(I)V

    goto :goto_0

    .line 1395
    :cond_7
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->n(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1396
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewVisible(I)V

    goto :goto_0

    .line 1403
    :cond_8
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lacn;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .line 1404
    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->f()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1405
    :cond_a
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;I)V

    .line 1406
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_b
    move v0, v1

    goto :goto_2

    .line 1408
    :cond_c
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;I)V

    .line 1409
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->p(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1410
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->q(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1411
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/widget/Button;

    move-result-object v2

    sget v3, Laxo$i;->dt_mail_agent_login:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1412
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->r(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1413
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1414
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1416
    :cond_d
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1
.end method
