.class public Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;
.super Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;
.source "DtL2SwitchItemView.java"


# instance fields
.field private f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;


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
.method protected final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lecj$f;->_ui_private_list_double_switch:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "view":Landroid/view/View;
    sget v1, Lecj$e;->text_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->b:Landroid/widget/TextView;

    .line 36
    sget v1, Lecj$e;->text_caption:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->j:Landroid/widget/TextView;

    .line 37
    sget v1, Lecj$e;->switch_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    .line 39
    sget v1, Lecj$e;->text_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->i:Landroid/widget/TextView;

    .line 40
    sget v1, Lecj$e;->bottom_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->c:Landroid/view/View;

    .line 41
    sget v1, Lecj$e;->img_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->d:Landroid/widget/ImageView;

    .line 42
    sget v1, Lecj$e;->iconfont_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    .line 43
    sget v1, Lecj$e;->layout_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->k:Landroid/view/View;

    .line 45
    return-void
.end method

.method protected final a(Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->a(Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lecj$i;->DtL2SwitchItemView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 52
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Lecj$i;->DtL2SwitchItemView_android_checked:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 53
    .local v0, "check":Z
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->setChecked(Z)V

    .line 54
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setChecked(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setEnabled(Z)V

    .line 73
    return-void
.end method

.method public setOnCheckChangeListener(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2SwitchItemView;->f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setOnCheckedChangeListener(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;)V

    .line 61
    :cond_0
    return-void
.end method
