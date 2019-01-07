.class final Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;
.super Ljava/lang/Object;
.source "RecipientsAddressPanel.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 725
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 745
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 747
    invoke-interface {v0, v1, p1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Landroid/text/Editable;)V

    .line 750
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 728
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 733
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->g(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 734
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->g(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->h(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 737
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->h(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$9;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;->a(ILcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 741
    :cond_2
    return-void
.end method
