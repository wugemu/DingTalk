.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic d:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;[ILcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 4221
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->d:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->a:[I

    iput-object p3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iput-object p4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->c:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 4224
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->d:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4243
    :goto_0
    return-void

    .line 4227
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->a:[I

    aput p2, v1, v3

    .line 4228
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->a:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4229
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->a:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcng;

    iget-object v0, v1, Lcng;->c:Ljava/lang/String;

    .line 4230
    .local v0, "menuName":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->d:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->W(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4231
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->a:[I

    aget v1, v1, v3

    if-eqz v1, :cond_2

    .line 4232
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->d:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->X(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v2, v0}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 4236
    :goto_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->d:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 4237
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->d:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Y(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 4246
    .end local v0    # "menuName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "mail_duoyu_DefaultSender"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 4242
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->c:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 4234
    .restart local v0    # "menuName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;->d:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->X(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    goto :goto_1
.end method
