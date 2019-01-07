.class Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$2;
.super Ljava/lang/Object;
.source "SecureQwertyKeyboard.java"

# interfaces
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$2;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z
    .locals 2
    .param p1, "view"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;
    .param p2, "eventType"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 478
    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    .line 480
    .local v0, "frameLayout":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    invoke-virtual {v0, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->sendAccessibilityEvent(I)V

    .line 482
    .end local v0    # "frameLayout":Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
