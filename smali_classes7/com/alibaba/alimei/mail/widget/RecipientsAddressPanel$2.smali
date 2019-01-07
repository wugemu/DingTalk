.class final Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$2;
.super Ljava/lang/Object;
.source "RecipientsAddressPanel.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/widget/ChipsRecipientAdapter$a;


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
    .line 754
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$2;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 757
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$2;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->h(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$2;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->h(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$2;->a:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-interface {v0, p1, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;->a(ILcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 760
    :cond_0
    return-void
.end method
