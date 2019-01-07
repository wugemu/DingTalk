.class final Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$1;
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
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field final synthetic b:[F

.field final synthetic c:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;Landroid/support/v7/widget/RecyclerView;[F)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$1;->c:Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$1;->a:Landroid/support/v7/widget/RecyclerView;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$1;->b:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 126
    const-string/jumbo v1, "scrollX"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 127
    .local v0, "scrollX":F
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$1;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$1;->b:[F

    aget v2, v2, v4

    sub-float v2, v0, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 130
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$1;->b:[F

    aput v0, v1, v4

    .line 131
    return-void
.end method
