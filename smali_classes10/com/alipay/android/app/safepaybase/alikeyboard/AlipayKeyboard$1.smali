.class Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;
.super Ljava/lang/Object;
.source "AlipayKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$targetKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;->val$targetKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iput-object p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->access$000(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Show:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    if-ne v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;->val$targetKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;->val$editText:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->access$100(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->access$000(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Hide:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    goto :goto_0
.end method
