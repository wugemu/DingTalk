.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 1622
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    sget v2, Laxo$i;->dt_mail_detail_backtoconv_mtm:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1627
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1632
    :goto_0
    return-void

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    sget v2, Laxo$i;->dt_mail_detail_backtoconv_oto:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1630
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
