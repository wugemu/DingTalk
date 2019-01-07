.class public Lcom/alibaba/android/dingtalkui/form/control/DtSegmentFormView;
.super Lcom/alibaba/android/dingtalkui/form/control/AbstractControlFormView;
.source "DtSegmentFormView.java"


# instance fields
.field private c:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/control/AbstractControlFormView;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/form/control/AbstractControlFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/form/control/AbstractControlFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/control/AbstractControlFormView;->a()V

    .line 61
    sget v0, Lecj$e;->sv_seg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/control/DtSegmentFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/control/DtSegmentFormView;->c:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;

    .line 62
    return-void
.end method

.method protected getLabelViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
    .locals 1

    .prologue
    .line 71
    sget v0, Lecj$e;->label_level1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/control/DtSegmentFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lecj$f;->_ui_private_form_control_segment_layout:I

    return v0
.end method

.method protected getMustFillIndicatorViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
    .locals 1

    .prologue
    .line 76
    sget v0, Lecj$e;->rav_must_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/control/DtSegmentFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/control/DtSegmentFormView;->c:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->getChecked()I

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/control/AbstractControlFormView;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/control/DtSegmentFormView;->c:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->setEnabled(Z)V

    .line 104
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 80
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 81
    const-string/jumbo v1, "SegmentFormView"

    const-string/jumbo v2, "setItems: items should not be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 85
    .local v0, "size":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 86
    :cond_1
    const-string/jumbo v1, "SegmentFormView"

    const-string/jumbo v2, "setItems: ItemList\'s size must be less than [3] and more than [2]!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/control/DtSegmentFormView;->c:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->setItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setOnSelectListener(Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$a;)V
    .locals 1
    .param p1, "selectListener"    # Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$a;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/control/DtSegmentFormView;->c:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->setOnSelectListener(Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$a;)V

    .line 94
    return-void
.end method
