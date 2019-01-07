.class public Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;
.super Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;
.source "SWJKViewPager.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;->a:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;->a:Z

    .line 24
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 29
    const/4 v2, 0x0

    .line 31
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 32
    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "child":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 33
    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 36
    .local v1, "h":I
    if-le v1, v2, :cond_0

    .line 37
    move v2, v1

    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "h":I
    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 43
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->onMeasure(II)V

    .line 44
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollble(Z)V
    .locals 0
    .param p1, "isCanScroll"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;->a:Z

    .line 74
    return-void
.end method
