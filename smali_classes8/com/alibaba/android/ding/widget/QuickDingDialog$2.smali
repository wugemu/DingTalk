.class final Lcom/alibaba/android/ding/widget/QuickDingDialog$2;
.super Ljava/lang/Object;
.source "QuickDingDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/QuickDingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/QuickDingDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/QuickDingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/QuickDingDialog;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$2;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$2;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->f(Lcom/alibaba/android/ding/widget/QuickDingDialog;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 187
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 185
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/QuickDingDialog$2;->a:Lcom/alibaba/android/ding/widget/QuickDingDialog;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/QuickDingDialog;->g(Lcom/alibaba/android/ding/widget/QuickDingDialog;)V

    .line 190
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 177
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 181
    return-void
.end method
