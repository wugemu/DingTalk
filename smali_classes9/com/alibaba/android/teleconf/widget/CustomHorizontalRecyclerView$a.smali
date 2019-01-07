.class final Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "CustomHorizontalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 247
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    .line 248
    invoke-direct {p0, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 249
    return-void
.end method


# virtual methods
.method public final onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 269
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public final smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 261
    new-instance v0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a$a;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a$a;-><init>(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;Landroid/content/Context;)V

    .line 262
    .local v0, "scroller":Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 263
    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 264
    return-void
.end method
