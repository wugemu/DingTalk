.class Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;
.super Ljava/lang/Object;
.source "WXSwipeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->startRefresh(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 569
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$000(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 570
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 571
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$100(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;I)V

    .line 572
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$000(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$200(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;F)V

    .line 574
    return-void
.end method
