.class final Lcom/alibaba/android/user/connection/ui/FastScrollLinearLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "FastScrollLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/ui/FastScrollLinearLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/ui/FastScrollLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/ui/FastScrollLinearLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/ui/FastScrollLinearLayoutManager;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/android/user/connection/ui/FastScrollLinearLayoutManager$1;->a:Lcom/alibaba/android/user/connection/ui/FastScrollLinearLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final calculateTimeForScrolling(I)I
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 30
    const/16 v0, 0xbb8

    if-le p1, v0, :cond_0

    .line 31
    const/16 p1, 0xbb8

    .line 34
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    return v0
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/FastScrollLinearLayoutManager$1;->a:Lcom/alibaba/android/user/connection/ui/FastScrollLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/connection/ui/FastScrollLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
