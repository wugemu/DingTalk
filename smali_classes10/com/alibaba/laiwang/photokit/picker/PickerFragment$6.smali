.class final Lcom/alibaba/laiwang/photokit/picker/PickerFragment$6;
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
    .line 607
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

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
    .line 610
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$6;->a:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;

    move-result-object v1

    invoke-virtual {v1}, Lhca;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a(Ljava/util/List;)V

    .line 614
    :cond_0
    return-void
.end method
