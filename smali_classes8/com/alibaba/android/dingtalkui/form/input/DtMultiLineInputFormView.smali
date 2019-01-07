.class public Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;
.super Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;
.source "DtMultiLineInputFormView.java"


# instance fields
.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private k:Landroid/animation/ValueAnimator;

.field private l:Landroid/animation/ValueAnimator;

.field private m:Z

.field private n:F

.field private o:F

.field private p:F

.field private q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_content_fg_color_alpha_88:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->g:I

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_level2_base_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->h:I

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_blue1_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->i:I

    .line 52
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->j:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->m:Z

    .line 70
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->d()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_content_fg_color_alpha_88:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->g:I

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_level2_base_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->h:I

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_blue1_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->i:I

    .line 52
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->j:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->m:Z

    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->d()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_content_fg_color_alpha_88:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->g:I

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_level2_base_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->h:I

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_blue1_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->i:I

    .line 52
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->j:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->m:Z

    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->d()V

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;
    .param p1, "x1"    # F

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->setAnimateFraction(F)V

    return-void
.end method

.method private d()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v10, 0x64

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 134
    .line 1084
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getLabel()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;

    move-result-object v0

    .line 1085
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getMustFillIndicator()Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    .line 1089
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lecj$c;->ui_common_text_label_float_collapsed_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 1090
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lecj$c;->ui_common_text_label_float_collapsed_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    .line 1091
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lecj$c;->ui_common_text_label_float_expanded_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    .line 1095
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->n:F

    .line 1096
    div-float v2, v3, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->o:F

    .line 1098
    iget v2, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->o:F

    mul-float/2addr v2, v1

    .line 1100
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setPivotX(F)V

    .line 1101
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setPivotY(F)V

    .line 1105
    iput v5, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->p:F

    .line 1106
    sub-float v0, v1, v2

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->q:F

    .line 1108
    const-string/jumbo v0, "fraction"

    new-array v1, v8, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1110
    new-array v1, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->k:Landroid/animation/ValueAnimator;

    .line 1111
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView$1;-><init>(Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1120
    const-string/jumbo v0, "fraction"

    new-array v1, v8, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1121
    new-array v1, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->l:Landroid/animation/ValueAnimator;

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView$2;-><init>(Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    return-void

    .line 1108
    .line 1120
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setAnimateFraction(F)V
    .locals 7
    .param p1, "animateFraction"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 209
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-gtz v4, :cond_0

    cmpg-float v4, p1, v6

    if-gez v4, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getLabel()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;

    move-result-object v2

    .line 214
    .local v2, "label":Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getMustFillIndicator()Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    move-result-object v0

    .line 216
    .local v0, "indicator":Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;
    iget v4, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->o:F

    iget v5, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->n:F

    sub-float v1, v4, v5

    .line 218
    .local v1, "k":F
    mul-float v4, v1, p1

    iget v5, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->n:F

    add-float v3, v4, v5

    .line 219
    .local v3, "scale":F
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setScaleX(F)V

    .line 220
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setScaleY(F)V

    .line 221
    iget v4, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->q:F

    sub-float/2addr v4, v6

    mul-float/2addr v4, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method protected final b(Z)V
    .locals 2
    .param p1, "animate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->b(Z)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->e(Z)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->i:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setTextColor(I)V

    .line 168
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->k:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 236
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->setAnimateFraction(F)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->setAnimateFraction(F)V

    .line 242
    :cond_1
    return-void
.end method

.method protected final c(Z)V
    .locals 2
    .param p1, "animate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getEditText()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAdjustableEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAdjustableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->d(Z)V

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->g:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setTextColor(I)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->h:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected final d(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->m:Z

    if-eqz v0, :cond_0

    .line 198
    if-eqz p1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 204
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->m:Z

    .line 206
    :cond_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->setAnimateFraction(F)V

    goto :goto_0
.end method

.method protected final e(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->m:Z

    if-nez v0, :cond_0

    .line 185
    if-eqz p1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 191
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->m:Z

    .line 193
    :cond_0
    return-void

    .line 188
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->setAnimateFraction(F)V

    goto :goto_0
.end method

.method protected getAlert()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAlertTextView;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->e:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAlertTextView;

    return-object v0
.end method

.method protected getAlertViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
    .locals 1

    .prologue
    .line 159
    sget v0, Lecj$e;->atv_alert:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    return-object v0
.end method

.method protected getEditText()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAdjustableEditText;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAdjustableEditText;

    return-object v0
.end method

.method protected getEditTextInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;
    .locals 1

    .prologue
    .line 154
    sget v0, Lecj$e;->input:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    return-object v0
.end method

.method protected getLabelViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
    .locals 1

    .prologue
    .line 144
    sget v0, Lecj$e;->label_float:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lecj$f;->_ui_private_form_input_multi_line_layout:I

    return v0
.end method

.method protected getMustFillIndicatorViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
    .locals 1

    .prologue
    .line 149
    sget v0, Lecj$e;->rav_must_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    return-object v0
.end method
