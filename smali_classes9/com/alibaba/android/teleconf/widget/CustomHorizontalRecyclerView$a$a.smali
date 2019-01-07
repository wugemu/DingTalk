.class final Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a$a;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "CustomHorizontalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a$a;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;

    .line 278
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 279
    return-void
.end method


# virtual methods
.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a$a;->a:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected final getHorizontalSnapPreference()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, -0x1

    return v0
.end method
