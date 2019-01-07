.class public Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;
.super Landroid/widget/FrameLayout;
.source "FloatWindow.java"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/content/Context;

.field private f:Landroid/view/WindowManager;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "FloatWindow context must be application context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->e:Landroid/content/Context;

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->e:Landroid/content/Context;

    invoke-static {v0}, Lbyf;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->j:I

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->e:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->k:I

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->g:I

    .line 1087
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->e:Landroid/content/Context;

    invoke-static {v0}, Lcms;->b(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->e:Landroid/content/Context;

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->h:I

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->e:Landroid/content/Context;

    invoke-static {v0}, Lcms;->b(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->e:Landroid/content/Context;

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->i:I

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->e:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->f:Landroid/view/WindowManager;

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbtp$f;->layout_float_window:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1095
    sget v0, Lbtp$e;->container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->a:Landroid/widget/RelativeLayout;

    .line 1096
    sget v0, Lbtp$e;->iv_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->b:Landroid/widget/ImageView;

    .line 1097
    sget v0, Lbtp$e;->tv_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->c:Landroid/widget/TextView;

    .line 1098
    sget v0, Lbtp$e;->tv_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->d:Landroid/widget/TextView;

    .line 60
    return-void
.end method

.method private a(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 158
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->k:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->h:I

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->k:I

    sub-int/2addr v2, v3

    .line 158
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 160
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->k:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->i:I

    iget v3, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->j:I

    sub-int/2addr v2, v3

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->k:I

    sub-int/2addr v2, v3

    .line 160
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->f:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;II)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->a(II)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getIvStatus()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTvClose()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvStatus()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->n:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v0, v4

    .line 125
    .local v0, "dx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->o:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v1, v4

    .line 127
    .local v1, "dy":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return v10

    .line 130
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->l:F

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->m:F

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->n:F

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->o:F

    goto :goto_0

    .line 137
    :pswitch_1
    iget v4, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->g:I

    if-ge v0, v4, :cond_1

    iget v4, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->g:I

    if-lt v1, v4, :cond_0

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->l:F

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 139
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->j:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->m:F

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 140
    .local v3, "y":I
    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->a(II)V

    goto :goto_0

    .line 145
    .end local v2    # "x":I
    .end local v3    # "y":I
    :pswitch_2
    iget v4, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->g:I

    if-ge v0, v4, :cond_2

    iget v4, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->g:I

    if-ge v1, v4, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->performClick()Z

    .line 150
    :goto_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->o:F

    iput v4, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->n:F

    iput v4, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->m:F

    iput v4, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->l:F

    goto :goto_0

    .line 1102
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1104
    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1105
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    .line 1106
    iget v8, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->h:I

    div-int/lit8 v8, v8, 0x2

    if-lt v5, v8, :cond_3

    iget v5, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->h:I

    .line 1108
    :goto_2
    const/4 v8, 0x2

    new-array v8, v8, [I

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v4, v8, v6

    aput v5, v8, v10

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v8, 0xc8

    .line 1109
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1110
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1111
    new-instance v5, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow$1;

    invoke-direct {v5, p0, v7}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow$1;-><init>(Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1118
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_3
    move v5, v6

    .line 1106
    goto :goto_2

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
