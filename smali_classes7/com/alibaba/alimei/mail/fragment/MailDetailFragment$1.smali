.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$1;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$1;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$1;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 297
    if-nez p2, :cond_2

    .line 1759
    const-string/jumbo v1, "mail_attachments_saveto_space_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 302
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$1;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$1;->b:Ljava/lang/String;

    if-eqz p2, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "downloadUrl":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 304
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$1;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$1;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$1;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    if-eqz p2, :cond_4

    :goto_2
    invoke-interface {v1, v0, v4, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 308
    :cond_1
    return-void

    .line 299
    .end local v0    # "downloadUrl":Ljava/lang/String;
    :cond_2
    if-ne p2, v2, :cond_0

    .line 1763
    const-string/jumbo v1, "mail_attachments_send_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 302
    goto :goto_1

    .restart local v0    # "downloadUrl":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 305
    goto :goto_2
.end method
