.class public abstract Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;
.super Lcom/alibaba/android/dingtalkui/form/AbstractFormView;
.source "AbstractSelectFormView.java"


# instance fields
.field protected c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->a(Landroid/util/AttributeSet;)V

    .line 32
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
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->a(Landroid/util/AttributeSet;)V

    .line 37
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
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->a(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 45
    .line 1056
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lecj$i;->AbstractSelectFormView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1057
    sget v1, Lecj$i;->AbstractSelectFormView_arrowDirection:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 1058
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1062
    if-eqz v1, :cond_0

    .line 1063
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->setArrowDirection(I)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->a()V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->getIndicatorInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    .line 52
    return-void
.end method

.method protected final getArrowIndicator()Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;

    return-object v0
.end method

.method protected abstract getIndicatorInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
.end method

.method protected final getLabel()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;

    return-object v0
.end method

.method protected final getMustFillIndicator()Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->b:Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    return-object v0
.end method

.method public setArrowDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->getArrowIndicator()Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->setArrowDirection(I)V

    .line 72
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->setEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/select/AbstractSelectFormView;->getArrowIndicator()Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/image/DtArrowView;->setEnabled(Z)V

    .line 102
    return-void
.end method
