.class public Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;
.super Landroid/widget/TextView;
.source "ToggleButtonView.java"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->f:I

    .line 29
    return-void
.end method

.method private a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->b:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 72
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->c:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 75
    iget-object v4, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 76
    .local v3, "parentWidth":I
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-gtz v4, :cond_2

    .line 77
    const/4 v4, 0x0

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 82
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->f:I

    sub-int v2, v4, v5

    .line 83
    .local v2, "parentHeight":I
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-gtz v4, :cond_3

    .line 84
    const/4 v4, 0x0

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 89
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, p0, v1}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "parentHeight":I
    .end local v3    # "parentWidth":I
    :goto_2
    return-void

    .line 78
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "parentWidth":I
    :cond_2
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-le v4, v3, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->getWidth()I

    move-result v4

    sub-int v4, v3, v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "parentWidth":I
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    const-class v4, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateViewPosition...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 85
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "parentHeight":I
    .restart local v3    # "parentWidth":I
    :cond_3
    :try_start_1
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-le v4, v2, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 45
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->d:F

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->e:F

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->d:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->b:F

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->e:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->c:F

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->a()V

    goto :goto_0

    .line 55
    :pswitch_2
    iget v0, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 57
    iput v1, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->e:F

    iput v1, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->d:F

    .line 58
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->a()V

    .line 61
    iput v1, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->e:F

    iput v1, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->d:F

    .line 62
    const/4 v0, 0x1

    goto :goto_1

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setMaxTopMargin(I)V
    .locals 0
    .param p1, "maxTopMargin"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->f:I

    .line 37
    return-void
.end method

.method public setViewContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "viewContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/view/ToggleButtonView;->a:Landroid/view/ViewGroup;

    .line 33
    return-void
.end method
