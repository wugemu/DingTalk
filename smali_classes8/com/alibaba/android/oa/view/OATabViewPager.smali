.class public Lcom/alibaba/android/oa/view/OATabViewPager;
.super Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;
.source "OATabViewPager.java"


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
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/oa/view/OATabViewPager;->a:Z

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
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/oa/view/OATabViewPager;->a:Z

    .line 24
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alibaba/android/oa/view/OATabViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/alibaba/android/oa/view/OATabViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 32
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
    .line 53
    iput-boolean p1, p0, Lcom/alibaba/android/oa/view/OATabViewPager;->a:Z

    .line 54
    return-void
.end method
