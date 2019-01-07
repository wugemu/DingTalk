.class final Lcom/alibaba/android/ding/widget/DingAttachmentView$6;
.super Ljava/lang/Object;
.source "DingAttachmentView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingAttachmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/ding/widget/DingAttachmentView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingAttachmentView;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->b:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    iput-object p2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 662
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->ding_attachment_album:I

    if-ne v0, v1, :cond_2

    .line 1350
    const-string/jumbo v0, "ding_addfile_pic_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->b:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->b:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView$a;->a()V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->b:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->b:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->b:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->c(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbjv;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 683
    :cond_1
    :goto_0
    return-void

    .line 671
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->ding_attachment_space:I

    if-ne v0, v1, :cond_4

    .line 1354
    const-string/jumbo v0, "ding_addfile_space_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->b:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->b:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView$a;->a()V

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->b:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->b:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->b:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->l(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbjv;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$6;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->cancel:I

    if-ne v0, v1, :cond_1

    .line 680
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
