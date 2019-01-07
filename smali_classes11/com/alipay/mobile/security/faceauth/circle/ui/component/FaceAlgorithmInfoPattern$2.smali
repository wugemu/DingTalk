.class final Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;
.super Ljava/lang/Object;
.source "FaceAlgorithmInfoPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->showInfo(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;Lcom/alipay/mobile/security/faceauth/api/FaceFrame;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    iput p3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->b:I

    iput p4, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceSize()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)V

    .line 208
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->c(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->hasFace()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->d(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->e(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->f(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getBrightness()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->g(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->h(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->i(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getPitchAngle()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->j(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getYawAngle()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->l(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->k(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->n(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->m(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->o(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getLeftEyeHwratio()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->p(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->q(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->r(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getGaussianBlur()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->s(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getMotionBlur()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->t(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getMouthOcclusion()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->u(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getEyeLeftOcclussion()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->v(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getEyeRightOcclussion()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->w(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->o(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->w(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "leftEyeDet1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->w(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->w(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->d:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getPitchAngle()F

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;->a:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v6}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getYawAngle()F

    move-result v6

    invoke-static {v1, v4, v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;FFF)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;I)V

    goto/16 :goto_0
.end method
