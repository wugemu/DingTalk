.class final Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CommonOAFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 708
    invoke-direct {p0, p1}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 737
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 738
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->f(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 739
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->c(Landroid/app/Activity;)V

    .line 741
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v4, 0x42480000    # 50.0f

    .line 712
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x437a0000    # 250.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v0

    .line 715
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v2}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->f(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->getChildCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 720
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v2}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->f(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Ledz$a;->slide_left_in:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 721
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v2}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->f(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Ledz$a;->slide_left_out:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 722
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v2}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->f(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->showPrevious()V

    :cond_2
    :goto_1
    move v0, v1

    .line 728
    goto :goto_0

    .line 723
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 724
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v2}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->f(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Ledz$a;->slide_right_in:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 725
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v2}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->f(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Ledz$a;->slide_right_out:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 726
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$a;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v2}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->f(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomViewFlipper;->showNext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 732
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
