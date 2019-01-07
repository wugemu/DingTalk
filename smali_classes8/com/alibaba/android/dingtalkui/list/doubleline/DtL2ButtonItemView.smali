.class public Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ButtonItemView;
.super Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;
.source "DtL2ButtonItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "attr"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ActionItemView;->a(Landroid/util/AttributeSet;I)V

    .line 27
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ButtonItemView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ButtonItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lecj$c;->ui_common_medium_button_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 28
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ButtonItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 29
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ButtonItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lecj$c;->_ui_private_control_switch_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ButtonItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lecj$c;->_ui_private_button_padding_hor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 31
    .local v1, "padding":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/list/doubleline/DtL2ButtonItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 32
    return-void
.end method
