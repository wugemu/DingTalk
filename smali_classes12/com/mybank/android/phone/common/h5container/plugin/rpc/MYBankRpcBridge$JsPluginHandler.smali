.class Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$JsPluginHandler;
.super Landroid/os/Handler;
.source "MYBankRpcBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JsPluginHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;

    invoke-static {v0}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->doCallback(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method
