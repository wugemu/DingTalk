.class public Lcom/alibaba/android/teleconf/widget/InputCodeDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "InputCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/InputCodeDialog$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog$a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private d:Landroid/view/inputmethod/InputMethodManager;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget v0, Leuj$m;->bottom_box_float:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;-><init>(Landroid/content/Context;I)V

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 66
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->e:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->e:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->d:Landroid/view/inputmethod/InputMethodManager;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Lcom/alibaba/android/teleconf/widget/InputCodeDialog$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->d:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget v0, Leuj$j;->layout_conf_input_code_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->setContentView(I)V

    .line 1078
    sget v0, Leuj$i;->conf_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->f:Landroid/widget/EditText;

    .line 1079
    sget v0, Leuj$i;->conf_number:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->g:Landroid/widget/EditText;

    .line 1081
    sget v0, Leuj$i;->btn_left_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->h:Landroid/widget/TextView;

    .line 1082
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$1;-><init>(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    sget v0, Leuj$i;->btn_right_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->i:Landroid/widget/TextView;

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$2;-><init>(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$3;-><init>(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$4;-><init>(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public show()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 154
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->show()V

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 163
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$5;-><init>(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    return-void
.end method
