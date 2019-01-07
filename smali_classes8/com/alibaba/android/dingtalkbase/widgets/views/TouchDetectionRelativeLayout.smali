.class public Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "TouchDetectionRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionRelativeLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionRelativeLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 32
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionRelativeLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionRelativeLayout$a;

    if-eqz v1, :cond_0

    .line 33
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 34
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionRelativeLayout;->getLocationOnScreen([I)V

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 47
    .end local v0    # "location":[I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 37
    .restart local v0    # "location":[I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    goto :goto_0

    .line 40
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    goto :goto_0

    .line 43
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setTouchCallBack(Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionRelativeLayout$a;)V
    .locals 0
    .param p1, "touchCallBack"    # Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionRelativeLayout$a;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionRelativeLayout;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionRelativeLayout$a;

    .line 52
    return-void
.end method
