.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$40;
.super Lcmi;
.source "MailComposeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Labv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 4622
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$40;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$40;->a:I

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 4636
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$40;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4642
    :cond_0
    :goto_0
    return-void

    .line 4639
    :cond_1
    if-eqz p3, :cond_0

    .line 4640
    const-string/jumbo v0, "getReceiverListModelFromServer"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4622
    check-cast p1, Labv;

    .line 5625
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$40;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5628
    if-eqz p1, :cond_0

    iget-object v0, p1, Labv;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Labv;->b:Ljava/util/List;

    .line 5629
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5630
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$40;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$40;->a:I

    iget-object v2, p1, Labv;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;ILjava/util/List;)V

    .line 4622
    :cond_0
    return-void
.end method
