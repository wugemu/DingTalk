.class final Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$1;
.super Ljava/lang/Object;
.source "CMailNewAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    .line 1097
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->F()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    iget-boolean v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->b:Z

    if-eqz v1, :cond_1

    .line 1102
    sget v1, Laxo$i;->loading:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->a(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->m_()V

    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1106
    sget v2, Laxo$i;->dingtalk_account_label:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Laxo$i;->mail_modify_ding_alert:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->a:Landroid/widget/EditText;

    .line 1107
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Laxo$i;->cancel:I

    new-instance v4, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$4;

    invoke-direct {v4, v0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$4;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)V

    .line 1108
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Laxo$i;->sure:I

    new-instance v4, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$3;

    invoke-direct {v4, v0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$3;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)V

    .line 1114
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1120
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
