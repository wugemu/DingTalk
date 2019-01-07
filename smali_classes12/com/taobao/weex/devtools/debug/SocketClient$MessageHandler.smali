.class Lcom/taobao/weex/devtools/debug/SocketClient$MessageHandler;
.super Landroid/os/Handler;
.source "SocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/debug/SocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/debug/SocketClient;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/debug/SocketClient;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/debug/SocketClient;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/SocketClient$MessageHandler;->this$0:Lcom/taobao/weex/devtools/debug/SocketClient;

    .line 104
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient$MessageHandler;->this$0:Lcom/taobao/weex/devtools/debug/SocketClient;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "web_socket_message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/debug/SocketClient;->connect(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient$MessageHandler;->this$0:Lcom/taobao/weex/devtools/debug/SocketClient;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "web_socket_message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/debug/SocketClient;->sendProtocolMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient$MessageHandler;->this$0:Lcom/taobao/weex/devtools/debug/SocketClient;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/debug/SocketClient;->close()V

    .line 117
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient$MessageHandler;->this$0:Lcom/taobao/weex/devtools/debug/SocketClient;

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient$MessageHandler;->this$0:Lcom/taobao/weex/devtools/debug/SocketClient;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/debug/SocketClient;->close()V

    .line 121
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/SocketClient$MessageHandler;->this$0:Lcom/taobao/weex/devtools/debug/SocketClient;

    iget-object v0, v0, Lcom/taobao/weex/devtools/debug/SocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
