.class public Lcom/alibaba/android/dingtalkbase/widgets/views/TouchControllableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TouchControllableLinearLayout.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchControllableLinearLayout;->a:Z

    return v0
.end method

.method public setIntercept(Z)V
    .locals 0
    .param p1, "intercept"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchControllableLinearLayout;->a:Z

    .line 21
    return-void
.end method
