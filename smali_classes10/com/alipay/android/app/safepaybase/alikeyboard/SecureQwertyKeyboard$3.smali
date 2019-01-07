.class Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;
.super Ljava/lang/Object;
.source "SecureQwertyKeyboard.java"

# interfaces
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;


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
    .line 486
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z
    .locals 4
    .param p1, "view"    # Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
    .param p2, "eventType"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v2, 0x8000

    const/4 v3, 0x1

    .line 490
    const/16 v1, 0x80

    if-ne p2, v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$400(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 495
    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 496
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$500(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "announceString":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$600(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Ljava/lang/String;)V

    .line 518
    .end local v0    # "announceString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 501
    :cond_1
    if-ne p2, v3, :cond_2

    .line 502
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getId()I

    move-result v1

    sget v2, Liid$b;->key_ABC:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getId()I

    move-result v1

    sget v2, Liid$b;->key_123:I

    if-eq v1, v2, :cond_0

    .line 506
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$500(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;

    move-result-object v0

    .line 507
    .restart local v0    # "announceString":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$600(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    .end local v0    # "announceString":Ljava/lang/String;
    :cond_2
    if-ne p2, v2, :cond_0

    .line 512
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$500(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;

    move-result-object v0

    .line 514
    .restart local v0    # "announceString":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$600(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Ljava/lang/String;)V

    goto :goto_0
.end method
