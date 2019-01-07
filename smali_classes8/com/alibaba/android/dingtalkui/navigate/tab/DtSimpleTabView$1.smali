.class final Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$1;
.super Ljava/lang/Object;
.source "DtSimpleTabView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$1;->b:Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 105
    .local v0, "offset":F
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$1;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 106
    return-void
.end method
