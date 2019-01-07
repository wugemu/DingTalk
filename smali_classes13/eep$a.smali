.class public final Leep$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OAExpandHeaderDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Leep;


# direct methods
.method private constructor <init>(Leep;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Leep$a;->a:Leep;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Leep;B)V
    .locals 0
    .param p1, "x0"    # Leep;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Leep$a;-><init>(Leep;)V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 384
    iget-object v1, p0, Leep$a;->a:Leep;

    invoke-static {v1}, Leep;->c(Leep;)Landroid/app/Activity;

    move-result-object v0

    .line 386
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Leep$a;->a:Leep;

    invoke-static {v1}, Leep;->e(Leep;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 387
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->c(Landroid/app/Activity;)V

    .line 389
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x42480000    # 50.0f

    .line 356
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Leep$a;->a:Leep;

    invoke-static {v3}, Leep;->d(Leep;)Leer$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 357
    iget-object v2, p0, Leep$a;->a:Leep;

    invoke-static {v2}, Leep;->d(Leep;)Leer$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Leer$a;->a(Z)V

    .line 379
    :cond_0
    :goto_0
    return v1

    .line 360
    :cond_1
    iget-object v3, p0, Leep$a;->a:Leep;

    invoke-static {v3}, Leep;->e(Leep;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->getChildCount()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 365
    iget-object v3, p0, Leep$a;->a:Leep;

    invoke-static {v3}, Leep;->e(Leep;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v3

    iget-object v4, p0, Leep$a;->a:Leep;

    invoke-static {v4}, Leep;->c(Leep;)Landroid/app/Activity;

    move-result-object v4

    sget v5, Ledz$a;->slide_left_in:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 366
    iget-object v3, p0, Leep$a;->a:Leep;

    invoke-static {v3}, Leep;->e(Leep;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v3

    iget-object v4, p0, Leep$a;->a:Leep;

    invoke-static {v4}, Leep;->c(Leep;)Landroid/app/Activity;

    move-result-object v4

    sget v5, Ledz$a;->slide_left_out:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 367
    iget-object v3, p0, Leep$a;->a:Leep;

    invoke-static {v3}, Leep;->e(Leep;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->showNext()V

    :cond_2
    :goto_1
    move v1, v2

    .line 374
    goto :goto_0

    .line 368
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    .line 369
    iget-object v3, p0, Leep$a;->a:Leep;

    invoke-static {v3}, Leep;->e(Leep;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v3

    iget-object v4, p0, Leep$a;->a:Leep;

    invoke-static {v4}, Leep;->c(Leep;)Landroid/app/Activity;

    move-result-object v4

    sget v5, Ledz$a;->slide_right_in:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 370
    iget-object v3, p0, Leep$a;->a:Leep;

    invoke-static {v3}, Leep;->e(Leep;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v3

    iget-object v4, p0, Leep$a;->a:Leep;

    invoke-static {v4}, Leep;->c(Leep;)Landroid/app/Activity;

    move-result-object v4

    sget v5, Ledz$a;->slide_right_out:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 371
    iget-object v3, p0, Leep$a;->a:Leep;

    invoke-static {v3}, Leep;->e(Leep;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->showPrevious()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
