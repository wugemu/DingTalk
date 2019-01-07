.class public abstract Lcom/alibaba/android/dingtalkui/form/AbstractFormView;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractFrameLayout;
.source "AbstractFormView.java"


# instance fields
.field protected a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

.field protected b:Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractFrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const-string/jumbo v0, "AbstractFormView"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->c:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->a(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-string/jumbo v0, "AbstractFormView"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->c:Ljava/lang/String;

    .line 59
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->a(Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const-string/jumbo v0, "AbstractFormView"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->c:Ljava/lang/String;

    .line 64
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->a(Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->a()V

    .line 1108
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lecj$i;->AbstractFormView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1109
    sget v1, Lecj$i;->AbstractFormView_android_enabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 1110
    sget v2, Lecj$i;->AbstractFormView_mustFill:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 1111
    sget v3, Lecj$i;->AbstractFormView_labelText:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1114
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->setMustFillIn(Z)V

    .line 1116
    if-eqz v3, :cond_0

    .line 1117
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->setLabelText(Ljava/lang/String;)V

    .line 1119
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->setEnabled(Z)V

    .line 74
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->getLabelViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->getMustFillIndicatorViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->b:Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    .line 83
    return-void
.end method

.method public abstract getLabelViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
.end method

.method public abstract getLayoutId()I
.end method

.method public abstract getMustFillIndicatorViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractFrameLayout;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->b:Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;->setEnabled(Z)V

    .line 145
    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public setMustFillIn(Z)V
    .locals 2
    .param p1, "mustFillIn"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->b:Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;->setVisibility(I)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->b:Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;->setVisibility(I)V

    goto :goto_0
.end method
