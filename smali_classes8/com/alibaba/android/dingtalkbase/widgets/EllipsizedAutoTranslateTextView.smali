.class public Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;
.super Landroid/widget/TextView;
.source "EllipsizedAutoTranslateTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/CharSequence;

.field private c:F

.field private d:F

.field private e:I

.field private f:F

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:F

.field private k:F

.field private l:I

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Matrix;

.field private o:Landroid/graphics/LinearGradient;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->a:I

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->c:F

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->e:I

    .line 56
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->f:F

    .line 57
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->g:F

    .line 59
    const-string/jumbo v0, "\u2026"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->h:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->j:F

    .line 69
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->k:F

    .line 79
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->a()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->a:I

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->c:F

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->e:I

    .line 56
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->f:F

    .line 57
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->g:F

    .line 59
    const-string/jumbo v0, "\u2026"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->h:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->j:F

    .line 69
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->k:F

    .line 84
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->a()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->a:I

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->c:F

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->e:I

    .line 56
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->f:F

    .line 57
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->g:F

    .line 59
    const-string/jumbo v0, "\u2026"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->h:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->j:F

    .line 69
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->k:F

    .line 89
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->a()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->a:I

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->c:F

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->e:I

    .line 56
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->f:F

    .line 57
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->g:F

    .line 59
    const-string/jumbo v0, "\u2026"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->h:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->j:F

    .line 69
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->k:F

    .line 95
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->a()V

    .line 96
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->e:I

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->ui_common_level4_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->l:I

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->m:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->m:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->n:Landroid/graphics/Matrix;

    .line 106
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 194
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1199
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1202
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->j:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->j:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->g:F

    div-float v2, v0, v4

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->k:F

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->g:F

    div-float v4, v0, v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 110
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 111
    sub-int v1, p4, p2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 112
    .local v0, "newWidth":I
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->e:I

    if-eq v0, v1, :cond_0

    .line 113
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->e:I

    .line 114
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setTextWithTransact(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    return-void
.end method

.method public setEllipsisStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "ellipsisStr"    # Ljava/lang/String;

    .prologue
    .line 213
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "ellipsisStr":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->h:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 190
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .param p1, "additional"    # F
    .param p2, "multi"    # F

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 184
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->d:F

    .line 185
    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->c:F

    .line 186
    return-void
.end method

.method public setListener(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView$a;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->p:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView$a;

    .line 210
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .param p1, "maxLines"    # I

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 178
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->a:I

    .line 179
    return-void
.end method

.method public setStrikeValue(F)V
    .locals 3
    .param p1, "strikeValue"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 221
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->j:F

    .line 222
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->f:F

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->j:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->k:F

    .line 223
    invoke-static {}, Lcof;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-static {}, Lcof;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    invoke-static {}, Lcof;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-static {}, Lcof;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->j:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->o:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->n:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->k:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->o:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->o:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 238
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->invalidate()V

    .line 239
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 127
    return-void
.end method

.method public setTextWithTransact(Ljava/lang/CharSequence;)V
    .locals 20
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 130
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcms;->c()Z

    move-result v2

    if-nez v2, :cond_5

    .line 131
    invoke-static/range {p1 .. p1}, Lcol;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 133
    .local v3, "charSequence":Ljava/lang/CharSequence;
    :goto_0
    if-nez v3, :cond_0

    .line 134
    const-string/jumbo v3, ""

    .line 136
    :cond_0
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->b:Ljava/lang/CharSequence;

    .line 137
    move-object v14, v3

    .line 138
    .local v14, "originCharSequence":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->a:I

    if-lez v2, :cond_2

    .line 139
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->e:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->c:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->d:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->a:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->h:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1033
    if-eqz p0, :cond_1

    .line 1034
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, v7, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_1

    if-ltz v5, :cond_1

    if-gtz v10, :cond_6

    .line 1039
    :cond_1
    const-string/jumbo v3, ""

    .line 149
    :cond_2
    :goto_1
    invoke-static {v14, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v13, 0x1

    .line 150
    .local v13, "newIsTransacted":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->i:Z

    if-eq v2, v13, :cond_3

    .line 151
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->i:Z

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->p:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView$a;

    if-eqz v2, :cond_3

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->p:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView$a;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->i:Z

    invoke-interface {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView$a;->a(Z)V

    .line 156
    :cond_3
    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p0

    invoke-super {v0, v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    .line 159
    .local v15, "textPaint":Landroid/graphics/Paint;
    if-eqz v15, :cond_4

    .line 161
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v15, v3, v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->f:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->g:F

    .line 167
    new-instance v4, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->f:F

    neg-float v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x4

    new-array v9, v2, [I

    const/4 v2, 0x0

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getColor()I

    move-result v10

    aput v10, v9, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->l:I

    aput v10, v9, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->l:I

    aput v10, v9, v2

    const/4 v2, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getColor()I

    move-result v10

    aput v10, v9, v2

    const/4 v2, 0x4

    new-array v10, v2, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->o:Landroid/graphics/LinearGradient;

    .line 171
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->j:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setStrikeValue(F)V

    .line 173
    :cond_4
    return-void

    .end local v3    # "charSequence":Ljava/lang/CharSequence;
    .end local v13    # "newIsTransacted":Z
    .end local v14    # "originCharSequence":Ljava/lang/CharSequence;
    .end local v15    # "textPaint":Landroid/graphics/Paint;
    :cond_5
    move-object/from16 v3, p1

    .line 131
    goto/16 :goto_0

    .line 1042
    .restart local v3    # "charSequence":Ljava/lang/CharSequence;
    .restart local v14    # "originCharSequence":Ljava/lang/CharSequence;
    :cond_6
    new-instance v2, Landroid/text/StaticLayout;

    .line 1043
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1050
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-le v4, v10, :cond_2

    .line 1054
    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v4, v2, v4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_4
    sub-int v9, v4, v2

    .line 1056
    if-lez v9, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v9, v2, :cond_2

    .line 1061
    instance-of v2, v3, Landroid/text/Spannable;

    if-eqz v2, :cond_c

    .line 1062
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v2, v3

    .line 1063
    check-cast v2, Landroid/text/Spannable;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v2, v4, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/ParcelableSpan;

    .line 1064
    if-eqz v2, :cond_b

    .line 1065
    const/4 v6, 0x0

    .line 1066
    array-length v10, v2

    const/4 v4, 0x0

    move v7, v6

    move v6, v4

    :goto_5
    if-ge v6, v10, :cond_8

    aget-object v18, v2, v6

    move-object v4, v3

    .line 1067
    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v19

    move-object v4, v3

    .line 1068
    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 1069
    if-ltz v7, :cond_8

    if-ge v7, v8, :cond_8

    if-gt v8, v9, :cond_8

    .line 1070
    invoke-interface {v3, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v4, v3

    .line 1071
    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1, v8, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1066
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v7, v8

    goto :goto_5

    .line 1054
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_4

    .line 1077
    :cond_8
    if-ltz v7, :cond_9

    if-ge v7, v9, :cond_9

    .line 1078
    invoke-interface {v3, v7, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_9
    move-object v2, v5

    .line 1087
    :goto_6
    invoke-virtual {v2, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1088
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1089
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1090
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    move-object v3, v2

    .line 1093
    goto/16 :goto_1

    .line 1081
    :cond_b
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1084
    :cond_c
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 149
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 162
    .restart local v13    # "newIsTransacted":Z
    .restart local v15    # "textPaint":Landroid/graphics/Paint;
    :catch_0
    move-exception v12

    .line 163
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->e:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->f:F

    goto/16 :goto_3

    .line 168
    nop

    :array_0
    .array-data 4
        0x0
        0x3a83126f    # 0.001f
        0x3f7fbe77    # 0.999f
        0x3f800000    # 1.0f
    .end array-data
.end method
