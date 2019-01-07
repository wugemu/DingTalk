.class Lcom/alipay/android/app/safepaybase/widget/SimplePassword$1;
.super Ljava/lang/Object;
.source "SimplePassword.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$000(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$000(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 90
    :cond_0
    return-void
.end method
