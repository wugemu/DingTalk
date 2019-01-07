.class Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->initPwdInputView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 93
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 73
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$100(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$000(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->OnTextChanged(ILjava/lang/String;III)V

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$200(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$200(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$200(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 87
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$300(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)V

    .line 88
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$200(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v1, "#108ee9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$200(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method
