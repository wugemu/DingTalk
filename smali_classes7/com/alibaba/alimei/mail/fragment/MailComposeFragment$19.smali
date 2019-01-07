.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$19;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;


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
    .line 2514
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V
    .locals 2
    .param p1, "panel"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 2518
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2524
    :goto_0
    return-void

    .line 2521
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0, p1, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Z)V

    .line 2522
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Z

    .line 2523
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
