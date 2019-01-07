.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 2042
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;->a:Z

    if-eqz v2, :cond_1

    .line 2043
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2044
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->u(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2045
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    move-result-object v0

    .line 2048
    :goto_0
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setVisibility(I)V

    .line 2050
    return-void

    .line 2047
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2048
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b()I

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method
