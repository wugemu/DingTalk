.class final Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$3;
.super Ljava/lang/Object;
.source "DingCompleteDetailActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$3;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 153
    .local v0, "value":F
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$3;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;F)V

    .line 154
    return-void
.end method
