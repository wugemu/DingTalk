.class public Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TouchDetectionLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 32
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;

    if-eqz v1, :cond_0

    .line 33
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 34
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;->getLocationOnScreen([I)V

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 47
    .end local v0    # "location":[I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 37
    .restart local v0    # "location":[I
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;->a(FF)V

    goto :goto_0

    .line 40
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    invoke-interface {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;->a()V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setTouchCallBack(Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;)V
    .locals 0
    .param p1, "touchCallBack"    # Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;

    .line 52
    return-void
.end method
