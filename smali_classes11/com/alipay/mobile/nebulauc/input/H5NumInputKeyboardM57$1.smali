.class final Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;
.super Ljava/lang/Object;
.source "H5NumInputKeyboardM57.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5InputOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyboardConfirm()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 64
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v0

    .line 66
    .local v0, "h5Page":Liop;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 67
    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v2

    const-string/jumbo v3, "keyboardConfirm"

    invoke-interface {v2, v3, v4, v4}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 70
    .end local v0    # "h5Page":Liop;
    :cond_0
    return-void
.end method

.method public final resizeAndHideKeyboard()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;->onCustomKeyboardHide()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->access$000(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$1;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->access$100(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Z

    .line 59
    return-void
.end method
