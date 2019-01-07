.class public Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;
.super Lcom/alibaba/android/dingtalkui/form/control/AbstractControlFormView;
.source "DtSwitchFormView.java"


# instance fields
.field private c:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/control/AbstractControlFormView;-><init>(Landroid/content/Context;)V

    .line 39
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
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/form/control/AbstractControlFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
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
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/form/control/AbstractControlFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/control/AbstractControlFormView;->a()V

    .line 68
    sget v0, Lecj$e;->sv_switch:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->c:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    .line 69
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->c:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    .line 1267
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a:Z

    .line 84
    return v0
.end method

.method protected getLabelViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
    .locals 1

    .prologue
    .line 56
    sget v0, Lecj$e;->label_level1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lecj$f;->_ui_private_form_control_switch_layout:I

    return v0
.end method

.method protected getMustFillIndicatorViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
    .locals 1

    .prologue
    .line 61
    sget v0, Lecj$e;->rav_must_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->c:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setChecked(Z)V

    .line 81
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/control/AbstractControlFormView;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->c:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setEnabled(Z)V

    .line 92
    return-void
.end method

.method public setOnCheckListener(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;)V
    .locals 1
    .param p1, "checkListener"    # Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->c:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setOnCheckedChangeListener(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;)V

    .line 77
    return-void
.end method
