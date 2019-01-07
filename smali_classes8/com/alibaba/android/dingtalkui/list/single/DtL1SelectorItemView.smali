.class public Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;
.super Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;
.source "DtL1SelectorItemView.java"


# instance fields
.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->g:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lecj$f;->_ui_private_list_single_selector:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    sget v1, Lecj$e;->text_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->b:Landroid/widget/TextView;

    .line 42
    sget v1, Lecj$e;->img_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->d:Landroid/widget/ImageView;

    .line 43
    sget v1, Lecj$e;->iconfont_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    .line 44
    sget v1, Lecj$e;->bottom_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->c:Landroid/view/View;

    .line 45
    sget v1, Lecj$e;->text_caption:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->f:Landroid/widget/TextView;

    .line 46
    sget v1, Lecj$e;->btn_check:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->g:Landroid/widget/CheckBox;

    .line 47
    new-instance v1, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView$1;-><init>(Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method protected final a(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "attr"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 59
    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lecj$i;->DtL1SelectorItemView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "ta":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 64
    sget v1, Lecj$i;->DtL1SelectorItemView_list_caption_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->setCaptionText(Ljava/lang/String;)V

    .line 65
    sget v1, Lecj$i;->DtL1SelectorItemView_list_selected:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->setSelected(Z)V

    goto :goto_0
.end method

.method public setCaptionText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public setCaptionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 99
    return-void
.end method

.method public setOnSelectChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->g:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->g:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SelectorItemView;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    :cond_0
    return-void
.end method
