.class final Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$7;
.super Ljava/lang/Object;
.source "RecipientsAddressPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 672
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$7;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$7;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$7;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->f(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter;->a(I)Lsf;

    move-result-object v0

    .line 679
    .local v0, "model":Lsf;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$7;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$7;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$7;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    new-instance v3, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 1157
    iget-object v4, v0, Lsf;->b:Ljava/lang/String;

    .line 2141
    iget-object v5, v0, Lsf;->a:Ljava/lang/String;

    .line 685
    invoke-direct {v3, v4, v5}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Lcom/alibaba/alimei/sdk/model/AddressModel;)V

    .line 689
    .end local v0    # "model":Lsf;
    :cond_0
    return-void
.end method
