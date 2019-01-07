.class public Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;
.super Landroid/widget/ScrollView;
.source "ScrollControlScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Scroller;

.field private b:Z

.field private c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;

.field private d:Z

.field private e:I

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->b:Z

    .line 27
    iput-boolean v1, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->d:Z

    .line 29
    iput v1, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->e:I

    .line 30
    new-instance v0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$1;-><init>(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->f:Ljava/lang/Runnable;

    .line 57
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->a:Landroid/widget/Scroller;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    .prologue
    .line 17
    iget v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->e:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->e:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;)Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;

    return-object v0
.end method


# virtual methods
.method public final a(III)V
    .locals 6
    .param p1, "fx"    # I
    .param p2, "fy"    # I
    .param p3, "duration"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollX()I

    move-result v0

    rsub-int/lit8 v3, v0, 0x0

    .line 103
    .local v3, "dx":I
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollY()I

    move-result v0

    sub-int v4, p2, v0

    .line 104
    .local v4, "dy":I
    const/16 v5, 0x14a

    .line 1108
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollY()I

    move-result v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1109
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->invalidate()V

    .line 105
    return-void
.end method

.method public computeScroll()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->scrollTo(II)V

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->postInvalidate()V

    .line 118
    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->computeScroll()V

    .line 119
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->b:Z

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;

    invoke-interface {v0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;->a()V

    .line 91
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 72
    :pswitch_0
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->b:Z

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->d:Z

    .line 76
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 78
    :pswitch_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCanScroll(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->b:Z

    .line 62
    return-void
.end method

.method public setOnScrollViewChangerListener(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;)V
    .locals 0
    .param p1, "scrollViewChangerListener"    # Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;

    .line 66
    return-void
.end method
