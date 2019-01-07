.class public Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;
.super Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;
.source "DtL2ActionItemView.java"


# instance fields
.field private l:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

.field private m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lecj$f;->_ui_private_list_double_arrow:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    sget v1, Lecj$e;->text_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->b:Landroid/widget/TextView;

    .line 39
    sget v1, Lecj$e;->text_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->i:Landroid/widget/TextView;

    .line 40
    sget v1, Lecj$e;->bottom_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->c:Landroid/view/View;

    .line 41
    sget v1, Lecj$e;->img_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->d:Landroid/widget/ImageView;

    .line 42
    sget v1, Lecj$e;->iconfont_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    .line 43
    sget v1, Lecj$e;->layout_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->k:Landroid/view/View;

    .line 44
    sget v1, Lecj$e;->ic_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->f:Landroid/widget/TextView;

    .line 45
    sget v1, Lecj$e;->layout_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->g:Landroid/view/View;

    .line 46
    sget v1, Lecj$e;->red_bubble:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->l:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    .line 47
    sget v1, Lecj$e;->right_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->m:Landroid/widget/TextView;

    .line 48
    sget v1, Lecj$e;->text_caption:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->j:Landroid/widget/TextView;

    .line 49
    sget v1, Lecj$e;->right_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->h:Landroid/view/View;

    .line 50
    return-void
.end method

.method protected a(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->a(Landroid/util/AttributeSet;I)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lecj$i;->DtL2ActionItemView:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 58
    .local v1, "ta":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_0

    .line 59
    sget v3, Lecj$i;->DtL2ActionItemView_list_bubble_visible:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 60
    .local v0, "showRedDot":Z
    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->l:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->setVisibility(I)V

    .line 61
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->l:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    sget v3, Lecj$i;->DtL2ActionItemView_bubble_text:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->setText(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->m:Landroid/widget/TextView;

    sget v3, Lecj$i;->DtL2ActionItemView_list_right_text:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    .end local v0    # "showRedDot":Z
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 60
    .restart local v0    # "showRedDot":Z
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->m:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->a(Landroid/view/View;Z)V

    .line 74
    return-void
.end method

.method public setRedDotText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->l:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->l:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->setText(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setRedDotVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->l:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->a(Landroid/view/View;I)V

    .line 78
    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    return-void
.end method
