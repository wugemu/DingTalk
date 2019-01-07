.class public Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;
.super Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;
.source "TeleCustomViewPager.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;->a:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;->a:Z

    .line 38
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;->a:Z

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCanScroll(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/TeleCustomViewPager;->a:Z

    .line 46
    return-void
.end method
