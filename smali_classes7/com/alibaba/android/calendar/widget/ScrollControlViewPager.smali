.class public Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;
.super Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;
.source "ScrollControlViewPager.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;->a:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;->a:Z

    .line 22
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;->a:Z

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 45
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
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 32
    :pswitch_0
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;->a:Z

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setCanScroll(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;->a:Z

    .line 26
    return-void
.end method
