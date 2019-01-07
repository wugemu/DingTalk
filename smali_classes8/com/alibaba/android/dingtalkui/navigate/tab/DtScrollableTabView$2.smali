.class final Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$2;
.super Ljava/lang/Object;
.source "DtScrollableTabView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$2;->a:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

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
    .line 161
    const-string/jumbo v2, "transX"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 162
    .local v0, "offset":F
    const-string/jumbo v2, "width"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 164
    .local v1, "width":F
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$2;->a:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    invoke-static {v2, v1, v0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->a(Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;FF)V

    .line 165
    return-void
.end method
