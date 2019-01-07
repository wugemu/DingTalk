.class Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->initView(Landroid/content/Context;)V
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
    .line 150
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$500(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$100(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v2}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$000(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v3}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$600(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v4}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$700(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v5}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$800(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->getText(ILjava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "pwdData":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$500(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/safepaybase/OnConfirmListener;->onUserConfirm(Ljava/lang/String;)V

    .line 158
    .end local v0    # "pwdData":Ljava/lang/String;
    :cond_0
    return-void
.end method
