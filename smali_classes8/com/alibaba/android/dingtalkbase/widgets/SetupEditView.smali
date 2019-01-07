.class public Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;
.super Landroid/widget/FrameLayout;
.source "SetupEditView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;
    }
.end annotation


# instance fields
.field a:Landroid/view/View$OnTouchListener;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/AutoCompleteTextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:F

.field private i:Landroid/view/View$OnTouchListener;

.field private j:Landroid/view/View$OnTouchListener;

.field private k:Landroid/text/TextWatcher;

.field private l:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->l:Landroid/view/View$OnTouchListener;

    .line 229
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a:Landroid/view/View$OnTouchListener;

    .line 68
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->l:Landroid/view/View$OnTouchListener;

    .line 229
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a:Landroid/view/View$OnTouchListener;

    .line 73
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->l:Landroid/view/View$OnTouchListener;

    .line 229
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a:Landroid/view/View$OnTouchListener;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->j:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 82
    sget-object v1, Lcig$l;->SetupEditView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcig$l;->SetupEditView_editLabel:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->f:Ljava/lang/CharSequence;

    .line 85
    sget v1, Lcig$l;->SetupEditView_editHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->g:Ljava/lang/CharSequence;

    .line 86
    sget v1, Lcig$l;->SetupEditView_editLabelWidth:I

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {p1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->h:F

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->widget_setup_edit_view:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 91
    sget v1, Lcig$f;->label_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->b:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->h:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    sget v1, Lcig$f;->edit_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    .line 95
    sget v1, Lcig$f;->clear_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->e:Landroid/widget/ImageView;

    .line 96
    sget v1, Lcig$f;->ops_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->d:Landroid/widget/ImageView;

    .line 98
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->f:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->g:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcig$j;->dt_accessibility_input_clear_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->i:Landroid/view/View$OnTouchListener;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 113
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "hint"    # Ljava/lang/CharSequence;
    .param p3, "inputText"    # Ljava/lang/CharSequence;

    .prologue
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->g:Ljava/lang/CharSequence;

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p2}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 188
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->k:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->k:Landroid/text/TextWatcher;

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 269
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->k:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->k:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 276
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 258
    :cond_0
    return-void
.end method

.method public getClearView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getEditText()Landroid/widget/AutoCompleteTextView;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method public getOpsView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 248
    .local v0, "id":I
    sget v1, Lcig$f;->edit_view:I

    if-ne v1, v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c()V

    .line 251
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 289
    if-eqz p2, :cond_0

    .line 290
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 291
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 293
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 297
    .end local v0    # "im":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 280
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->g:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->k:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->k:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 285
    :cond_0
    return-void

    .line 280
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public setClearViewOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->j:Landroid/view/View$OnTouchListener;

    .line 143
    return-void
.end method

.method public setClearViewVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    return-void
.end method

.method public setData(I)V
    .locals 1
    .param p1, "textRes"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setData(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method public setData(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, v0, v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 304
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    return-void

    .line 304
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setOpsViewImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    return-void
.end method

.method public setOpsViewImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    return-void
.end method

.method public setOpsViewOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->i:Landroid/view/View$OnTouchListener;

    .line 134
    return-void
.end method

.method public setOpsViewVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "textRes"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(I)V

    .line 207
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public setTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->k:Landroid/text/TextWatcher;

    .line 262
    return-void
.end method

.method public setThreshold(I)V
    .locals 1
    .param p1, "threshold"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 215
    return-void
.end method
