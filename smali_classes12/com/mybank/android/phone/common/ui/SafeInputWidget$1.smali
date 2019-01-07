.class final Lcom/mybank/android/phone/common/ui/SafeInputWidget$1;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/ui/SafeInputWidget;->initPwdInputView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$1;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 91
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 71
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$1;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$100(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Ljfp;

    move-result-object v0

    iget-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$1;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v1}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$000(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljfp;->a(ILjava/lang/String;III)V

    .line 76
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$1;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$200(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$1;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$200(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 79
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$1;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$200(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$1;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$300(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)V

    .line 86
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$1;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$200(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v1, "#108ee9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 82
    iget-object v0, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$1;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v0}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$200(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method
