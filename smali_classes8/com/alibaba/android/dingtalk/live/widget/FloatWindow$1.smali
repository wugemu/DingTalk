.class final Lcom/alibaba/android/dingtalk/live/widget/FloatWindow$1;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow$1;->b:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    iput p2, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow$1;->a:I

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
    .line 114
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 115
    .local v0, "animatedX":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow$1;->b:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow$1;->a:I

    invoke-static {v1, v0, v2}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->a(Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;II)V

    .line 116
    return-void
.end method
