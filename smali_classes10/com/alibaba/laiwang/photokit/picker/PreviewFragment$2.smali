.class final Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$2;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 189
    .local v0, "selectItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$2;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 193
    .end local v0    # "selectItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_0
    return-void
.end method
