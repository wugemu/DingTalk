.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$27;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
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
    .line 3389
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$27;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3392
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$27;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3402
    :cond_0
    :goto_0
    return-void

    .line 3393
    :cond_1
    invoke-static {}, Lacg;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3395
    .local v1, "removeWills":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$27;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 3396
    .local v0, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Luf;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3397
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3399
    .end local v0    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$27;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 3400
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$27;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->R(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    goto :goto_0
.end method
