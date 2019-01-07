.class final Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "CustomHorizontalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$1;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 98
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$1;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->a(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$1;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->b(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$1;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->a(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 100
    .local v0, "spaceWidth":I
    invoke-virtual {p1, v0, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 102
    .end local v0    # "spaceWidth":I
    :cond_0
    return-void
.end method
