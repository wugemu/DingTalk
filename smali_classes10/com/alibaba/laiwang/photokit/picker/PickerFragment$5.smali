.class final Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 559
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v2

    .line 1167
    iget-object v2, v2, Lhca;->d:Ljava/util/List;

    .line 559
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v2

    .line 2167
    iget-object v2, v2, Lhca;->d:Ljava/util/List;

    .line 559
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 561
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->l(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    move-result-object v2

    if-nez v2, :cond_2

    .line 562
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-virtual {v4}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v5}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v5

    .line 3167
    iget-object v5, v5, Lhca;->d:Ljava/util/List;

    .line 562
    invoke-direct {v3, v4, v5}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v2, v3}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    .line 563
    const/4 v0, 0x0

    .line 565
    .local v0, "c":I
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v2

    .line 4167
    iget-object v2, v2, Lhca;->d:Ljava/util/List;

    .line 565
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhbz;

    .line 566
    .local v1, "f":Lhbz;
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Ljava/lang/String;

    move-result-object v3

    .line 5044
    iget-object v4, v1, Lhbz;->b:Ljava/lang/String;

    .line 566
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 567
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->l(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    move-result-object v3

    .line 5064
    iput v0, v3, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->a:I

    .line 5065
    iget-object v4, v3, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->b:Lhbo;

    if-eqz v4, :cond_0

    .line 5066
    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->b:Lhbo;

    .line 6042
    iput v0, v3, Lhbo;->a:I

    .line 569
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 570
    goto :goto_0

    .line 572
    .end local v1    # "f":Lhbz;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->l(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    move-result-object v2

    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;

    invoke-direct {v3, p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;-><init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;)V

    .line 6098
    iput-object v3, v2, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->c:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$a;

    .line 596
    .end local v0    # "c":I
    :cond_2
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->l(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 597
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->l(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->dismiss()V

    .line 602
    :cond_3
    :goto_1
    return-void

    .line 599
    :cond_4
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->l(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->show()V

    goto :goto_1
.end method
