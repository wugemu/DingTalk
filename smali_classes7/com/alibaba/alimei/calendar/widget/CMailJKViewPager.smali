.class public Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;
.super Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;
.source "CMailJKViewPager.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;->a:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;->a:Z

    .line 16
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;->a:Z

    return v0
.end method

.method public setSlideEnable(Z)V
    .locals 0
    .param p1, "slideEnable"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/alibaba/alimei/calendar/widget/CMailJKViewPager;->a:Z

    .line 23
    return-void
.end method
