.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 2470
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2473
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->a:Landroid/app/Activity;

    invoke-static {v3}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2493
    :cond_0
    :goto_0
    return-void

    .line 2477
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2478
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 2479
    const/4 v0, 0x0

    .line 2480
    .local v0, "serverId":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->G(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    move-result-object v3

    sget-object v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v3, v4, :cond_4

    .line 2481
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v0, v2

    .line 2486
    :cond_2
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2487
    .local v1, "tmpAttachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2488
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->H(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2490
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 2491
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    move-result-object v2

    .line 3100
    iget-object v3, v2, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    if-eqz v3, :cond_0

    .line 3101
    iget-object v2, v2, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 2481
    .end local v1    # "tmpAttachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;

    move-result-object v2

    iget-object v0, v2, Lagz;->c:Ljava/lang/String;

    goto :goto_1

    .line 2482
    :cond_4
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->G(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    move-result-object v3

    sget-object v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueForward:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->G(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    move-result-object v3

    sget-object v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReply:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->G(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    move-result-object v3

    sget-object v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReplyAll:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v3, v4, :cond_2

    .line 2483
    :cond_5
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v0, v2

    :goto_2
    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v2

    iget-object v0, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    goto :goto_2
.end method
