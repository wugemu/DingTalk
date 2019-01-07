.class public Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
.super Landroid/view/View;
.source "SmoothCheckBox.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;
    }
.end annotation


# static fields
.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:[Landroid/graphics/Point;

.field private G:Landroid/graphics/Path;

.field private H:F

.field private I:F

.field private J:Landroid/graphics/RectF;

.field private K:F

.field private L:Z

.field private M:F

.field private N:I

.field private O:I

.field private P:I

.field private Q:F

.field private R:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;

.field public a:I

.field public b:I

.field public c:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/animation/ValueAnimator;

.field private w:Landroid/animation/ValueAnimator;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "#BFC0C1"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->d:I

    .line 66
    const-string/jumbo v0, "#15BC83"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->e:I

    .line 67
    const-string/jumbo v0, "#15BC83"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->f:I

    .line 70
    const-string/jumbo v0, "#E3E4E4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->g:I

    .line 71
    const-string/jumbo v0, "#E3E4E4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->h:I

    .line 72
    const-string/jumbo v0, "#E3E4E4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->J:Landroid/graphics/RectF;

    .line 133
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->J:Landroid/graphics/RectF;

    .line 139
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->K:F

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;FF)F
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 55
    .line 4441
    sub-float v2, p2, p1

    .line 4442
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->j:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float/2addr v2, v3

    add-float/2addr v2, p1

    .line 4443
    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    .line 4447
    :goto_0
    return v0

    .line 4446
    :cond_0
    cmpg-float v0, v2, v1

    if-gez v0, :cond_1

    move v0, v1

    .line 4447
    goto :goto_0

    :cond_1
    move v0, v2

    .line 55
    goto :goto_0
.end method

.method static synthetic a(IIF)I
    .locals 8
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    const/high16 v3, 0xff0000

    const v4, 0xff00

    const/high16 v7, 0x3f800000    # 1.0f

    .line 55
    .line 4533
    and-int v0, p0, v3

    shr-int/lit8 v0, v0, 0x10

    .line 4534
    and-int v1, p0, v4

    shr-int/lit8 v1, v1, 0x8

    .line 4535
    and-int/lit16 v2, p0, 0xff

    .line 4537
    and-int/2addr v3, p1

    shr-int/lit8 v3, v3, 0x10

    .line 4538
    and-int/2addr v4, p1

    shr-int/lit8 v4, v4, 0x8

    .line 4539
    and-int/lit16 v5, p1, 0xff

    .line 4541
    int-to-float v0, v0

    sub-float v6, v7, p2

    mul-float/2addr v0, v6

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 4542
    int-to-float v1, v1

    sub-float v3, v7, p2

    mul-float/2addr v1, v3

    int-to-float v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 4543
    int-to-float v2, v2

    sub-float v3, v7, p2

    mul-float/2addr v2, v3

    int-to-float v3, v5

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 4545
    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 55
    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->O:I

    return p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->L:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->K:F

    .line 454
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->w:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 460
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->c:Z

    .line 461
    return-void

    .line 453
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v7, 0xbb8

    const/4 v6, 0x1

    const/high16 v5, 0x3fc00000    # 1.5f

    const/4 v4, -0x1

    .line 151
    iput v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->j:I

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->E:I

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 154
    .local v1, "tickWidth":I
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->k:I

    .line 155
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->l:I

    .line 156
    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->d:I

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a:I

    .line 157
    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->e:I

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->m:I

    .line 158
    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->f:I

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->b:I

    .line 159
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->n:I

    .line 160
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->o:I

    .line 161
    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->g:I

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->p:I

    .line 162
    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->h:I

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->q:I

    .line 163
    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->i:I

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->r:I

    .line 164
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcig$l;->SmoothCheckBox:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    .local v0, "ta":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 166
    sget v2, Lcig$l;->SmoothCheckBox_duration:I

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->j:I

    .line 167
    sget v2, Lcig$l;->SmoothCheckBox_stroke_width:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->E:I

    .line 168
    sget v2, Lcig$l;->SmoothCheckBox_tick_width:I

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 169
    sget v2, Lcig$l;->SmoothCheckBox_color_enable_tick:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->k:I

    .line 170
    sget v2, Lcig$l;->SmoothCheckBox_color_enable_unchecked_fill:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->l:I

    .line 171
    sget v2, Lcig$l;->SmoothCheckBox_color_enable_unchecked_stroke:I

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->d:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a:I

    .line 172
    sget v2, Lcig$l;->SmoothCheckBox_color_enable_checked_fill:I

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->e:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->m:I

    .line 173
    sget v2, Lcig$l;->SmoothCheckBox_color_enable_checked_stroke:I

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->f:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->b:I

    .line 174
    sget v2, Lcig$l;->SmoothCheckBox_color_disable_tick:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->n:I

    .line 175
    sget v2, Lcig$l;->SmoothCheckBox_color_disable_unchecked_fill:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->o:I

    .line 176
    sget v2, Lcig$l;->SmoothCheckBox_color_disable_unchecked_stroke:I

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->g:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->p:I

    .line 177
    sget v2, Lcig$l;->SmoothCheckBox_color_disable_checked_fill:I

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->h:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->q:I

    .line 178
    sget v2, Lcig$l;->SmoothCheckBox_color_disable_checked_stroke:I

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->i:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->r:I

    .line 179
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->s:Landroid/graphics/Paint;

    .line 183
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->s:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->t:Landroid/graphics/Paint;

    .line 186
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->t:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->t:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 188
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->t:Landroid/graphics/Paint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->u:Landroid/graphics/Paint;

    .line 191
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->u:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->u:Landroid/graphics/Paint;

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->E:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 194
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/Point;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    .line 195
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    aput-object v4, v2, v3

    .line 196
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    aput-object v3, v2, v6

    .line 197
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v3, 0x2

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    aput-object v4, v2, v3

    .line 198
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->D:I

    .line 202
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->M:F

    .line 203
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getColorStroke()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->O:I

    .line 204
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getColorFill()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->P:I

    .line 205
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getColorTick()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->N:I

    .line 206
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getTickDistanceToDraw()F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->Q:F

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->invalidate()V

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->M:F

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->b:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->P:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->K:F

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->Q:F

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->l:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->m:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->H:F

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->I:F

    return v0
.end method

.method private getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 473
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)V

    return-object v0
.end method

.method private getBorderScaleRectF()Landroid/graphics/RectF;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 339
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->x:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->A:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->M:F

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->E:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 340
    .local v1, "left":F
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->x:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->A:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->x:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->A:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->M:F

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->E:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 341
    .local v2, "right":F
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->y:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->C:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->M:F

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->E:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 342
    .local v3, "top":F
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->y:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->C:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->y:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->C:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->M:F

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->E:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v0, v4, v5

    .line 343
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->J:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 344
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->J:Landroid/graphics/RectF;

    return-object v4
.end method

.method private getCenterScaleRectF()Landroid/graphics/RectF;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 348
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->x:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->A:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->M:F

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float v1, v4, v5

    .line 349
    .local v1, "left":F
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->x:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->A:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->x:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->A:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->M:F

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    sub-float v2, v4, v5

    .line 350
    .local v2, "right":F
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->y:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->C:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->M:F

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float v3, v4, v5

    .line 351
    .local v3, "top":F
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->y:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->C:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->y:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->C:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->M:F

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    sub-float v0, v4, v5

    .line 352
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->J:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 353
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->J:Landroid/graphics/RectF;

    return-object v4
.end method

.method private getColorFill()I
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->L:Z

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->m:I

    .line 510
    :goto_0
    return v0

    .line 509
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->q:I

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->l:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->o:I

    goto :goto_0
.end method

.method private getColorStroke()I
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->L:Z

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->b:I

    .line 504
    :goto_0
    return v0

    .line 503
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->r:I

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->p:I

    goto :goto_0
.end method

.method private getColorTick()I
    .locals 1

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->k:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->n:I

    goto :goto_0
.end method

.method private getTickDistanceToDraw()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->L:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->H:F

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->I:F

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->R:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->L:Z

    return v0
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 6
    .param p1, "checked"    # Z
    .param p2, "animate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 246
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->L:Z

    if-eq p1, v4, :cond_4

    move v0, v1

    .line 247
    .local v0, "hasChanged":Z
    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->L:Z

    .line 1464
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->v:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    .line 1465
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1467
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->w:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 1468
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a()V

    .line 252
    if-eqz v0, :cond_7

    .line 253
    if-eqz p2, :cond_7

    .line 254
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->L:Z

    if-eqz v2, :cond_5

    .line 2397
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->v:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_2

    .line 2398
    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->v:Landroid/animation/ValueAnimator;

    .line 2399
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->v:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->j:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2400
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->v:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2401
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->v:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2413
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->v:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2414
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->c:Z

    .line 2415
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 274
    :cond_3
    :goto_1
    return-void

    .line 246
    .end local v0    # "hasChanged":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 2419
    .restart local v0    # "hasChanged":Z
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->w:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_6

    .line 2420
    new-array v1, v5, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->w:Landroid/animation/ValueAnimator;

    .line 2421
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->w:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->j:I

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2422
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->w:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2423
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->w:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2435
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->w:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2436
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->Q:F

    .line 2437
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 263
    :cond_7
    if-nez v0, :cond_8

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->c:Z

    if-nez v1, :cond_3

    .line 267
    :cond_8
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->L:Z

    if-eqz v1, :cond_9

    move v1, v2

    :goto_2
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->K:F

    .line 268
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->M:F

    .line 269
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getColorStroke()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->O:I

    .line 270
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getColorFill()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->P:I

    .line 271
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getColorTick()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->N:I

    .line 272
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getTickDistanceToDraw()F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->Q:F

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->invalidate()V

    goto :goto_1

    :cond_9
    move v1, v3

    .line 267
    goto :goto_2

    .line 2398
    .line 2420
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->L:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 312
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->R:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->R:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->K:F

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;->a(F)V

    .line 3334
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->s:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->P:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3335
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getCenterScaleRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->D:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->D:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4329
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->O:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4330
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getBorderScaleRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->D:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->D:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4357
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->N:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4362
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->Q:F

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->H:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 4364
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v0, v0, v5

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->Q:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->H:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 4365
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->Q:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->H:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 4367
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 4368
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4369
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4370
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 4386
    :goto_0
    return-void

    .line 4375
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4376
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4377
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4378
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 4381
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4382
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4383
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->Q:F

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->H:F

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->I:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 4384
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4385
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 4389
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->Q:F

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->H:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->I:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 4390
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->Q:F

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->H:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->I:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 4392
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4393
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->x:I

    .line 279
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->y:I

    .line 281
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getPaddingLeft()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    .line 282
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getPaddingTop()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    .line 283
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getPaddingRight()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->A:I

    .line 284
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getPaddingBottom()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->C:I

    .line 286
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->x:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->A:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 287
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->y:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->C:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 289
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->x:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->A:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x41500000    # 13.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 290
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->y:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->C:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 292
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->x:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->A:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x41b00000    # 22.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->z:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 293
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->y:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->C:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->B:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 295
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->H:F

    .line 296
    .local v0, "oldTickLeftLineLength":F
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->I:F

    .line 297
    .local v1, "oldTickRightLineLength":F
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 298
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 299
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 297
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->H:F

    .line 300
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 301
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->F:[Landroid/graphics/Point;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 302
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 300
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->I:F

    .line 304
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->H:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_0

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->I:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->getTickDistanceToDraw()F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->Q:F

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->invalidate()V

    .line 308
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 220
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 221
    check-cast v0, Landroid/os/Bundle;

    .line 222
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "InstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 223
    .local v1, "isChecked":Z
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setChecked(Z)V

    .line 224
    const-string/jumbo v2, "InstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 228
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "isChecked":Z
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "InstanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    const-string/jumbo v1, "InstanceState"

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->L:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 323
    if-nez p1, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a()V

    .line 326
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    .line 243
    return-void
.end method

.method public setEnableCheckedFillColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 514
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->m:I

    .line 515
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->invalidate()V

    .line 516
    return-void
.end method

.method public setListener(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->R:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;

    .line 144
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->L:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setChecked(Z)V

    .line 238
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
