.class final Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment$1;
.super Ljava/lang/Object;
.source "BaseGridFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->f:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->f:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 126
    :cond_0
    return-void
.end method
