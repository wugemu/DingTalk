.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;
.super Landroid/widget/ImageButton;
.source "H5BugmeConsoleButton.java"


# static fields
.field private static final THRESH_HOLD:I = 0xa


# instance fields
.field private mDX:F

.field private mDY:F

.field private mMoving:Z

.field private mStartX:F

.field private mStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mMoving:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mMoving:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mMoving:Z

    .line 34
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mMoving:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 40
    :pswitch_1
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mMoving:Z

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mDX:F

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mDY:F

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->getX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mStartX:F

    .line 44
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mStartY:F

    goto :goto_0

    .line 47
    :pswitch_2
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mDX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mStartY:F

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mDY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_3

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mMoving:Z

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mDX:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->mDY:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x0

    .line 52
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 48
    goto :goto_1

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
