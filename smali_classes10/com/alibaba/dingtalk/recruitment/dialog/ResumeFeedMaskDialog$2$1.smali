.class final Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;
.super Ljava/lang/Object;
.source "ResumeFeedMaskDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0xff

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    .line 81
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 82
    .local v1, "value":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    float-to-double v2, v1

    cmpg-double v2, v2, v6

    if-gez v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;

    iget-object v2, v2, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->b(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 84
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;

    iget-object v2, v2, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->c(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 85
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;

    iget-object v2, v2, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->b(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;

    iget-object v3, v3, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v3}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->b(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;

    iget-object v4, v4, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v4}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->b(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-double v4, v4

    div-double/2addr v4, v6

    double-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 86
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;

    iget-object v2, v2, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->c(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;

    iget-object v3, v3, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v3}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->b(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-double v4, v3

    div-double/2addr v4, v6

    double-to-float v3, v4

    neg-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    float-to-double v2, v1

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 88
    const-wide v2, 0x406fe00000000000L    # 255.0

    float-to-double v4, v1

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    div-double/2addr v2, v4

    double-to-int v2, v2

    rsub-int v0, v2, 0xff

    .line 89
    .local v0, "alpha":I
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;

    iget-object v2, v2, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->b(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 90
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;

    iget-object v2, v2, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->c(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0
.end method
