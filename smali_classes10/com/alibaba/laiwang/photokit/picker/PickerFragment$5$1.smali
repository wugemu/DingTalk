.class final Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 576
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v2

    .line 1167
    iget-object v2, v2, Lhca;->d:Ljava/util/List;

    .line 576
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhbz;

    .line 578
    .local v1, "folder":Lhbz;
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .line 2044
    iget-object v3, v1, Lhbz;->b:Ljava/lang/String;

    .line 578
    invoke-static {v2, v3}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 580
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "pref_folder_id"

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    iget-object v4, v4, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lhcy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->c(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Landroid/widget/TextView;

    move-result-object v2

    .line 2048
    iget-object v3, v1, Lhbz;->c:Ljava/lang/String;

    .line 582
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhca;->c(Ljava/lang/String;)V

    .line 586
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhca;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 587
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    if-eqz v0, :cond_0

    .line 588
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    move-result-object v2

    .line 2078
    iput-object v0, v2, Lhbl;->d:Ljava/util/List;

    .line 589
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;

    move-result-object v2

    invoke-virtual {v2}, Lhbl;->notifyDataSetChanged()V

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5$1;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->l(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->dismiss()V

    .line 592
    return-void
.end method
