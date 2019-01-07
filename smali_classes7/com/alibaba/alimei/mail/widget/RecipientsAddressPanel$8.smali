.class final Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$8;
.super Ljava/lang/Object;
.source "RecipientsAddressPanel.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f()V
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
    .line 691
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$8;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 694
    const/16 v3, 0x43

    if-ne v3, p2, :cond_1

    .line 695
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 696
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$8;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 697
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "inputContent":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 699
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$8;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3, p2, p3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;ILandroid/view/KeyEvent;)V

    .line 721
    .end local v1    # "inputContent":Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 701
    :cond_1
    const/16 v3, 0x42

    if-ne v3, p2, :cond_0

    .line 702
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 703
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$8;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 704
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$8;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->getCount()I

    move-result v0

    .line 705
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 706
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$8;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(I)Lsf;

    move-result-object v2

    .line 707
    .local v2, "model":Lsf;
    if-eqz v2, :cond_0

    .line 710
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$8;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 711
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$8;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$8;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    new-instance v5, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 1157
    iget-object v6, v2, Lsf;->b:Ljava/lang/String;

    .line 2141
    iget-object v7, v2, Lsf;->a:Ljava/lang/String;

    .line 716
    invoke-direct {v5, v6, v7}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-interface {v3, v4, v5}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Lcom/alibaba/alimei/sdk/model/AddressModel;)V

    goto :goto_0
.end method
