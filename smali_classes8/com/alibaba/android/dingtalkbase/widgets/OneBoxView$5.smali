.class final Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$5;
.super Ljava/lang/Object;
.source "OneBoxView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 967
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 970
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 972
    .local v1, "o":Ljava/lang/Object;
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->m(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 974
    .local v0, "dy":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-static {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)V

    .line 975
    return-void
.end method
