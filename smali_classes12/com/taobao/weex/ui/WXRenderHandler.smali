.class Lcom/taobao/weex/ui/WXRenderHandler;
.super Landroid/os/Handler;
.source "WXRenderHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    return-void
.end method

.method public final post(Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "r"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    invoke-static {p0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 34
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 35
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/taobao/weex/ui/WXRenderHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method
