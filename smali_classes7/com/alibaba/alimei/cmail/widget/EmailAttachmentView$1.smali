.class final Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$1;
.super Ljava/lang/Object;
.source "EmailAttachmentView.java"

# interfaces
.implements Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$1;->a:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .param p1, "hasImageContent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$1;->a:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$1;->a:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$1;->a:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->b(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$1;->a:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->c(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$1;->a:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->e(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$1;->a:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$1;->a:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    invoke-static {v2}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->d(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/MailListPerfTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$1;->a:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->c(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
