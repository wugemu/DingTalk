.class public Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;
.source "CalendarWidgetMonthViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager$a;
    }
.end annotation


# instance fields
.field c:Z

.field private d:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->c:Z

    .line 23
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 63
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 64
    .local v0, "height":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    div-float/2addr v4, v0

    mul-float v1, v4, v3

    .line 65
    .local v1, "newX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    div-float/2addr v4, v3

    mul-float v2, v4, v0

    .line 66
    .local v2, "newY":F
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 67
    return-object p1
.end method


# virtual methods
.method protected final b(Lckq;)V
    .locals 1
    .param p1, "calendarBean"    # Lckq;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->d:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager$a;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->d:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager$a;

    invoke-interface {v0, p1}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager$a;->a(Lckq;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->c:Z

    if-eqz v1, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 74
    .local v0, "intercepted":Z
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 77
    .end local v0    # "intercepted":Z
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

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

    .line 34
    const/4 v2, 0x0

    .line 36
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 37
    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "child":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 38
    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 41
    .local v1, "h":I
    if-le v1, v2, :cond_0

    .line 42
    move v2, v1

    .line 36
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "h":I
    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 48
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->onMeasure(II)V

    .line 49
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->c:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarBaseMonthViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPageChangePreLoader(Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager$a;)V
    .locals 0
    .param p1, "preLoader"    # Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager$a;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager;->d:Lcom/alibaba/lightapp/runtime/adapter/CalendarWidgetMonthViewPager$a;

    .line 27
    return-void
.end method
