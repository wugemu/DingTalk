.class public abstract Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;
.super Lcom/alibaba/android/dingtalkui/form/AbstractFormView;
.source "AbstractInputFormView.java"


# instance fields
.field protected c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

.field protected d:Z

.field protected e:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

.field protected f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->f:Z

    .line 53
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->g:Z

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->a(Landroid/util/AttributeSet;)V

    .line 58
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
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->f:Z

    .line 53
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->g:Z

    .line 62
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->a(Landroid/util/AttributeSet;)V

    .line 63
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
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->f:Z

    .line 53
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->g:Z

    .line 67
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->a(Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 71
    .line 1176
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lecj$i;->AbstractInputFormView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1177
    sget v1, Lecj$i;->AbstractInputFormView_android_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1179
    sget v2, Lecj$i;->AbstractInputFormView_android_inputType:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1180
    sget v3, Lecj$i;->AbstractInputFormView_android_digits:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1181
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1183
    if-eqz v1, :cond_0

    .line 1184
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->setHint(Ljava/lang/String;)V

    .line 1188
    :cond_0
    if-eq v2, v4, :cond_1

    .line 1189
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->setInputType(I)V

    .line 1191
    :cond_1
    if-eqz v3, :cond_2

    .line 1192
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->setDigits(Ljava/lang/String;)V

    .line 73
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$1;-><init>(Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    new-instance v1, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$2;-><init>(Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    new-instance v1, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView$3;-><init>(Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->a()V

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->getEditTextInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->getAlertViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->e:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    .line 145
    return-void
.end method

.method protected a(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->g:Z

    if-eqz v0, :cond_0

    .line 3227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->g:Z

    .line 3228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->e:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->e:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setVisibility(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public final a(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 251
    return-void
.end method

.method protected final a(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 112
    if-nez p1, :cond_1

    .line 113
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c(Z)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    .line 2021
    if-nez v0, :cond_2

    .line 3017
    sget-object v0, Leda;->a:Landroid/content/Context;

    .line 2025
    :cond_2
    if-eqz v0, :cond_0

    .line 2026
    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2027
    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->b(Z)V

    .line 243
    return-void
.end method

.method protected b(Z)V
    .locals 2
    .param p1, "animate"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setFocusable(Z)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setFocusableInTouchMode(Z)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->requestFocus()Z

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setSelection(I)V

    .line 154
    return-void
.end method

.method protected abstract c()V
.end method

.method protected c(Z)V
    .locals 2
    .param p1, "animate"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setSelection(I)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->clearFocus()V

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setFocusable(Z)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setFocusableInTouchMode(Z)V

    .line 163
    return-void
.end method

.method protected abstract d(Z)V
.end method

.method protected abstract e(Z)V
.end method

.method protected abstract getAlertViewInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
.end method

.method protected abstract getEditTextInParent()Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;
.end method

.method protected getLabel()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->a:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;

    return-object v0
.end method

.method protected getMustFillIndicator()Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->b:Lcom/alibaba/android/dingtalkui/widget/base/AbstractImageView;

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/image/DtRedAsteriskView;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->onDetachedFromWindow()V

    .line 291
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c()V

    .line 292
    return-void
.end method

.method public setDigits(Ljava/lang/String;)V
    .locals 2
    .param p1, "digits"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-static {p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 208
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/form/AbstractFormView;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->e:Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;->setEnabled(Z)V

    .line 315
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->d:Z

    goto :goto_0
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setInputType(I)V

    .line 204
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 233
    if-nez p1, :cond_0

    .line 234
    const-string/jumbo p1, ""

    .line 3242
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->b(Z)V

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c:Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->setText(Ljava/lang/CharSequence;)V

    .line 3246
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/form/input/AbstractInputFormView;->c(Z)V

    .line 239
    return-void
.end method
