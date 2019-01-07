.class public Lcom/alibaba/android/ding/widget/ScrollableViewPager;
.super Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;
.source "ScrollableViewPager.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->a:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->a:Z

    .line 25
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->a:Z

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "scrollable"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->a:Z

    .line 38
    return-void
.end method
