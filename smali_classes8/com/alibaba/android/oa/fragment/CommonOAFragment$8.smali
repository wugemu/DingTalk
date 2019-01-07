.class public final Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CommonOAFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1188
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 1189
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->l(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment$8$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$8$1;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1197
    :cond_0
    return-void
.end method
