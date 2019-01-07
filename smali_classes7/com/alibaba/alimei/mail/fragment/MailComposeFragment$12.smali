.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$12;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->onCreate(Landroid/os/Bundle;)V
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
    .line 655
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$12;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 8
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 658
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$12;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 677
    :cond_0
    return-void

    .line 661
    :cond_1
    const-string/jumbo v2, "basic_AttachmentDownload"

    iget-object v3, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    iget-object v2, p1, Lyc;->g:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 664
    iget-object v2, p1, Lyc;->g:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-eqz v2, :cond_0

    .line 668
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$12;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 670
    iget-object v1, p1, Lyc;->g:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 671
    .local v1, "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$12;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 672
    .local v0, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    iget-wide v6, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 673
    iget-object v3, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    goto :goto_0
.end method
