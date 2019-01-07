.class final Lcom/mybank/android/phone/common/ui/SafeInputWidget$3;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/ui/SafeInputWidget;->initView(Landroid/content/Context;)V
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
    .line 148
    iput-object p1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$3;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$3;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v1}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$500(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$3;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v1}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$100(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Ljfp;

    move-result-object v1

    iget-object v2, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$3;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v2}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$000(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$3;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v3}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$600(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Ljava/lang/String;

    iget-object v3, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$3;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v3}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$700(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$3;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v4}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$800(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljfp;->a(ILjava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "pwdData":Ljava/lang/String;
    iget-object v1, p0, Lcom/mybank/android/phone/common/ui/SafeInputWidget$3;->a:Lcom/mybank/android/phone/common/ui/SafeInputWidget;

    invoke-static {v1}, Lcom/mybank/android/phone/common/ui/SafeInputWidget;->access$500(Lcom/mybank/android/phone/common/ui/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/safepaybase/OnConfirmListener;->onUserConfirm(Ljava/lang/String;)V

    .line 156
    .end local v0    # "pwdData":Ljava/lang/String;
    :cond_0
    return-void
.end method
