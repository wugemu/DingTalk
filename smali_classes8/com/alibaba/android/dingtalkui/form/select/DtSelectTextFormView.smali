.class public Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;
.super Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;
.source "DtSelectTextFormView.java"


# instance fields
.field protected final d:I

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private final h:F

.field private final i:F

.field private final j:F

.field private final k:F

.field private final l:F

.field private final m:F

.field private final n:F

.field private final o:I

.field private p:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

.field private q:Landroid/animation/ValueAnimator;

.field private r:Landroid/animation/ValueAnimator;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormHintTextView;

.field private w:Landroid/animation/Animator$AnimatorListener;

.field private x:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;-><init>(Landroid/content/Context;)V

    .line 35
    const-string/jumbo v0, "SelectTextFormView"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->e:Ljava/lang/String;

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->d:I

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_content_fg_color_alpha_88:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->f:I

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_level2_base_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->g:I

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->h:F

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->i:F

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_expanded_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->j:F

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_expanded_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->k:F

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->l:F

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_expanded_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->m:F

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_image_must_fill_indicator_height_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->n:F

    .line 56
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->o:I

    .line 68
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->s:Z

    .line 73
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->t:Z

    .line 338
    new-instance v0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$5;-><init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->w:Landroid/animation/Animator$AnimatorListener;

    .line 358
    new-instance v0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$6;-><init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->x:Landroid/animation/Animator$AnimatorListener;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->a(Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string/jumbo v0, "SelectTextFormView"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->e:Ljava/lang/String;

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->d:I

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_content_fg_color_alpha_88:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->f:I

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_level2_base_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->g:I

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->h:F

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->i:F

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_expanded_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->j:F

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_expanded_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->k:F

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->l:F

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_expanded_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->m:F

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_image_must_fill_indicator_height_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->n:F

    .line 56
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->o:I

    .line 68
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->s:Z

    .line 73
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->t:Z

    .line 338
    new-instance v0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$5;-><init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->w:Landroid/animation/Animator$AnimatorListener;

    .line 358
    new-instance v0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$6;-><init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->x:Landroid/animation/Animator$AnimatorListener;

    .line 84
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->a(Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
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
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const-string/jumbo v0, "SelectTextFormView"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->e:Ljava/lang/String;

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->d:I

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_content_fg_color_alpha_88:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->f:I

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_level2_base_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->g:I

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->h:F

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->i:F

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_expanded_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->j:F

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_expanded_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->k:F

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->l:F

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_expanded_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->m:F

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_image_must_fill_indicator_height_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->n:F

    .line 56
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->o:I

    .line 68
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->s:Z

    .line 73
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->t:Z

    .line 338
    new-instance v0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$5;-><init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->w:Landroid/animation/Animator$AnimatorListener;

    .line 358
    new-instance v0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$6;-><init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->x:Landroid/animation/Animator$AnimatorListener;

    .line 89
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->a(Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;)Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->p:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 14
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 222
    .line 1299
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lecj$i;->DtSelectTextFormView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1300
    sget v1, Lecj$i;->DtSelectTextFormView_android_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1301
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1304
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->t:Z

    .line 1306
    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->u:Ljava/lang/String;

    .line 2264
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->getLabel()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;

    move-result-object v1

    .line 2265
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2267
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->t:Z

    if-nez v2, :cond_1

    .line 2268
    iget v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->l:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2269
    iget v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->h:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 2270
    const/4 v0, 0x0

    iget v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->i:F

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setTextSize(IF)V

    .line 2282
    :goto_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->getMustFillIndicator()Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2284
    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->n:F

    .line 2285
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->t:Z

    if-nez v2, :cond_2

    .line 2286
    iget v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->l:F

    iget v3, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->h:F

    sub-float v1, v3, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2293
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->v:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormHintTextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormHintTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2294
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->v:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormHintTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormHintTextView;->setVisibility(I)V

    .line 3105
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getLabel()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;

    move-result-object v2

    .line 3106
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getMustFillIndicator()Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    move-result-object v5

    .line 3110
    iget v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->m:F

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->l:F

    sub-float v3, v0, v1

    .line 3113
    iget v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->k:F

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->i:F

    div-float v4, v0, v1

    .line 3115
    iget v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->h:F

    mul-float/2addr v0, v4

    .line 3117
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setPivotX(F)V

    .line 3118
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setPivotY(F)V

    .line 3121
    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->l:F

    iget v6, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->h:F

    iget v7, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->n:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 3122
    iget v6, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->m:F

    iget v7, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->n:F

    sub-float/2addr v0, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    add-float/2addr v0, v6

    .line 3124
    sub-float v6, v0, v1

    .line 3126
    const-string/jumbo v0, "scale"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v7, 0x0

    aput v4, v1, v7

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v1, v7

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 3127
    const-string/jumbo v1, "transY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v1, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 3128
    const-string/jumbo v7, "scale"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    aput v4, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 3129
    const-string/jumbo v8, "transY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v3, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 3131
    const-string/jumbo v9, "mustFillIndicatorTransY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v6, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 3133
    const-string/jumbo v10, "mustFillIndicatorTransY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    const/4 v12, 0x1

    aput v6, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 3136
    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v9, v11, v0

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->q:Landroid/animation/ValueAnimator;

    .line 3141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v12, 0x64

    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3143
    iget-object v9, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->q:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$1;-><init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;FFLcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;F)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$2;

    invoke-direct {v1, p0, v2, v5}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$2;-><init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3178
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    const/4 v1, 0x2

    aput-object v10, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->r:Landroid/animation/ValueAnimator;

    .line 3183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->r:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->r:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->r:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$3;

    invoke-direct {v1, p0, v2, v5}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$3;-><init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->r:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$4;

    invoke-direct {v1, p0, v2, v5}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView$4;-><init>(Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 228
    return-void

    .line 2272
    :cond_1
    iget v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->m:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2273
    iget v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->j:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 2274
    const/4 v0, 0x0

    iget v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->k:F

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 2288
    :cond_2
    iget v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->m:F

    iget v3, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->j:F

    sub-float v1, v3, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->a()V

    .line 234
    sget v0, Lecj$e;->content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->p:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    .line 235
    sget v0, Lecj$e;->hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormHintTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->v:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormHintTextView;

    .line 236
    return-void
.end method

.method protected getIndicatorInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
    .locals 1

    .prologue
    .line 255
    sget v0, Lecj$e;->av_arrow:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    return-object v0
.end method

.method protected getLabelViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
    .locals 1

    .prologue
    .line 245
    sget v0, Lecj$e;->label_float:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 240
    sget v0, Lecj$f;->_ui_private_form_select_text_layout:I

    return v0
.end method

.method protected getMustFillIndicatorViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
    .locals 1

    .prologue
    .line 250
    sget v0, Lecj$e;->rav_must_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->p:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->onDetachedFromWindow()V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->r:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 102
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->setEnabled(Z)V

    .line 410
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->p:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;->setEnabled(Z)V

    .line 411
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 380
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->p:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->t:Z

    if-nez v0, :cond_3

    .line 382
    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->q:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->w:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3331
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->s:Z

    if-eqz v0, :cond_0

    .line 3332
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3334
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->s:Z

    .line 3319
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->getLabel()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->f:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setTextColor(I)V

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->q:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->w:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->r:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->x:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4323
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->s:Z

    if-nez v0, :cond_2

    .line 4324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 4326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->s:Z

    .line 4313
    :cond_2
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->getLabel()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->g:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setTextColor(I)V

    .line 389
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->r:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->x:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 392
    :cond_3
    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->p:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->v:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormHintTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormHintTextView;->setVisibility(I)V

    goto :goto_0

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->p:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormContentTextView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->v:Lcom/alibaba/android/dingtalkui/form/privatewidget/FormHintTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormHintTextView;->setVisibility(I)V

    goto :goto_0
.end method
