.class final Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;
.super Ljava/lang/Object;
.source "RecognizeCardFragmentV2.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    iput p2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->a:I

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
    .line 559
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->i(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)F

    move-result v1

    float-to-double v2, v1

    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->j(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)F

    move-result v1

    iget-object v4, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v4}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->i(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)F

    move-result v4

    sub-float/2addr v1, v4

    float-to-double v4, v1

    const-wide v6, 0x3f8eb851eb851eb8L    # 0.015

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    invoke-static {v0, v1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;F)F

    .line 560
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->i(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)F

    move-result v0

    iget v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->a:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    iget v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->a:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;F)F

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->k(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$12;->b:Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    invoke-static {v2}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->i(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Landroid/view/View;I)V

    .line 564
    return-void
.end method
