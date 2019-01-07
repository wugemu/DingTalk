.class public abstract Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;
.super Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;
.source "AbsDoubleActionListItemView.java"


# instance fields
.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/view/View;

.field protected h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->a(Landroid/util/AttributeSet;I)V

    .line 36
    if-eqz p1, :cond_4

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lecj$i;->AbsDoubleActionListItemView:[I

    invoke-virtual {v8, p1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 38
    .local v6, "ta":Landroid/content/res/TypedArray;
    if-eqz v6, :cond_4

    .line 39
    sget v8, Lecj$i;->AbsDoubleActionListItemView_list_right_action_visible:I

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 40
    .local v0, "action":Z
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->setRightActionVisible(Z)V

    .line 42
    sget v8, Lecj$i;->AbsDoubleActionListItemView_list_right_action_image:I

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 43
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v2, v7, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->setRightActionDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    sget v8, Lecj$i;->AbsDoubleActionListItemView_list_right_action_background:I

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 49
    .local v4, "rd":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 50
    iget-object v8, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_1
    sget v8, Lecj$i;->AbsDoubleActionListItemView_list_right_action_text_color:I

    invoke-virtual {v6, v8, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 54
    .local v3, "rc":I
    if-eq v3, v11, :cond_2

    .line 55
    iget-object v8, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    :cond_2
    sget v8, Lecj$i;->AbsDoubleActionListItemView_list_right_action_text_size:I

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 58
    .local v5, "rs":F
    cmpl-float v8, v5, v10

    if-lez v8, :cond_3

    .line 59
    iget-object v8, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v8, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    :cond_3
    iget-object v8, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    sget v9, Lecj$i;->AbsDoubleActionListItemView_list_right_action_text:I

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    sget v8, Lecj$i;->AbsSingleActionListItemView_list_right_action_divider_visible:I

    invoke-virtual {v6, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 64
    .local v1, "dividerVis":Z
    iget-object v8, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->h:Landroid/view/View;

    if-eqz v1, :cond_5

    :goto_0
    invoke-static {v8, v7}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->a(Landroid/view/View;I)V

    .line 65
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    .end local v0    # "action":Z
    .end local v1    # "dividerVis":Z
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "rc":I
    .end local v4    # "rd":Landroid/graphics/drawable/Drawable;
    .end local v5    # "rs":F
    .end local v6    # "ta":Landroid/content/res/TypedArray;
    :cond_4
    return-void

    .line 64
    .restart local v0    # "action":Z
    .restart local v1    # "dividerVis":Z
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "rc":I
    .restart local v4    # "rd":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "rs":F
    .restart local v6    # "ta":Landroid/content/res/TypedArray;
    :cond_5
    const/16 v7, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->a(Landroid/view/View;Z)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->g:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->a(Landroid/view/View;Z)V

    .line 75
    return-void
.end method

.method public setRightActionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_0
    return-void
.end method

.method public setRightActionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setRightActionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 106
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lecj$c;->_ui_private_list_right_action_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 109
    .local v0, "size":I
    invoke-virtual {p1, v4, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    .end local v0    # "size":I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_2
    return-void
.end method

.method public setRightActionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    return-void
.end method

.method public setRightActionTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public setRightActionTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    :cond_0
    return-void
.end method

.method public setRightActionVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->g:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    if-nez p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
