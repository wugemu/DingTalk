.class public Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;
.super Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;
.source "DtL1SwitchItemView.java"


# instance fields
.field private f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lecj$f;->_ui_private_list_single_switch:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    sget v1, Lecj$e;->text_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->b:Landroid/widget/TextView;

    .line 39
    sget v1, Lecj$e;->switch_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    .line 40
    sget v1, Lecj$e;->bottom_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->c:Landroid/view/View;

    .line 41
    sget v1, Lecj$e;->img_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->d:Landroid/widget/ImageView;

    .line 42
    sget v1, Lecj$e;->iconfont_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    .line 43
    sget v1, Lecj$e;->layout_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->g:Landroid/view/View;

    .line 44
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
    .line 48
    if-nez p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lecj$i;->DtL1SwitchItemView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "ta":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 53
    sget v1, Lecj$i;->DtL1SwitchItemView_android_checked:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->setChecked(Z)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 60
    iget v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->a:I

    if-ne v1, v3, :cond_1

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lecj$e;->iconfont_avatar:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 68
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lecj$e;->img_avatar:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setChecked(Z)V

    .line 84
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setEnabled(Z)V

    .line 90
    return-void
.end method

.method public setOnCheckChangeListener(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/single/DtL1SwitchItemView;->f:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setOnCheckedChangeListener(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;)V

    .line 78
    :cond_0
    return-void
.end method
