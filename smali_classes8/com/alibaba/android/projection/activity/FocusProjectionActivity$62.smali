.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$62;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Landroid/view/View;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 3467
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$62;->d:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$62;->a:Landroid/view/View;

    iput p3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$62;->b:I

    iput p4, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$62;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3470
    if-eqz p1, :cond_0

    .line 3471
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3472
    .local v1, "ratio":F
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$62;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3473
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$62;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3474
    iget v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$62;->c:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3476
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$62;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3478
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "ratio":F
    :cond_0
    return-void
.end method
