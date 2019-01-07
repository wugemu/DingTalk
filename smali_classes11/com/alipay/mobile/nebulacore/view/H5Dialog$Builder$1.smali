.class Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder$1;
.super Ljava/lang/Object;
.source "H5Dialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder$1;->this$1:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 450
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder$1;->this$1:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->access$1600(Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;)Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 453
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder$1;->this$1:Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->this$0:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    .line 454
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 455
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 460
    return-void
.end method
