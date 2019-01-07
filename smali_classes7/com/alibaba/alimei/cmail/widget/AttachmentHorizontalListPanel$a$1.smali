.class final Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a$1;
.super Ljava/lang/Object;
.source "AttachmentHorizontalListPanel.java"

# interfaces
.implements Lcom/alibaba/alimei/cmail/widget/EmailAttachmentView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a$1;->b:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    iput p2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 2
    .param p1, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a$1;->b:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->c(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a$1;->b:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->c(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a$1;->a:I

    invoke-interface {v0, v1, p1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;->a(ILcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_0
.end method
