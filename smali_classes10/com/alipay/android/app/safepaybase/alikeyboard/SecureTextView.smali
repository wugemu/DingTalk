.class public Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
.super Landroid/widget/TextView;
.source "SecureTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;
    }
.end annotation


# instance fields
.field private mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    .line 29
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    invoke-interface {v1, p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;->handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z

    move-result v0

    .line 51
    :cond_0
    if-nez v0, :cond_1

    .line 52
    invoke-super {p0, p1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 56
    :cond_1
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 38
    .local v0, "eventType":I
    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    const v1, 0x8000

    if-ne v0, v1, :cond_1

    .line 40
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 43
    :cond_1
    return-void
.end method

.method public setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V
    .locals 0
    .param p1, "sabEventListener"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;

    .line 34
    return-void
.end method
