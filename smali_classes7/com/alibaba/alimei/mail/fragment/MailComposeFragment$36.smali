.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$36;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 4247
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$36;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4250
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$36;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4254
    :goto_0
    return-void

    .line 4253
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$36;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Z(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laxo$i;->icon_down:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
