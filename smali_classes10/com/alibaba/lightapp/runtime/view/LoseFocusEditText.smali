.class public Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;
.super Landroid/widget/EditText;
.source "LoseFocusEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->a:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->b:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->a:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->b:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->a:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->b:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->b:Landroid/content/Context;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 40
    .local v0, "mgr":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->clearFocus()V

    .line 45
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->c:Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText$a;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->c:Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText$a;

    invoke-interface {v1}, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText$a;->a()V

    .line 49
    :cond_0
    const/4 v1, 0x1

    .line 51
    .end local v0    # "mgr":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v1
.end method

.method public setKeyBackClickListener(Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText$a;)V
    .locals 0
    .param p1, "keyBackClickListener"    # Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText$a;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->c:Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText$a;

    .line 58
    return-void
.end method
