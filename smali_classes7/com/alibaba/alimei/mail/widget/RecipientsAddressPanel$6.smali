.class final Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$6;
.super Ljava/lang/Object;
.source "RecipientsAddressPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/sdk/model/AddressModel;IZ)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$6;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 430
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$6;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 432
    .local v1, "bar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v0

    .line 433
    .local v0, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$6;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/sdk/model/AddressModel;)I

    .line 435
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$6;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$6;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;)V

    .line 446
    .end local v0    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v1    # "bar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    :cond_0
    :goto_0
    return-void

    .line 440
    .restart local v0    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .restart local v1    # "bar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$6;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/sdk/model/AddressModel;)I

    move-result v2

    .line 441
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 442
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$6;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setSelectedIndex(I)V

    goto :goto_0
.end method
