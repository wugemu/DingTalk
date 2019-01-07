.class final Lcom/alibaba/android/teleconf/widget/InputCodeDialog$5;
.super Ljava/lang/Object;
.source "InputCodeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$5;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$5;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->f(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$5;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->b(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$5;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->f(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/InputCodeDialog$5;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->b(Lcom/alibaba/android/teleconf/widget/InputCodeDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 169
    :cond_0
    return-void
.end method
