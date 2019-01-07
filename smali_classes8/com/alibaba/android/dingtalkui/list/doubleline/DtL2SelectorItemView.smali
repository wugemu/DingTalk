.class public Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;
.super Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;
.source "DtL2SelectorItemView.java"


# instance fields
.field private l:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->l:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lecj$f;->_ui_private_list_double_selector:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    sget v1, Lecj$e;->text_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->b:Landroid/widget/TextView;

    .line 38
    sget v1, Lecj$e;->text_caption:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->j:Landroid/widget/TextView;

    .line 39
    sget v1, Lecj$e;->btn_check:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->l:Landroid/widget/CheckBox;

    .line 41
    sget v1, Lecj$e;->text_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->i:Landroid/widget/TextView;

    .line 42
    sget v1, Lecj$e;->bottom_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->c:Landroid/view/View;

    .line 43
    sget v1, Lecj$e;->img_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->d:Landroid/widget/ImageView;

    .line 44
    sget v1, Lecj$e;->iconfont_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    .line 45
    sget v1, Lecj$e;->layout_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->k:Landroid/view/View;

    .line 47
    sget v1, Lecj$e;->ic_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->f:Landroid/widget/TextView;

    .line 48
    sget v1, Lecj$e;->layout_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->g:Landroid/view/View;

    .line 49
    sget v1, Lecj$e;->right_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->h:Landroid/view/View;

    .line 50
    return-void
.end method

.method protected a(Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->a(Landroid/util/AttributeSet;I)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lecj$i;->DtL2SelectorItemView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 59
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Lecj$i;->DtL2SelectorItemView_list_selected:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 60
    .local v0, "selector":Z
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->setSelected(Z)V

    .line 62
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    .end local v0    # "selector":Z
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v2, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView$1;-><init>(Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleActionListItemView;->setEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->l:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->a(Landroid/view/View;Z)V

    .line 87
    return-void
.end method

.method public setOnSelectChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SelectorItemView;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    return-void
.end method
