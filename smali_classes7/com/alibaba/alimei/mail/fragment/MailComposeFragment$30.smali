.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$30;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lxv;


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
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 3692
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$30;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 3711
    const-string/jumbo v0, "refreshAttachmentFromLocal.queryMailAttachments"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 3712
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3692
    check-cast p1, Ljava/util/List;

    .line 4695
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$30;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4698
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$30;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4699
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 4700
    iget v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    if-nez v2, :cond_1

    .line 4701
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$30;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4702
    :cond_1
    iget v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4703
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$30;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->P(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4706
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$30;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 3692
    :cond_3
    return-void
.end method
