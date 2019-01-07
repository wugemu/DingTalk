.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;
.super Ljava/lang/Object;
.source "VISafeInput.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;


# instance fields
.field private a:Lcom/alipay/android/app/safepaybase/SafeInputContext;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/SafeInputContext;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;->a:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    .line 21
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public clearText()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;->a:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->clearText()V

    .line 61
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;->a:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getEditContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;->a:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->getEditContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;->a:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;->a:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V

    .line 45
    return-void
.end method

.method public setNeedConfirmButton(Z)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;->a:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setNeedConfirmButton(Z)V

    .line 29
    return-void
.end method

.method public setOkButtonText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;->a:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setOkButtonText(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;->a:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public setOnConfirmListener(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;->a:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setOnConfirmListener(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V

    .line 25
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;->a:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 33
    return-void
.end method

.method public setRsaPublicKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;->a:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setRsaPublicKey(Ljava/lang/String;)V

    .line 41
    return-void
.end method
