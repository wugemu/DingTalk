.class Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;
.super Ljava/lang/Object;
.source "SecureNumKeyboard.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->initTtsIfTalkBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$000(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-static {v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$200(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$102(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$302(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;Z)Z

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$100(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 178
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$302(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;Z)Z

    .line 180
    :cond_0
    return-void
.end method
