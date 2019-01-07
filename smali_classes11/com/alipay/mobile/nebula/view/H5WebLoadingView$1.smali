.class Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;
.super Ljava/lang/Object;
.source "H5WebLoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->startLoadingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

.field final synthetic val$centerX:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    iput p2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->val$centerX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->access$002(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)I

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->access$000(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;)I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->val$centerX:I

    if-ge v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->val$centerX:I

    iget v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->val$centerX:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->access$000(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->access$102(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)I

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->invalidate()V

    .line 184
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->val$centerX:I

    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->access$000(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;)I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->val$centerX:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->access$102(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)I

    goto :goto_0
.end method
