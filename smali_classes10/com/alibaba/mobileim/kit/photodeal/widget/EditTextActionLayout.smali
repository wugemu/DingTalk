.class public Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;
.super Landroid/widget/FrameLayout;
.source "EditTextActionLayout.java"

# interfaces
.implements Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;
.implements Lhsw;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/content/Context;

.field private e:Lhsz;

.field private f:Landroid/view/inputmethod/InputMethodManager;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->g:I

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->g:I

    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->g:I

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->d:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->d:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->f:Landroid/view/inputmethod/InputMethodManager;

    .line 1054
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Liff$e;->aliwx_photo_deal_edittext_action_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1055
    sget v0, Liff$d;->edit_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    .line 1056
    sget v0, Liff$d;->text_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->c:Landroid/widget/TextView;

    .line 1057
    sget v0, Liff$d;->black_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->a:Landroid/widget/RelativeLayout;

    .line 1083
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$2;

    invoke-direct {v1, p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$2;-><init>(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2063
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$1;

    invoke-direct {v1, p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$1;-><init>(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method static synthetic b(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    .prologue
    .line 24
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->g:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 76
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->f:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 77
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->e:Lhsz;

    iget v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->g:I

    invoke-interface {v1, v0, v2}, Lhsz;->a(Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->g:I

    .line 134
    new-instance v0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$3;

    invoke-direct {v0, p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$3;-><init>(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    iget v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    iget v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2120
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2121
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2122
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 2123
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2124
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->f:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 114
    return-void
.end method

.method public setmStopAddTextListener(Lhsz;)V
    .locals 0
    .param p1, "mStopAddTextListener"    # Lhsz;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->e:Lhsz;

    .line 129
    return-void
.end method
