.class final Lcom/alibaba/android/oa/fragment/CommonOAFragment$16;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/oa/fragment/CommonOAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$16;->b:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    iput p2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$16;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 835
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$16;->a:I

    if-ne p3, v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$16;->b:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->h(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefv;

    .line 837
    .local v0, "item":Lefv;
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$16;->b:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a(Lcom/alibaba/android/oa/fragment/CommonOAFragment;Lefv;)V

    .line 838
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$16;->b:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->i(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    .line 840
    .end local v0    # "item":Lefv;
    :cond_0
    return-void
.end method
