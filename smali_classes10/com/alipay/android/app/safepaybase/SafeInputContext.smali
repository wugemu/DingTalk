.class public Lcom/alipay/android/app/safepaybase/SafeInputContext;
.super Ljava/lang/Object;
.source "SafeInputContext.java"


# instance fields
.field private inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "isSimplePassword"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    .line 23
    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->setUiContext(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    .line 25
    return-void
.end method


# virtual methods
.method public clearText()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->clearText()V

    .line 107
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getEditContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->getEditContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V
    .locals 1
    .param p1, "randomString"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V

    .line 76
    return-void
.end method

.method public setNeedConfirmButton(Z)V
    .locals 1
    .param p1, "needConfirmButton"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->setNeedComfirm(Z)V

    .line 43
    return-void
.end method

.method public setOkButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->setOkButtonText(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public setOnConfirmListener(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->setUserConfirmListener(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V

    .line 35
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 51
    return-void
.end method

.method public setRsaPublicKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "rsaPublicKey"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/SafeInputContext;->inputWidget:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->setRsaPublicKey(Ljava/lang/String;)V

    .line 67
    return-void
.end method
