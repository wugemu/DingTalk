.class public Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;
.super Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;
.source "DtSingleLineInputFormView.java"


# instance fields
.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private o:Landroid/animation/ValueAnimator;

.field private p:Landroid/animation/ValueAnimator;

.field private q:Z

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;

.field private y:Z

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_content_fg_color_alpha_88:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->g:I

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_level2_base_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->h:I

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_blue1_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->i:I

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_margin_top_in_single_line_input_non_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->j:I

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_margin_top_in_single_line_input_with_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->k:I

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_private_clear_button_margin_bottom_in_single_line_input_non_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->l:I

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_private_clear_button_margin_bottom_in_single_line_input_with_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->m:I

    .line 68
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->n:I

    .line 77
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->q:Z

    .line 91
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->y:Z

    .line 96
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->d()V

    .line 97
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

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_content_fg_color_alpha_88:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->g:I

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_level2_base_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->h:I

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_blue1_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->i:I

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_margin_top_in_single_line_input_non_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->j:I

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_margin_top_in_single_line_input_with_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->k:I

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_private_clear_button_margin_bottom_in_single_line_input_non_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->l:I

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_private_clear_button_margin_bottom_in_single_line_input_with_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->m:I

    .line 68
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->n:I

    .line 77
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->q:Z

    .line 91
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->y:Z

    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->d()V

    .line 102
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

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_content_fg_color_alpha_88:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->g:I

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_level2_base_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->h:I

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_blue1_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->i:I

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_margin_top_in_single_line_input_non_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->j:I

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_label_float_collapsed_margin_top_in_single_line_input_with_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->k:I

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_private_clear_button_margin_bottom_in_single_line_input_non_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->l:I

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_private_clear_button_margin_bottom_in_single_line_input_with_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->m:I

    .line 68
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->n:I

    .line 77
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->q:Z

    .line 91
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->y:Z

    .line 106
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->d()V

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->z:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;
    .param p1, "x1"    # F

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setAnimateFraction(F)V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->f(Z)V

    .line 222
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->g(Z)V

    .line 223
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->h(Z)V

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->x:Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;

    new-instance v1, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$3;-><init>(Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    return-void
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 374
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getEditText()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 376
    .local v0, "visibility":Z
    :goto_0
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->y:Z

    if-ne v0, v2, :cond_1

    .line 386
    :goto_1
    return-void

    .end local v0    # "visibility":Z
    :cond_0
    move v0, v1

    .line 374
    goto :goto_0

    .line 380
    .restart local v0    # "visibility":Z
    :cond_1
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->y:Z

    .line 381
    if-eqz v0, :cond_2

    .line 382
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->x:Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;->setVisibility(I)V

    goto :goto_1

    .line 384
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->x:Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private f(Z)V
    .locals 7
    .param p1, "hasHint"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getLabel()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 115
    .local v3, "labelLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_0

    .line 116
    iget v4, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->k:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getLabel()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lecj$c;->ui_common_text_label_float_collapsed_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 125
    .local v2, "labelCollapsedHeight":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getMustFillIndicator()Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 126
    .local v1, "indicatorLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lecj$c;->ui_common_image_must_fill_indicator_height_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 127
    .local v0, "indicatorHeight":I
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    div-int/lit8 v5, v2, 0x2

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getMustFillIndicator()Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-void

    .line 118
    .end local v0    # "indicatorHeight":I
    .end local v1    # "indicatorLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "labelCollapsedHeight":I
    :cond_0
    iget v4, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->j:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private g(Z)V
    .locals 14
    .param p1, "hasHint"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lecj$c;->ui_common_text_label_float_collapsed_height:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    int-to-float v5, v11

    .line 137
    .local v5, "labelCollapsedHeight":F
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lecj$c;->ui_common_text_label_float_collapsed_text_size:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    int-to-float v7, v11

    .line 138
    .local v7, "labelCollapsedTextSize":F
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lecj$c;->ui_common_text_label_float_expanded_text_size:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    int-to-float v10, v11

    .line 142
    .local v10, "labelExpandedTextSize":F
    if-eqz p1, :cond_0

    .line 143
    iget v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->k:I

    int-to-float v6, v11

    .line 148
    .local v6, "labelCollapsedMarginTop":F
    :goto_0
    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lecj$c;->ui_common_text_label_float_expanded_margin_top_in_single_line_input_with_hint:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    int-to-float v9, v11

    .line 154
    .local v9, "labelExpandedMarginTop":F
    :goto_1
    const/4 v11, 0x0

    iput v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->r:F

    .line 155
    sub-float v11, v9, v6

    iput v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->s:F

    .line 157
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->t:F

    .line 158
    div-float v11, v10, v7

    iput v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->u:F

    .line 160
    iget v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->u:F

    mul-float v8, v5, v11

    .line 162
    .local v8, "labelExpandedHeight":F
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getLabel()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;

    move-result-object v4

    .line 163
    .local v4, "label":Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setPivotX(F)V

    .line 164
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setPivotY(F)V

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lecj$c;->ui_common_image_must_fill_indicator_height_width:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    int-to-float v3, v11

    .line 168
    .local v3, "indicatorHeight":F
    sub-float v11, v5, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v1, v6, v11

    .line 169
    .local v1, "indicatorCollapsedMarginTop":F
    sub-float v11, v8, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v2, v9, v11

    .line 170
    .local v2, "indicatorExpandedMarginTop":F
    const/4 v11, 0x0

    iput v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->v:F

    .line 171
    sub-float v11, v2, v1

    iput v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->w:F

    .line 173
    const-string/jumbo v11, "fraction"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 174
    .local v0, "animateFractionHolder":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x1

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v11

    iput-object v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->o:Landroid/animation/ValueAnimator;

    .line 177
    iget-object v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->o:Landroid/animation/ValueAnimator;

    new-instance v12, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    iget-object v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->o:Landroid/animation/ValueAnimator;

    const-wide/16 v12, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 179
    iget-object v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->o:Landroid/animation/ValueAnimator;

    new-instance v12, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$1;

    invoke-direct {v12, p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$1;-><init>(Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    const-string/jumbo v11, "fraction"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_1

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 187
    const/4 v11, 0x1

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v11

    iput-object v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->p:Landroid/animation/ValueAnimator;

    .line 190
    iget-object v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->p:Landroid/animation/ValueAnimator;

    new-instance v12, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 191
    iget-object v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v12, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 192
    iget-object v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->p:Landroid/animation/ValueAnimator;

    new-instance v12, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$2;

    invoke-direct {v12, p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$2;-><init>(Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 198
    return-void

    .line 145
    .end local v0    # "animateFractionHolder":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "indicatorCollapsedMarginTop":F
    .end local v2    # "indicatorExpandedMarginTop":F
    .end local v3    # "indicatorHeight":F
    .end local v4    # "label":Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;
    .end local v6    # "labelCollapsedMarginTop":F
    .end local v8    # "labelExpandedHeight":F
    .end local v9    # "labelExpandedMarginTop":F
    :cond_0
    iget v11, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->j:I

    int-to-float v6, v11

    .restart local v6    # "labelCollapsedMarginTop":F
    goto/16 :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lecj$c;->ui_common_text_label_float_expanded_margin_top_in_single_line_input_non_hint:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    int-to-float v9, v11

    .restart local v9    # "labelExpandedMarginTop":F
    goto/16 :goto_1

    .line 173
    .line 186
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

.method private h(Z)V
    .locals 3
    .param p1, "hasHint"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 238
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->x:Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 240
    .local v0, "clearButtonLP":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getEditText()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;->setVisibility(I)V

    .line 242
    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->m:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->x:Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getEditText()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;->setVisibility(I)V

    .line 245
    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->l:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private setAnimateFraction(F)V
    .locals 7
    .param p1, "animateFraction"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 204
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-gtz v4, :cond_0

    cmpg-float v4, p1, v6

    if-gez v4, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getLabel()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;

    move-result-object v2

    .line 209
    .local v2, "label":Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getMustFillIndicator()Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    move-result-object v0

    .line 211
    .local v0, "indicator":Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;
    iget v4, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->s:F

    sub-float/2addr v4, v6

    mul-float/2addr v4, p1

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setTranslationY(F)V

    .line 212
    iget v4, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->u:F

    iget v5, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->t:F

    sub-float v1, v4, v5

    .line 214
    .local v1, "k":F
    mul-float v4, v1, p1

    iget v5, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->t:F

    add-float v3, v4, v5

    .line 215
    .local v3, "scale":F
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setScaleX(F)V

    .line 216
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setScaleY(F)V

    .line 217
    iget v4, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->w:F

    sub-float/2addr v4, v6

    mul-float/2addr v4, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->a()V

    .line 260
    sget v0, Lecj$e;->bt_clear:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->x:Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;

    .line 261
    return-void
.end method

.method protected final a(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->a(Landroid/text/Editable;)V

    .line 367
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->e()V

    .line 368
    return-void
.end method

.method protected final b(Z)V
    .locals 2
    .param p1, "animate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getEditText()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;->setVisibility(I)V

    .line 299
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->b(Z)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->e(Z)V

    .line 301
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->i:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setTextColor(I)V

    .line 302
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->e()V

    .line 303
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 287
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setAnimateFraction(F)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->p:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setAnimateFraction(F)V

    .line 293
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
    .line 307
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c(Z)V

    .line 309
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getEditText()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->g:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setTextColor(I)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->d(Z)V

    .line 316
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->y:Z

    .line 317
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->x:Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/image/DtDeleteImageButton;->setVisibility(I)V

    .line 318
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->h:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected final d(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->q:Z

    if-eqz v0, :cond_0

    .line 336
    if-eqz p1, :cond_1

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 342
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->q:Z

    .line 344
    :cond_0
    return-void

    .line 339
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setAnimateFraction(F)V

    goto :goto_0
.end method

.method protected final e(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->q:Z

    if-nez v0, :cond_0

    .line 323
    if-eqz p1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 329
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->q:Z

    .line 331
    :cond_0
    return-void

    .line 326
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setAnimateFraction(F)V

    goto :goto_0
.end method

.method protected getAlert()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAlertTextView;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->e:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormAlertTextView;

    return-object v0
.end method

.method protected getAlertViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
    .locals 1

    .prologue
    .line 280
    sget v0, Lecj$e;->atv_alert:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    return-object v0
.end method

.method protected getEditText()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;

    return-object v0
.end method

.method protected getEditTextInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;
    .locals 1

    .prologue
    .line 275
    sget v0, Lecj$e;->input:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    return-object v0
.end method

.method protected getLabelViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
    .locals 1

    .prologue
    .line 265
    sget v0, Lecj$e;->label_float:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 253
    sget v0, Lecj$f;->_ui_private_form_input_single_line_layout:I

    return v0
.end method

.method protected getMustFillIndicatorViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
    .locals 1

    .prologue
    .line 270
    sget v0, Lecj$e;->rav_must_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    return-object v0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    .line 350
    .local v0, "hasHintOriginal":Z
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->setHint(Ljava/lang/String;)V

    .line 352
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    if-eq v0, v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->c()V

    .line 357
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->f(Z)V

    .line 358
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->g(Z)V

    .line 359
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->h(Z)V

    .line 361
    :cond_0
    return-void
.end method

.method public setOnClearButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClearButtonClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->z:Landroid/view/View$OnClickListener;

    .line 398
    return-void
.end method
