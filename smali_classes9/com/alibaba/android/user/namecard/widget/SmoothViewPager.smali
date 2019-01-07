.class public Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SmoothViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/user/namecard/widget/SmoothScroller;

.field b:J

.field c:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;

.field private d:I

.field private e:Z

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->d:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->a:Lcom/alibaba/android/user/namecard/widget/SmoothScroller;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->e:Z

    .line 41
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->b:J

    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->b()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->d:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->a:Lcom/alibaba/android/user/namecard/widget/SmoothScroller;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->e:Z

    .line 41
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->b:J

    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->b()V

    .line 51
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 193
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->f:F

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->g:F

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->g:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->f:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3ff0c152382d7365L    # 1.0471975511965976

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 198
    iget-boolean v1, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->e:Z

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1212
    .local v0, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 1213
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 152
    new-instance v3, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;-><init>(Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;B)V

    iput-object v3, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->c:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    :goto_0
    return-void

    .line 155
    :cond_0
    :try_start_0
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v4, "mScroller"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 156
    .local v2, "scroller":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v4, "sInterpolator"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 158
    .local v1, "interpolator":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 160
    new-instance v4, Lcom/alibaba/android/user/namecard/widget/SmoothScroller;

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-direct {v4, v5, v3}, Lcom/alibaba/android/user/namecard/widget/SmoothScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->a:Lcom/alibaba/android/user/namecard/widget/SmoothScroller;

    .line 161
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->a:Lcom/alibaba/android/user/namecard/widget/SmoothScroller;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v1    # "interpolator":Ljava/lang/reflect/Field;
    .end local v2    # "scroller":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-class v3, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 98
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->d:I

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->c:Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager$a;->removeMessages(I)V

    .line 100
    return-void
.end method

.method public getInterval()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->b:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->d:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onDetachedFromWindow()V

    .line 220
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 179
    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->a(Landroid/view/MotionEvent;)V

    .line 180
    return v0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 227
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "child":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 230
    .local v1, "h":I
    if-le v1, v2, :cond_0

    move v2, v1

    .line 226
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "h":I
    :cond_1
    if-eqz v2, :cond_2

    .line 234
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 237
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 238
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 186
    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->a(Landroid/view/MotionEvent;)V

    .line 187
    return v0
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 76
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    const-string/jumbo v0, "SmoothViewPager"

    const-string/jumbo v1, "SmoothViewPager scrollTo() method not find \uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setInterceptTouch(Z)V
    .locals 0
    .param p1, "interceptTouch"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->e:Z

    .line 59
    return-void
.end method

.method public setInterval(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->b:J

    .line 63
    return-void
.end method

.method public setScrollDurationFactor(D)V
    .locals 1
    .param p1, "scrollFactor"    # D

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->a:Lcom/alibaba/android/user/namecard/widget/SmoothScroller;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/SmoothViewPager;->a:Lcom/alibaba/android/user/namecard/widget/SmoothScroller;

    .line 1035
    iput-wide p1, v0, Lcom/alibaba/android/user/namecard/widget/SmoothScroller;->a:D

    .line 174
    :cond_0
    return-void
.end method
