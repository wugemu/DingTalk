.class public final Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;
.super Ljava/lang/Object;
.source "DtPullToRefreshLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v9, 0x3e800000    # 0.25f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 200
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 201
    .local v0, "value":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 203
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 204
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 205
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 222
    :goto_0
    return-void

    .line 206
    :cond_0
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    sub-float v2, v0, v9

    mul-float/2addr v2, v8

    sub-float v2, v7, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 208
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    sub-float v2, v0, v9

    mul-float/2addr v2, v8

    sub-float v2, v7, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 209
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 210
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    .line 211
    :cond_1
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 213
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    sub-float v2, v0, v10

    mul-float/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 215
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    sub-float v2, v0, v10

    mul-float/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 218
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 219
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 220
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    goto/16 :goto_0
.end method
