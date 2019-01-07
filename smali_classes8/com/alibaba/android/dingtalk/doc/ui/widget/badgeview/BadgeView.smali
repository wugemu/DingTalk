.class public Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;
.super Landroid/view/View;
.source "BadgeView.java"

# interfaces
.implements Lbrt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:F

.field protected e:F

.field protected f:F

.field protected g:I

.field protected h:Ljava/lang/String;

.field protected i:Z

.field protected j:I

.field protected k:F

.field protected l:F

.field protected m:Landroid/graphics/PointF;

.field protected n:Landroid/graphics/PointF;

.field protected o:Landroid/graphics/RectF;

.field protected p:Landroid/graphics/RectF;

.field protected q:Landroid/graphics/Paint$FontMetrics;

.field protected r:Landroid/view/View;

.field protected s:I

.field protected t:I

.field protected u:Landroid/text/TextPaint;

.field protected v:Landroid/graphics/Paint;

.field protected w:Landroid/graphics/Paint;

.field private x:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 82
    invoke-direct {p0, p1, p2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->x:[I

    .line 1087
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1088
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    .line 1089
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    .line 1090
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    .line 1091
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->n:Landroid/graphics/PointF;

    .line 1092
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1097
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->v:Landroid/graphics/Paint;

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->w:Landroid/graphics/Paint;

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1103
    const v0, -0x17b1c0

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->a:I

    .line 1104
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->c:I

    .line 1105
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->e:F

    .line 1106
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    .line 1107
    iput v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->g:I

    .line 1108
    const v0, 0x800035

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->j:I

    .line 1109
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->k:F

    .line 1110
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->l:F

    .line 1111
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->i:Z

    .line 1113
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1114
    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->setTranslationZ(F)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 302
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 303
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->e:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 309
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->q:Landroid/graphics/Paint$FontMetrics;

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->q:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->q:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->x:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 317
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->x:[I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->getLocationOnScreen([I)V

    .line 318
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->n:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->x:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->n:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->x:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBadgeCircleRadius()F
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v2, 0x40000000    # 2.0f

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    .line 244
    :goto_0
    return v0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    .line 241
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    .line 242
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    goto :goto_0

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lbrt;
    .locals 4
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 377
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->a:I

    .line 379
    :try_start_0
    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->a:I

    if-nez v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->invalidate()V

    .line 388
    return-object p0

    .line 382
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(IFZ)Lbrt;
    .locals 2
    .param p1, "color"    # I
    .param p2, "width"    # F
    .param p3, "isDpValue"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 393
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->b:I

    .line 394
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->d:F

    .line 395
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->invalidate()V

    .line 396
    return-object p0
.end method

.method public final a(Landroid/view/View;)Lbrt;
    .locals 9
    .param p1, "targetView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "targetView can not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 130
    .local v6, "targetParent":Landroid/view/ViewParent;
    if-eqz v6, :cond_4

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    .line 131
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->r:Landroid/view/View;

    .line 132
    instance-of v7, v6, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;

    if-eqz v7, :cond_2

    .line 133
    check-cast v6, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;

    .end local v6    # "targetParent":Landroid/view/ViewParent;
    invoke-virtual {v6, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;->addView(Landroid/view/View;)V

    .line 154
    :goto_0
    return-object p0

    .line 136
    .restart local v6    # "targetParent":Landroid/view/ViewParent;
    :cond_2
    :try_start_0
    move-object v0, v6

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 137
    .local v4, "targetContainer":Landroid/view/ViewGroup;
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 138
    .local v3, "index":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 139
    .local v5, "targetParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    new-instance v1, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, p0, v7}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;-><init>(Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;Landroid/content/Context;)V

    .line 141
    .local v1, "badgeContainer":Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;
    instance-of v7, v4, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_3

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;->setId(I)V

    .line 144
    :cond_3
    invoke-virtual {v4, v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;->addView(Landroid/view/View;)V

    .line 146
    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 147
    .end local v1    # "badgeContainer":Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView$a;
    .end local v3    # "index":I
    .end local v4    # "targetContainer":Landroid/view/ViewGroup;
    .end local v5    # "targetParams":Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_4
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "targetView must have a parent"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 147
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lbrt;
    .locals 1
    .param p1, "badgeText"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    .line 355
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->g:I

    .line 356
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->c()V

    .line 357
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->invalidate()V

    .line 358
    return-object p0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->r:Landroid/view/View;

    .line 166
    :cond_0
    return-void
.end method

.method public final b(I)Lbrt;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 401
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->c:I

    .line 402
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->invalidate()V

    .line 403
    return-object p0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x63

    .line 327
    .line 2332
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->g:I

    .line 2333
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->g:I

    if-gez v0, :cond_1

    .line 2334
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    .line 2342
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->c()V

    .line 2343
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->invalidate()V

    .line 328
    return-void

    .line 2335
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->g:I

    if-le v0, v1, :cond_2

    .line 2336
    const-string/jumbo v0, "99+"

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    goto :goto_0

    .line 2337
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->g:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->g:I

    if-gt v0, v1, :cond_3

    .line 2338
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->g:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    goto :goto_0

    .line 2339
    :cond_3
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->g:I

    if-nez v0, :cond_0

    .line 2340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(I)Lbrt;
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 423
    const v0, 0x800033

    if-eq p1, v0, :cond_0

    const v0, 0x800035

    if-eq p1, v0, :cond_0

    const v0, 0x800053

    if-eq p1, v0, :cond_0

    const v0, 0x800055

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    const/16 v0, 0x51

    if-eq p1, v0, :cond_0

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    const v0, 0x800015

    if-ne p1, v0, :cond_1

    .line 432
    :cond_0
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->j:I

    .line 433
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->invalidate()V

    .line 435
    :cond_1
    return-object p0
.end method

.method public getBadgeNumber()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->g:I

    return v0
.end method

.method public getBadgeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->r:Landroid/view/View;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/high16 v8, -0x3b860000    # -1000.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 177
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1190
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->v:Landroid/graphics/Paint;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->a:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1191
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->w:Landroid/graphics/Paint;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->b:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1192
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->w:Landroid/graphics/Paint;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->d:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1193
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->c:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1194
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 180
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->getBadgeCircleRadius()F

    move-result v0

    .line 1249
    .local v0, "badgeRadius":F
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    if-nez v2, :cond_2

    .line 182
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    .line 2198
    if-eqz p1, :cond_1

    if-nez v2, :cond_4

    .line 187
    .end local v0    # "badgeRadius":F
    :cond_1
    :goto_1
    return-void

    .line 1253
    .restart local v0    # "badgeRadius":F
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    .line 1254
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 1255
    :goto_2
    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->j:I

    sparse-switch v3, :sswitch_data_0

    .line 1293
    :goto_3
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->d()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v0    # "badgeRadius":F
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 1254
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "badgeRadius":F
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    goto :goto_2

    .line 1257
    :sswitch_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->k:F

    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v4, v5

    div-float/2addr v2, v7

    add-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 1258
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->l:F

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 1261
    :sswitch_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->k:F

    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v4, v5

    div-float/2addr v2, v7

    add-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 1262
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->t:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->l:F

    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 1265
    :sswitch_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->s:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->k:F

    iget v6, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v5, v6

    div-float/2addr v2, v7

    add-float/2addr v2, v5

    sub-float v2, v4, v2

    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 1266
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->l:F

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 1269
    :sswitch_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->s:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->k:F

    iget v6, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v5, v6

    div-float/2addr v2, v7

    add-float/2addr v2, v5

    sub-float v2, v4, v2

    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 1270
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->t:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->l:F

    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    .line 1273
    :sswitch_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->s:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 1274
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->t:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    .line 1277
    :sswitch_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->s:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 1278
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->l:F

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    .line 1281
    :sswitch_6
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->s:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 1282
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->t:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->l:F

    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    .line 1285
    :sswitch_7
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->k:F

    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v4, v5

    div-float/2addr v2, v7

    add-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 1286
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->t:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    .line 1289
    :sswitch_8
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->s:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->k:F

    iget v6, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v5, v6

    div-float/2addr v2, v7

    add-float/2addr v2, v5

    sub-float v2, v4, v2

    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 1290
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->m:Landroid/graphics/PointF;

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->t:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    .line 2201
    :cond_4
    iget v3, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_5

    iget v3, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_1

    .line 2204
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 2205
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    float-to-int v5, v0

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 2206
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->y:F

    float-to-int v5, v0

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 2207
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    float-to-int v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 2208
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->y:F

    float-to-int v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 2209
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2210
    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->b:I

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->d:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_7

    .line 2211
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2224
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2225
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->h:Ljava/lang/String;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->q:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->q:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->u:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 2214
    :cond_8
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v7

    iget v6, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 2215
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v7

    iget v6, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    mul-float/2addr v6, v10

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 2216
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v7

    iget v6, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 2217
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v7

    iget v6, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->f:F

    mul-float/2addr v6, v10

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 2218
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v7

    .line 2219
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2220
    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->b:I

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->d:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_7

    .line 2221
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->p:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1255
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_4
        0x31 -> :sswitch_5
        0x51 -> :sswitch_6
        0x800013 -> :sswitch_7
        0x800015 -> :sswitch_8
        0x800033 -> :sswitch_0
        0x800035 -> :sswitch_2
        0x800053 -> :sswitch_1
        0x800055 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 171
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->s:I

    .line 172
    iput p2, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;->t:I

    .line 173
    return-void
.end method
