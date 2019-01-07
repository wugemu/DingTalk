.class final Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$4;
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
    .line 222
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$4;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
