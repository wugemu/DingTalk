.class final Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$5;
.super Ljava/lang/Object;
.source "RecipientsAddressPanel.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 247
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$5;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 251
    if-eqz p2, :cond_0

    if-eq v3, p2, :cond_0

    const/4 v0, 0x5

    if-ne v0, p2, :cond_1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$5;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Z)V

    .line 253
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 254
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$5;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$5;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$5;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Z)V

    .line 258
    :cond_1
    return v3
.end method
