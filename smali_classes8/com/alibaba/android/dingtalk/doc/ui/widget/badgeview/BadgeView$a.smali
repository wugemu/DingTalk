.class final Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;
.super Landroid/view/ViewGroup;
.source "BadgeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;->a:Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

    .line 461
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 462
    return-void
.end method


# virtual methods
.method protected final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 456
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 458
    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 466
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 467
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 468
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 474
    const/4 v3, 0x0

    .local v3, "targetView":Landroid/view/View;
    const/4 v0, 0x0

    .line 475
    .local v0, "badgeView":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 476
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 477
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

    if-nez v4, :cond_0

    .line 478
    move-object v3, v1

    .line 475
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 483
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    if-nez v3, :cond_2

    .line 484
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 493
    :goto_2
    return-void

    .line 486
    :cond_2
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 487
    if-eqz v0, :cond_3

    .line 488
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 489
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 488
    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 491
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;->setMeasuredDimension(II)V

    goto :goto_2
.end method
