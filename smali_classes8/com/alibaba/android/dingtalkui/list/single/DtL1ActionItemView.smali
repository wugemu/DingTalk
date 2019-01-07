.class public Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;
.super Lcom/alibaba/android/dingtalkui/list/base/AbsSingleActionListItemView;
.source "DtL1ActionItemView.java"


# instance fields
.field private i:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleActionListItemView;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleActionListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleActionListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lecj$f;->_ui_private_list_single_arrow:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    sget v1, Lecj$e;->text_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->b:Landroid/widget/TextView;

    .line 47
    sget v1, Lecj$e;->layout_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->k:Landroid/view/View;

    .line 49
    sget v1, Lecj$e;->text_righttext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->j:Landroid/widget/TextView;

    .line 50
    sget v1, Lecj$e;->iv_red_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->i:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    .line 51
    sget v1, Lecj$e;->bottom_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->c:Landroid/view/View;

    .line 53
    sget v1, Lecj$e;->img_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->d:Landroid/widget/ImageView;

    .line 54
    sget v1, Lecj$e;->iconfont_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    .line 56
    sget v1, Lecj$e;->ic_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->f:Landroid/widget/TextView;

    .line 57
    sget v1, Lecj$e;->layout_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->g:Landroid/view/View;

    .line 58
    sget v1, Lecj$e;->right_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->h:Landroid/view/View;

    .line 59
    return-void
.end method

.method protected a(Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "attr"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleActionListItemView;->a(Landroid/util/AttributeSet;I)V

    .line 65
    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lecj$i;->DtL1ActionItemView:[I

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 69
    .local v2, "ta":Landroid/content/res/TypedArray;
    if-eqz v2, :cond_0

    .line 70
    sget v4, Lecj$i;->DtL1ActionItemView_list_right_text:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "subTitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget v4, Lecj$i;->DtL1ActionItemView_list_bubble_visible:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 74
    .local v0, "showRedDot":Z
    iget-object v4, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->i:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v4, v3}, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->a(Landroid/view/View;I)V

    .line 76
    sget v3, Lecj$i;->DtL1ActionItemView_bubble_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->setRedDotText(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method protected final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 83
    iget v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->a:I

    if-ne v1, v3, :cond_1

    .line 85
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 86
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lecj$e;->iconfont_avatar:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 87
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 91
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lecj$e;->img_avatar:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 92
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setRedDotText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->i:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->i:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->setText(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public setRedDotVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->i:Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/single/DtL1ActionItemView;->a(Landroid/view/View;I)V

    .line 99
    return-void
.end method
