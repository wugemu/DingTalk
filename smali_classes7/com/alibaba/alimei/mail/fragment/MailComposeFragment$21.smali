.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;


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
    .line 2573
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Landroid/text/Editable;)V
    .locals 3
    .param p1, "panel"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .param p2, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 2602
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    invoke-static {v1, p1, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Z)V

    .line 2603
    return-void

    .line 2602
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Lcom/alibaba/alimei/sdk/model/AddressModel;)V
    .locals 2
    .param p1, "panel"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .param p2, "address"    # Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 2608
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Z

    .line 2609
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2610
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c()V

    .line 2611
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;Z)V

    .line 2622
    :cond_0
    :goto_0
    return-void

    .line 2612
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->K(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 2613
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->K(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c()V

    .line 2614
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->K(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;Z)V

    goto :goto_0

    .line 2615
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 2616
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c()V

    .line 2617
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;Z)V

    goto :goto_0

    .line 2618
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->p(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2619
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->p(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c()V

    .line 2620
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->p(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Z)V
    .locals 2
    .param p1, "panel"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2598
    :cond_0
    :goto_0
    return-void

    .line 2580
    :cond_1
    if-eqz p2, :cond_5

    .line 2581
    invoke-virtual {p1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a()V

    .line 2582
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 2583
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->I(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/view/View;)V

    goto :goto_0

    .line 2587
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 2588
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->J(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/view/View;)V

    goto :goto_0

    .line 2589
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->K(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 2590
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->L(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/view/View;)V

    goto :goto_0

    .line 2591
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->p(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2592
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->M(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/view/View;)V

    goto :goto_0

    .line 2596
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->N(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    goto :goto_0
.end method
