.class public abstract Lkew;
.super Ljava/lang/Object;
.source "PtrDefaultHandler.java"

# interfaces
.implements Lkex;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 4
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "header"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    .line 2009
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_4

    .line 2010
    instance-of v2, p2, Landroid/widget/AbsListView;

    if-eqz v2, :cond_2

    .line 2011
    check-cast p2, Landroid/widget/AbsListView;

    .line 2012
    .end local p2    # "content":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    if-ge v2, v3, :cond_1

    :cond_0
    move v2, v0

    .line 1032
    :goto_0
    if-nez v2, :cond_5

    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 2012
    goto :goto_0

    .line 2016
    .restart local p2    # "content":Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0

    .line 2019
    :cond_4
    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    goto :goto_0

    .end local p2    # "content":Landroid/view/View;
    :cond_5
    move v0, v1

    .line 37
    goto :goto_1
.end method
