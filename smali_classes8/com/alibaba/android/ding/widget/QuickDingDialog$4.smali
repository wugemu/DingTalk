.class final Lcom/alibaba/android/ding/widget/QuickDingDialog$4;
.super Ljava/lang/Object;
.source "QuickDingDialog.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/QuickDingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/QuickDingDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/QuickDingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/QuickDingDialog;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$4;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 292
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 275
    check-cast p1, Ljava/lang/String;

    .line 1278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$4;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->d(Lcom/alibaba/android/ding/widget/QuickDingDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$4;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->d(Lcom/alibaba/android/ding/widget/QuickDingDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$4;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->d(Lcom/alibaba/android/ding/widget/QuickDingDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$4;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->d(Lcom/alibaba/android/ding/widget/QuickDingDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1282
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 1283
    check-cast v0, Landroid/text/Spannable;

    .line 1284
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 275
    :cond_1
    return-void
.end method
