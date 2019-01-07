.class final Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$2;
.super Ljava/lang/Object;
.source "EmailAttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

.field final synthetic b:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$2;->b:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$2;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$2;->b:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->f(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$2;->b:Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;->f(Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView;)Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$2;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$a;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 136
    :cond_0
    return-void
.end method
