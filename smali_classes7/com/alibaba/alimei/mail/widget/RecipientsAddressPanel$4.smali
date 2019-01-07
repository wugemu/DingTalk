.class final Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;
.super Ljava/lang/Object;
.source "RecipientsAddressPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
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
    .line 199
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 202
    instance-of v3, p1, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 204
    check-cast v1, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    .line 205
    .local v1, "bar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v0

    .line 206
    .local v0, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/sdk/model/AddressModel;)I

    .line 208
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->e(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;)V

    .line 226
    .end local v0    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v1    # "bar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 213
    .restart local v0    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .restart local v1    # "bar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/sdk/model/AddressModel;)I

    move-result v2

    .line 214
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 215
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setSelectedIndex(I)V

    goto :goto_0

    .line 219
    .end local v0    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v1    # "bar":Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;
    .end local v2    # "index":I
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    if-ne p1, v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->d(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$4;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Landroid/view/View;)V

    goto :goto_0
.end method
